package okhttp3.internal.ws;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.tencent.connect.common.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.ws.WebSocketReader.FrameCallback;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public final class RealWebSocket implements WebSocket, FrameCallback {
    static final /* synthetic */ boolean $assertionsDisabled = (!RealWebSocket.class.desiredAssertionStatus());
    private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private static final List<Protocol> ONLY_HTTP1 = Collections.singletonList(Protocol.HTTP_1_1);
    private Call call;
    private ScheduledFuture<?> cancelFuture;
    private boolean enqueuedClose;
    private ScheduledExecutorService executor;
    private boolean failed;
    private final String key;
    final WebSocketListener listener;
    private final ArrayDeque<Object> messageAndCloseQueue = new ArrayDeque<>();
    private final Request originalRequest;
    int pingCount;
    int pongCount;
    private final ArrayDeque<ByteString> pongQueue = new ArrayDeque<>();
    private long queueSize;
    private final Random random;
    private WebSocketReader reader;
    private int receivedCloseCode = -1;
    private String receivedCloseReason;
    private Streams streams;
    private WebSocketWriter writer;
    private final Runnable writerRunnable;

    final class CancelRunnable implements Runnable {
        CancelRunnable() {
        }

        public void run() {
            RealWebSocket.this.cancel();
        }
    }

    static final class Close {
        final long cancelAfterCloseMillis;
        final int code;
        final ByteString reason;

        Close(int i, ByteString byteString, long j) {
            this.code = i;
            this.reason = byteString;
            this.cancelAfterCloseMillis = j;
        }
    }

    static final class Message {
        final ByteString data;
        final int formatOpcode;

        Message(int i, ByteString byteString) {
            this.formatOpcode = i;
            this.data = byteString;
        }
    }

    private final class PingRunnable implements Runnable {
        PingRunnable() {
        }

        public void run() {
            RealWebSocket.this.writePingFrame();
        }
    }

    public static abstract class Streams implements Closeable {
        public final boolean client;
        public final BufferedSink sink;
        public final BufferedSource source;

        public Streams(boolean z, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.client = z;
            this.source = bufferedSource;
            this.sink = bufferedSink;
        }
    }

    public RealWebSocket(Request request, WebSocketListener webSocketListener, Random random2) {
        if (!"GET".equals(request.method())) {
            throw new IllegalArgumentException("Request must be GET: " + request.method());
        }
        this.originalRequest = request;
        this.listener = webSocketListener;
        this.random = random2;
        byte[] bArr = new byte[16];
        random2.nextBytes(bArr);
        this.key = ByteString.of(bArr).base64();
        this.writerRunnable = new Runnable() {
            public void run() {
                do {
                    try {
                    } catch (IOException e) {
                        RealWebSocket.this.failWebSocket(e, null);
                        return;
                    }
                } while (RealWebSocket.this.writeOneFrame());
            }
        };
    }

    public Request request() {
        return this.originalRequest;
    }

    public synchronized long queueSize() {
        return this.queueSize;
    }

    public void cancel() {
        this.call.cancel();
    }

    public void connect(OkHttpClient okHttpClient) {
        OkHttpClient build = okHttpClient.newBuilder().protocols(ONLY_HTTP1).build();
        final int pingIntervalMillis = build.pingIntervalMillis();
        final Request build2 = this.originalRequest.newBuilder().header("Upgrade", "websocket").header("Connection", "Upgrade").header(Names.SEC_WEBSOCKET_KEY, this.key).header(Names.SEC_WEBSOCKET_VERSION, Constants.VIA_REPORT_TYPE_JOININ_GROUP).build();
        this.call = Internal.instance.newWebSocketCall(build, build2);
        this.call.enqueue(new Callback() {
            public void onResponse(Call call, Response response) {
                try {
                    RealWebSocket.this.checkResponse(response);
                    StreamAllocation streamAllocation = Internal.instance.streamAllocation(call);
                    streamAllocation.noNewStreams();
                    Streams newWebSocketStreams = streamAllocation.connection().newWebSocketStreams(streamAllocation);
                    try {
                        RealWebSocket.this.listener.onOpen(RealWebSocket.this, response);
                        RealWebSocket.this.initReaderAndWriter("OkHttp WebSocket " + build2.url().redact(), (long) pingIntervalMillis, newWebSocketStreams);
                        streamAllocation.connection().socket().setSoTimeout(0);
                        RealWebSocket.this.loopReader();
                    } catch (Exception e) {
                        RealWebSocket.this.failWebSocket(e, null);
                    }
                } catch (ProtocolException e2) {
                    RealWebSocket.this.failWebSocket(e2, response);
                    Util.closeQuietly((Closeable) response);
                }
            }

            public void onFailure(Call call, IOException iOException) {
                RealWebSocket.this.failWebSocket(iOException, null);
            }
        });
    }

    /* access modifiers changed from: 0000 */
    public void checkResponse(Response response) throws ProtocolException {
        if (response.code() != 101) {
            throw new ProtocolException("Expected HTTP 101 response but was '" + response.code() + Token.SEPARATOR + response.message() + "'");
        }
        String header = response.header("Connection");
        if (!"Upgrade".equalsIgnoreCase(header)) {
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + header + "'");
        }
        String header2 = response.header("Upgrade");
        if (!"websocket".equalsIgnoreCase(header2)) {
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + header2 + "'");
        }
        String header3 = response.header(Names.SEC_WEBSOCKET_ACCEPT);
        String base64 = ByteString.encodeUtf8(this.key + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").sha1().base64();
        if (!base64.equals(header3)) {
            throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + base64 + "' but was '" + header3 + "'");
        }
    }

    public void initReaderAndWriter(String str, long j, Streams streams2) throws IOException {
        synchronized (this) {
            this.streams = streams2;
            this.writer = new WebSocketWriter(streams2.client, streams2.sink, this.random);
            this.executor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(str, false));
            if (j != 0) {
                this.executor.scheduleAtFixedRate(new PingRunnable(), j, j, TimeUnit.MILLISECONDS);
            }
            if (!this.messageAndCloseQueue.isEmpty()) {
                runWriter();
            }
        }
        this.reader = new WebSocketReader(streams2.client, streams2.source, this);
    }

    public void loopReader() throws IOException {
        while (this.receivedCloseCode == -1) {
            this.reader.processNextFrame();
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean processNextFrame() throws IOException {
        try {
            this.reader.processNextFrame();
            if (this.receivedCloseCode == -1) {
                return true;
            }
            return false;
        } catch (Exception e) {
            failWebSocket(e, null);
            return false;
        }
    }

    /* access modifiers changed from: 0000 */
    public void awaitTermination(int i, TimeUnit timeUnit) throws InterruptedException {
        this.executor.awaitTermination((long) i, timeUnit);
    }

    /* access modifiers changed from: 0000 */
    public void tearDown() throws InterruptedException {
        if (this.cancelFuture != null) {
            this.cancelFuture.cancel(false);
        }
        this.executor.shutdown();
        this.executor.awaitTermination(10, TimeUnit.SECONDS);
    }

    /* access modifiers changed from: 0000 */
    public synchronized int pingCount() {
        return this.pingCount;
    }

    /* access modifiers changed from: 0000 */
    public synchronized int pongCount() {
        return this.pongCount;
    }

    public void onReadMessage(String str) throws IOException {
        this.listener.onMessage((WebSocket) this, str);
    }

    public void onReadMessage(ByteString byteString) throws IOException {
        this.listener.onMessage((WebSocket) this, byteString);
    }

    public synchronized void onReadPing(ByteString byteString) {
        if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
            this.pongQueue.add(byteString);
            runWriter();
            this.pingCount++;
        }
    }

    public synchronized void onReadPong(ByteString byteString) {
        this.pongCount++;
    }

    public void onReadClose(int i, String str) {
        Closeable closeable;
        if (i == -1) {
            throw new IllegalArgumentException();
        }
        synchronized (this) {
            if (this.receivedCloseCode != -1) {
                throw new IllegalStateException("already closed");
            }
            this.receivedCloseCode = i;
            this.receivedCloseReason = str;
            if (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty()) {
                closeable = null;
            } else {
                Streams streams2 = this.streams;
                this.streams = null;
                if (this.cancelFuture != null) {
                    this.cancelFuture.cancel(false);
                }
                this.executor.shutdown();
                closeable = streams2;
            }
        }
        try {
            this.listener.onClosing(this, i, str);
            if (closeable != null) {
                this.listener.onClosed(this, i, str);
            }
        } finally {
            Util.closeQuietly(closeable);
        }
    }

    public boolean send(String str) {
        if (str != null) {
            return send(ByteString.encodeUtf8(str), 1);
        }
        throw new NullPointerException("text == null");
    }

    public boolean send(ByteString byteString) {
        if (byteString != null) {
            return send(byteString, 2);
        }
        throw new NullPointerException("bytes == null");
    }

    private synchronized boolean send(ByteString byteString, int i) {
        boolean z = false;
        synchronized (this) {
            if (!this.failed && !this.enqueuedClose) {
                if (this.queueSize + ((long) byteString.size()) > MAX_QUEUE_SIZE) {
                    close(1001, null);
                } else {
                    this.queueSize += (long) byteString.size();
                    this.messageAndCloseQueue.add(new Message(i, byteString));
                    runWriter();
                    z = true;
                }
            }
        }
        return z;
    }

    /* access modifiers changed from: 0000 */
    public synchronized boolean pong(ByteString byteString) {
        boolean z;
        if (this.failed || (this.enqueuedClose && this.messageAndCloseQueue.isEmpty())) {
            z = false;
        } else {
            this.pongQueue.add(byteString);
            runWriter();
            z = true;
        }
        return z;
    }

    public boolean close(int i, String str) {
        return close(i, str, 60000);
    }

    /* access modifiers changed from: 0000 */
    public synchronized boolean close(int i, String str, long j) {
        boolean z = true;
        synchronized (this) {
            WebSocketProtocol.validateCloseCode(i);
            ByteString byteString = null;
            if (str != null) {
                byteString = ByteString.encodeUtf8(str);
                if (((long) byteString.size()) > 123) {
                    throw new IllegalArgumentException("reason.size() > 123: " + str);
                }
            }
            if (this.failed || this.enqueuedClose) {
                z = false;
            } else {
                this.enqueuedClose = true;
                this.messageAndCloseQueue.add(new Close(i, byteString, j));
                runWriter();
            }
        }
        return z;
    }

    private void runWriter() {
        if (!$assertionsDisabled && !Thread.holdsLock(this)) {
            throw new AssertionError();
        } else if (this.executor != null) {
            this.executor.execute(this.writerRunnable);
        }
    }

    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: type inference failed for: r3v13 */
    /* JADX WARNING: type inference failed for: r3v15 */
    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0037, code lost:
        if (r2 == null) goto L_0x0063;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        r9.writePong(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x003c, code lost:
        okhttp3.internal.Util.closeQuietly(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0065, code lost:
        if ((r3 instanceof okhttp3.internal.ws.RealWebSocket.Message) == false) goto L_0x009a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0067, code lost:
        r2 = ((okhttp3.internal.ws.RealWebSocket.Message) r3).data;
        r3 = okio.Okio.buffer(r9.newMessageSink(((okhttp3.internal.ws.RealWebSocket.Message) r3).formatOpcode, (long) r2.size()));
        r3.write(r2);
        r3.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0084, code lost:
        monitor-enter(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        r15.queueSize -= (long) r2.size();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0090, code lost:
        monitor-exit(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0095, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0096, code lost:
        okhttp3.internal.Util.closeQuietly(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0099, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x009c, code lost:
        if ((r3 instanceof okhttp3.internal.ws.RealWebSocket.Close) == false) goto L_0x00af;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x009e, code lost:
        r3 = r3;
        r9.writeClose(r3.code, r3.reason);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00a7, code lost:
        if (r4 == null) goto L_0x003c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00a9, code lost:
        r15.listener.onClosed(r15, r6, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00b4, code lost:
        throw new java.lang.AssertionError();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:?, code lost:
        return true;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean writeOneFrame() throws java.io.IOException {
        /*
            r15 = this;
            r3 = 0
            r8 = -1
            r5 = 0
            monitor-enter(r15)
            boolean r2 = r15.failed     // Catch:{ all -> 0x0060 }
            if (r2 == 0) goto L_0x000b
            monitor-exit(r15)     // Catch:{ all -> 0x0060 }
            r2 = r3
        L_0x000a:
            return r2
        L_0x000b:
            okhttp3.internal.ws.WebSocketWriter r9 = r15.writer     // Catch:{ all -> 0x0060 }
            java.util.ArrayDeque<okio.ByteString> r2 = r15.pongQueue     // Catch:{ all -> 0x0060 }
            java.lang.Object r2 = r2.poll()     // Catch:{ all -> 0x0060 }
            okio.ByteString r2 = (okio.ByteString) r2     // Catch:{ all -> 0x0060 }
            if (r2 != 0) goto L_0x00ba
            java.util.ArrayDeque<java.lang.Object> r4 = r15.messageAndCloseQueue     // Catch:{ all -> 0x0060 }
            java.lang.Object r4 = r4.poll()     // Catch:{ all -> 0x0060 }
            boolean r6 = r4 instanceof okhttp3.internal.ws.RealWebSocket.Close     // Catch:{ all -> 0x0060 }
            if (r6 == 0) goto L_0x005b
            int r7 = r15.receivedCloseCode     // Catch:{ all -> 0x0060 }
            java.lang.String r6 = r15.receivedCloseReason     // Catch:{ all -> 0x0060 }
            if (r7 == r8) goto L_0x0041
            okhttp3.internal.ws.RealWebSocket$Streams r3 = r15.streams     // Catch:{ all -> 0x0060 }
            r5 = 0
            r15.streams = r5     // Catch:{ all -> 0x0060 }
            java.util.concurrent.ScheduledExecutorService r5 = r15.executor     // Catch:{ all -> 0x0060 }
            r5.shutdown()     // Catch:{ all -> 0x0060 }
            r5 = r6
            r6 = r7
            r14 = r3
            r3 = r4
            r4 = r14
        L_0x0036:
            monitor-exit(r15)     // Catch:{ all -> 0x0060 }
            if (r2 == 0) goto L_0x0063
            r9.writePong(r2)     // Catch:{ all -> 0x0095 }
        L_0x003c:
            r2 = 1
            okhttp3.internal.Util.closeQuietly(r4)
            goto L_0x000a
        L_0x0041:
            java.util.concurrent.ScheduledExecutorService r8 = r15.executor     // Catch:{ all -> 0x0060 }
            okhttp3.internal.ws.RealWebSocket$CancelRunnable r10 = new okhttp3.internal.ws.RealWebSocket$CancelRunnable     // Catch:{ all -> 0x0060 }
            r10.<init>()     // Catch:{ all -> 0x0060 }
            r0 = r4
            okhttp3.internal.ws.RealWebSocket$Close r0 = (okhttp3.internal.ws.RealWebSocket.Close) r0     // Catch:{ all -> 0x0060 }
            r3 = r0
            long r12 = r3.cancelAfterCloseMillis     // Catch:{ all -> 0x0060 }
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ all -> 0x0060 }
            java.util.concurrent.ScheduledFuture r3 = r8.schedule(r10, r12, r3)     // Catch:{ all -> 0x0060 }
            r15.cancelFuture = r3     // Catch:{ all -> 0x0060 }
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            goto L_0x0036
        L_0x005b:
            if (r4 != 0) goto L_0x00b5
            monitor-exit(r15)     // Catch:{ all -> 0x0060 }
            r2 = r3
            goto L_0x000a
        L_0x0060:
            r2 = move-exception
            monitor-exit(r15)     // Catch:{ all -> 0x0060 }
            throw r2
        L_0x0063:
            boolean r2 = r3 instanceof okhttp3.internal.ws.RealWebSocket.Message     // Catch:{ all -> 0x0095 }
            if (r2 == 0) goto L_0x009a
            r0 = r3
            okhttp3.internal.ws.RealWebSocket$Message r0 = (okhttp3.internal.ws.RealWebSocket.Message) r0     // Catch:{ all -> 0x0095 }
            r2 = r0
            okio.ByteString r2 = r2.data     // Catch:{ all -> 0x0095 }
            okhttp3.internal.ws.RealWebSocket$Message r3 = (okhttp3.internal.ws.RealWebSocket.Message) r3     // Catch:{ all -> 0x0095 }
            int r3 = r3.formatOpcode     // Catch:{ all -> 0x0095 }
            int r5 = r2.size()     // Catch:{ all -> 0x0095 }
            long r6 = (long) r5     // Catch:{ all -> 0x0095 }
            okio.Sink r3 = r9.newMessageSink(r3, r6)     // Catch:{ all -> 0x0095 }
            okio.BufferedSink r3 = okio.Okio.buffer(r3)     // Catch:{ all -> 0x0095 }
            r3.write(r2)     // Catch:{ all -> 0x0095 }
            r3.close()     // Catch:{ all -> 0x0095 }
            monitor-enter(r15)     // Catch:{ all -> 0x0095 }
            long r6 = r15.queueSize     // Catch:{ all -> 0x0092 }
            int r2 = r2.size()     // Catch:{ all -> 0x0092 }
            long r2 = (long) r2     // Catch:{ all -> 0x0092 }
            long r2 = r6 - r2
            r15.queueSize = r2     // Catch:{ all -> 0x0092 }
            monitor-exit(r15)     // Catch:{ all -> 0x0092 }
            goto L_0x003c
        L_0x0092:
            r2 = move-exception
            monitor-exit(r15)     // Catch:{ all -> 0x0092 }
            throw r2     // Catch:{ all -> 0x0095 }
        L_0x0095:
            r2 = move-exception
            okhttp3.internal.Util.closeQuietly(r4)
            throw r2
        L_0x009a:
            boolean r2 = r3 instanceof okhttp3.internal.ws.RealWebSocket.Close     // Catch:{ all -> 0x0095 }
            if (r2 == 0) goto L_0x00af
            okhttp3.internal.ws.RealWebSocket$Close r3 = (okhttp3.internal.ws.RealWebSocket.Close) r3     // Catch:{ all -> 0x0095 }
            int r2 = r3.code     // Catch:{ all -> 0x0095 }
            okio.ByteString r3 = r3.reason     // Catch:{ all -> 0x0095 }
            r9.writeClose(r2, r3)     // Catch:{ all -> 0x0095 }
            if (r4 == 0) goto L_0x003c
            okhttp3.WebSocketListener r2 = r15.listener     // Catch:{ all -> 0x0095 }
            r2.onClosed(r15, r6, r5)     // Catch:{ all -> 0x0095 }
            goto L_0x003c
        L_0x00af:
            java.lang.AssertionError r2 = new java.lang.AssertionError     // Catch:{ all -> 0x0095 }
            r2.<init>()     // Catch:{ all -> 0x0095 }
            throw r2     // Catch:{ all -> 0x0095 }
        L_0x00b5:
            r6 = r8
            r3 = r4
            r4 = r5
            goto L_0x0036
        L_0x00ba:
            r4 = r5
            r6 = r8
            r3 = r5
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.RealWebSocket.writeOneFrame():boolean");
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void writePingFrame() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.failed     // Catch:{ all -> 0x0016 }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r2)     // Catch:{ all -> 0x0016 }
        L_0x0006:
            return
        L_0x0007:
            okhttp3.internal.ws.WebSocketWriter r0 = r2.writer     // Catch:{ all -> 0x0016 }
            monitor-exit(r2)     // Catch:{ all -> 0x0016 }
            okio.ByteString r1 = okio.ByteString.EMPTY     // Catch:{ IOException -> 0x0010 }
            r0.writePing(r1)     // Catch:{ IOException -> 0x0010 }
            goto L_0x0006
        L_0x0010:
            r0 = move-exception
            r1 = 0
            r2.failWebSocket(r0, r1)
            goto L_0x0006
        L_0x0016:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0016 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.RealWebSocket.writePingFrame():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        r3.listener.onFailure(r3, r4, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x002f, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0030, code lost:
        okhttp3.internal.Util.closeQuietly((java.io.Closeable) r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0033, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void failWebSocket(java.lang.Exception r4, okhttp3.Response r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.failed     // Catch:{ all -> 0x002c }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r3)     // Catch:{ all -> 0x002c }
        L_0x0006:
            return
        L_0x0007:
            r0 = 1
            r3.failed = r0     // Catch:{ all -> 0x002c }
            okhttp3.internal.ws.RealWebSocket$Streams r1 = r3.streams     // Catch:{ all -> 0x002c }
            r0 = 0
            r3.streams = r0     // Catch:{ all -> 0x002c }
            java.util.concurrent.ScheduledFuture<?> r0 = r3.cancelFuture     // Catch:{ all -> 0x002c }
            if (r0 == 0) goto L_0x0019
            java.util.concurrent.ScheduledFuture<?> r0 = r3.cancelFuture     // Catch:{ all -> 0x002c }
            r2 = 0
            r0.cancel(r2)     // Catch:{ all -> 0x002c }
        L_0x0019:
            java.util.concurrent.ScheduledExecutorService r0 = r3.executor     // Catch:{ all -> 0x002c }
            if (r0 == 0) goto L_0x0022
            java.util.concurrent.ScheduledExecutorService r0 = r3.executor     // Catch:{ all -> 0x002c }
            r0.shutdown()     // Catch:{ all -> 0x002c }
        L_0x0022:
            monitor-exit(r3)     // Catch:{ all -> 0x002c }
            okhttp3.WebSocketListener r0 = r3.listener     // Catch:{ all -> 0x002f }
            r0.onFailure(r3, r4, r5)     // Catch:{ all -> 0x002f }
            okhttp3.internal.Util.closeQuietly(r1)
            goto L_0x0006
        L_0x002c:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x002c }
            throw r0
        L_0x002f:
            r0 = move-exception
            okhttp3.internal.Util.closeQuietly(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.ws.RealWebSocket.failWebSocket(java.lang.Exception, okhttp3.Response):void");
    }
}
