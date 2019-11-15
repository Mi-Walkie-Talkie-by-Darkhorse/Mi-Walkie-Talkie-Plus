package okhttp3.internal.connection;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.Address;
import okhttp3.Connection;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.Version;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http1.Http1Codec;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Codec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Connection.Builder;
import okhttp3.internal.http2.Http2Connection.Listener;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket.Streams;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HTTP;

public final class RealConnection extends Listener implements Connection {
    private static final String NPE_THROW_WITH_NULL = "throw with null exception";
    public int allocationLimit = 1;
    public final List<Reference<StreamAllocation>> allocations = new ArrayList();
    private final ConnectionPool connectionPool;
    private Handshake handshake;
    private Http2Connection http2Connection;
    public long idleAtNanos = FileTracerConfig.FOREVER;
    public boolean noNewStreams;
    private Protocol protocol;
    private Socket rawSocket;
    private final Route route;
    private BufferedSink sink;
    private Socket socket;
    private BufferedSource source;
    public int successCount;

    public RealConnection(ConnectionPool connectionPool2, Route route2) {
        this.connectionPool = connectionPool2;
        this.route = route2;
    }

    public static RealConnection testConnection(ConnectionPool connectionPool2, Route route2, Socket socket2, long j) {
        RealConnection realConnection = new RealConnection(connectionPool2, route2);
        realConnection.socket = socket2;
        realConnection.idleAtNanos = j;
        return realConnection;
    }

    public void connect(int i, int i2, int i3, boolean z) {
        if (this.protocol != null) {
            throw new IllegalStateException("already connected");
        }
        List connectionSpecs = this.route.address().connectionSpecs();
        ConnectionSpecSelector connectionSpecSelector = new ConnectionSpecSelector(connectionSpecs);
        if (this.route.address().sslSocketFactory() == null) {
            if (!connectionSpecs.contains(ConnectionSpec.CLEARTEXT)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String host = this.route.address().url().host();
            if (!Platform.get().isCleartextTrafficPermitted(host)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication to " + host + " not permitted by network security policy"));
            }
        }
        RouteException routeException = null;
        do {
            try {
                if (this.route.requiresTunnel()) {
                    connectTunnel(i, i2, i3);
                } else {
                    connectSocket(i, i2);
                }
                establishProtocol(connectionSpecSelector);
                if (this.http2Connection != null) {
                    synchronized (this.connectionPool) {
                        this.allocationLimit = this.http2Connection.maxConcurrentStreams();
                    }
                    return;
                }
                return;
            } catch (IOException e) {
                Util.closeQuietly(this.socket);
                Util.closeQuietly(this.rawSocket);
                this.socket = null;
                this.rawSocket = null;
                this.source = null;
                this.sink = null;
                this.handshake = null;
                this.protocol = null;
                this.http2Connection = null;
                if (routeException == null) {
                    routeException = new RouteException(e);
                } else {
                    routeException.addConnectException(e);
                }
                if (!z) {
                    break;
                } else if (!connectionSpecSelector.connectionFailed(e)) {
                }
                throw routeException;
            }
        } while (!connectionSpecSelector.connectionFailed(e));
        throw routeException;
    }

    private void connectTunnel(int i, int i2, int i3) throws IOException {
        Request createTunnelRequest = createTunnelRequest();
        HttpUrl url = createTunnelRequest.url();
        int i4 = 0;
        while (true) {
            i4++;
            if (i4 > 21) {
                throw new ProtocolException("Too many tunnel connections attempted: " + 21);
            }
            connectSocket(i, i2);
            createTunnelRequest = createTunnel(i2, i3, createTunnelRequest, url);
            if (createTunnelRequest != null) {
                Util.closeQuietly(this.rawSocket);
                this.rawSocket = null;
                this.sink = null;
                this.source = null;
            } else {
                return;
            }
        }
    }

    private void connectSocket(int i, int i2) throws IOException {
        Socket socket2;
        Proxy proxy = this.route.proxy();
        Address address = this.route.address();
        if (proxy.type() == Type.DIRECT || proxy.type() == Type.HTTP) {
            socket2 = address.socketFactory().createSocket();
        } else {
            socket2 = new Socket(proxy);
        }
        this.rawSocket = socket2;
        this.rawSocket.setSoTimeout(i2);
        try {
            Platform.get().connectSocket(this.rawSocket, this.route.socketAddress(), i);
            try {
                this.source = Okio.buffer(Okio.source(this.rawSocket));
                this.sink = Okio.buffer(Okio.sink(this.rawSocket));
            } catch (NullPointerException e) {
                if (NPE_THROW_WITH_NULL.equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.route.socketAddress());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private void establishProtocol(ConnectionSpecSelector connectionSpecSelector) throws IOException {
        if (this.route.address().sslSocketFactory() == null) {
            this.protocol = Protocol.HTTP_1_1;
            this.socket = this.rawSocket;
            return;
        }
        connectTls(connectionSpecSelector);
        if (this.protocol == Protocol.HTTP_2) {
            this.socket.setSoTimeout(0);
            this.http2Connection = new Builder(true).socket(this.socket, this.route.address().url().host(), this.source, this.sink).listener(this).build();
            this.http2Connection.start();
        }
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [java.net.Socket, javax.net.ssl.SSLSocket] */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r0v7, types: [java.net.Socket, javax.net.ssl.SSLSocket] */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r1v7, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r1v13, types: [java.lang.String] */
    /* JADX WARNING: type inference failed for: r1v20 */
    /* JADX WARNING: type inference failed for: r1v21 */
    /* JADX WARNING: type inference failed for: r1v22 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r1v2
  assigns: []
  uses: []
  mth insns count: 104
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 5 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void connectTls(okhttp3.internal.connection.ConnectionSpecSelector r10) throws java.io.IOException {
        /*
            r9 = this;
            r1 = 0
            okhttp3.Route r0 = r9.route
            okhttp3.Address r2 = r0.address()
            javax.net.ssl.SSLSocketFactory r0 = r2.sslSocketFactory()
            java.net.Socket r3 = r9.rawSocket     // Catch:{ AssertionError -> 0x0132 }
            okhttp3.HttpUrl r4 = r2.url()     // Catch:{ AssertionError -> 0x0132 }
            java.lang.String r4 = r4.host()     // Catch:{ AssertionError -> 0x0132 }
            okhttp3.HttpUrl r5 = r2.url()     // Catch:{ AssertionError -> 0x0132 }
            int r5 = r5.port()     // Catch:{ AssertionError -> 0x0132 }
            r6 = 1
            java.net.Socket r0 = r0.createSocket(r3, r4, r5, r6)     // Catch:{ AssertionError -> 0x0132 }
            javax.net.ssl.SSLSocket r0 = (javax.net.ssl.SSLSocket) r0     // Catch:{ AssertionError -> 0x0132 }
            okhttp3.ConnectionSpec r3 = r10.configureSecureSocket(r0)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            boolean r4 = r3.supportsTlsExtensions()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            if (r4 == 0) goto L_0x0041
            okhttp3.internal.platform.Platform r4 = okhttp3.internal.platform.Platform.get()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okhttp3.HttpUrl r5 = r2.url()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r5 = r5.host()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.util.List r6 = r2.protocols()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r4.configureTlsExtensions(r0, r5, r6)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
        L_0x0041:
            r0.startHandshake()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            javax.net.ssl.SSLSession r4 = r0.getSession()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okhttp3.Handshake r4 = okhttp3.Handshake.get(r4)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            javax.net.ssl.HostnameVerifier r5 = r2.hostnameVerifier()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okhttp3.HttpUrl r6 = r2.url()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r6 = r6.host()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            javax.net.ssl.SSLSession r7 = r0.getSession()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            boolean r5 = r5.verify(r6, r7)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            if (r5 != 0) goto L_0x00da
            java.util.List r1 = r4.peerCertificates()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r3 = 0
            java.lang.Object r1 = r1.get(r3)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.security.cert.X509Certificate r1 = (java.security.cert.X509Certificate) r1     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            javax.net.ssl.SSLPeerUnverifiedException r3 = new javax.net.ssl.SSLPeerUnverifiedException     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r4.<init>()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r5 = "Hostname "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okhttp3.HttpUrl r2 = r2.url()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r2 = r2.host()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r4 = " not verified:\n    certificate: "
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r4 = okhttp3.CertificatePinner.pin(r1)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r4 = "\n    DN: "
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.security.Principal r4 = r1.getSubjectDN()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r4 = r4.getName()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r4 = "\n    subjectAltNames: "
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.util.List r1 = okhttp3.internal.tls.OkHostnameVerifier.allSubjectAltNames(r1)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.StringBuilder r1 = r2.append(r1)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r1 = r1.toString()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r3.<init>(r1)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            throw r3     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
        L_0x00bc:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
        L_0x00c0:
            boolean r2 = okhttp3.internal.Util.isAndroidGetsocknameError(r0)     // Catch:{ all -> 0x00cc }
            if (r2 == 0) goto L_0x012c
            java.io.IOException r2 = new java.io.IOException     // Catch:{ all -> 0x00cc }
            r2.<init>(r0)     // Catch:{ all -> 0x00cc }
            throw r2     // Catch:{ all -> 0x00cc }
        L_0x00cc:
            r0 = move-exception
        L_0x00cd:
            if (r1 == 0) goto L_0x00d6
            okhttp3.internal.platform.Platform r2 = okhttp3.internal.platform.Platform.get()
            r2.afterHandshake(r1)
        L_0x00d6:
            okhttp3.internal.Util.closeQuietly(r1)
            throw r0
        L_0x00da:
            okhttp3.CertificatePinner r5 = r2.certificatePinner()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okhttp3.HttpUrl r2 = r2.url()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r2 = r2.host()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.util.List r6 = r4.peerCertificates()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r5.check(r2, r6)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            boolean r2 = r3.supportsTlsExtensions()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            if (r2 == 0) goto L_0x00fb
            okhttp3.internal.platform.Platform r1 = okhttp3.internal.platform.Platform.get()     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.lang.String r1 = r1.getSelectedProtocol(r0)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
        L_0x00fb:
            r9.socket = r0     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.net.Socket r2 = r9.socket     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okio.Source r2 = okio.Okio.source(r2)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okio.BufferedSource r2 = okio.Okio.buffer(r2)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r9.source = r2     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            java.net.Socket r2 = r9.socket     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okio.Sink r2 = okio.Okio.sink(r2)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            okio.BufferedSink r2 = okio.Okio.buffer(r2)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r9.sink = r2     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            r9.handshake = r4     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            if (r1 == 0) goto L_0x0129
            okhttp3.Protocol r1 = okhttp3.Protocol.get(r1)     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
        L_0x011d:
            r9.protocol = r1     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            if (r0 == 0) goto L_0x0128
            okhttp3.internal.platform.Platform r1 = okhttp3.internal.platform.Platform.get()
            r1.afterHandshake(r0)
        L_0x0128:
            return
        L_0x0129:
            okhttp3.Protocol r1 = okhttp3.Protocol.HTTP_1_1     // Catch:{ AssertionError -> 0x00bc, all -> 0x012d }
            goto L_0x011d
        L_0x012c:
            throw r0     // Catch:{ all -> 0x00cc }
        L_0x012d:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto L_0x00cd
        L_0x0132:
            r0 = move-exception
            goto L_0x00c0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.connectTls(okhttp3.internal.connection.ConnectionSpecSelector):void");
    }

    private Request createTunnel(int i, int i2, Request request, HttpUrl httpUrl) throws IOException {
        Response build;
        String str = "CONNECT " + Util.hostHeader(httpUrl, true) + " HTTP/1.1";
        do {
            Http1Codec http1Codec = new Http1Codec(null, null, this.source, this.sink);
            this.source.timeout().timeout((long) i, TimeUnit.MILLISECONDS);
            this.sink.timeout().timeout((long) i2, TimeUnit.MILLISECONDS);
            http1Codec.writeRequest(request.headers(), str);
            http1Codec.finishRequest();
            build = http1Codec.readResponseHeaders(false).request(request).build();
            long contentLength = HttpHeaders.contentLength(build);
            if (contentLength == -1) {
                contentLength = 0;
            }
            Source newFixedLengthSource = http1Codec.newFixedLengthSource(contentLength);
            Util.skipAll(newFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            newFixedLengthSource.close();
            switch (build.code()) {
                case 200:
                    if (this.source.buffer().exhausted() && this.sink.buffer().exhausted()) {
                        return null;
                    }
                    throw new IOException("TLS tunnel buffered too many bytes!");
                case HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED /*407*/:
                    request = this.route.address().proxyAuthenticator().authenticate(this.route, build);
                    if (request != null) {
                        break;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                default:
                    throw new IOException("Unexpected response code for CONNECT: " + build.code());
            }
        } while (!"close".equalsIgnoreCase(build.header("Connection")));
        return request;
    }

    private Request createTunnelRequest() {
        return new Request.Builder().url(this.route.address().url()).header("Host", Util.hostHeader(this.route.address().url(), true)).header("Proxy-Connection", HTTP.CONN_KEEP_ALIVE).header("User-Agent", Version.userAgent()).build();
    }

    public boolean isEligible(Address address, @Nullable Route route2) {
        if (this.allocations.size() >= this.allocationLimit || this.noNewStreams || !Internal.instance.equalsNonHost(this.route.address(), address)) {
            return false;
        }
        if (address.url().host().equals(route().address().url().host())) {
            return true;
        }
        if (this.http2Connection == null || route2 == null || route2.proxy().type() != Type.DIRECT || this.route.proxy().type() != Type.DIRECT || !this.route.socketAddress().equals(route2.socketAddress()) || route2.address().hostnameVerifier() != OkHostnameVerifier.INSTANCE || !supportsUrl(address.url())) {
            return false;
        }
        try {
            address.certificatePinner().check(address.url().host(), handshake().peerCertificates());
            return true;
        } catch (SSLPeerUnverifiedException e) {
            return false;
        }
    }

    public boolean supportsUrl(HttpUrl httpUrl) {
        if (httpUrl.port() != this.route.address().url().port()) {
            return false;
        }
        if (httpUrl.host().equals(this.route.address().url().host())) {
            return true;
        }
        return this.handshake != null && OkHostnameVerifier.INSTANCE.verify(httpUrl.host(), (X509Certificate) this.handshake.peerCertificates().get(0));
    }

    public HttpCodec newCodec(OkHttpClient okHttpClient, StreamAllocation streamAllocation) throws SocketException {
        if (this.http2Connection != null) {
            return new Http2Codec(okHttpClient, streamAllocation, this.http2Connection);
        }
        this.socket.setSoTimeout(okHttpClient.readTimeoutMillis());
        this.source.timeout().timeout((long) okHttpClient.readTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.sink.timeout().timeout((long) okHttpClient.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        return new Http1Codec(okHttpClient, streamAllocation, this.source, this.sink);
    }

    public Streams newWebSocketStreams(StreamAllocation streamAllocation) {
        final StreamAllocation streamAllocation2 = streamAllocation;
        return new Streams(true, this.source, this.sink) {
            public void close() throws IOException {
                streamAllocation2.streamFinished(true, streamAllocation2.codec());
            }
        };
    }

    public Route route() {
        return this.route;
    }

    public void cancel() {
        Util.closeQuietly(this.rawSocket);
    }

    public Socket socket() {
        return this.socket;
    }

    public boolean isHealthy(boolean z) {
        int soTimeout;
        if (this.socket.isClosed() || this.socket.isInputShutdown() || this.socket.isOutputShutdown()) {
            return false;
        }
        if (this.http2Connection != null) {
            if (this.http2Connection.isShutdown()) {
                return false;
            }
            return true;
        } else if (!z) {
            return true;
        } else {
            try {
                soTimeout = this.socket.getSoTimeout();
                this.socket.setSoTimeout(1);
                if (this.source.exhausted()) {
                    this.socket.setSoTimeout(soTimeout);
                    return false;
                }
                this.socket.setSoTimeout(soTimeout);
                return true;
            } catch (SocketTimeoutException e) {
                return true;
            } catch (IOException e2) {
                return false;
            } catch (Throwable th) {
                this.socket.setSoTimeout(soTimeout);
                throw th;
            }
        }
    }

    public void onStream(Http2Stream http2Stream) throws IOException {
        http2Stream.close(ErrorCode.REFUSED_STREAM);
    }

    public void onSettings(Http2Connection http2Connection2) {
        synchronized (this.connectionPool) {
            this.allocationLimit = http2Connection2.maxConcurrentStreams();
        }
    }

    public Handshake handshake() {
        return this.handshake;
    }

    public boolean isMultiplexed() {
        return this.http2Connection != null;
    }

    public Protocol protocol() {
        return this.protocol;
    }

    public String toString() {
        Object obj;
        StringBuilder append = new StringBuilder().append("Connection{").append(this.route.address().url().host()).append(":").append(this.route.address().url().port()).append(", proxy=").append(this.route.proxy()).append(" hostAddress=").append(this.route.socketAddress()).append(" cipherSuite=");
        if (this.handshake != null) {
            obj = this.handshake.cipherSuite();
        } else {
            obj = "none";
        }
        return append.append(obj).append(" protocol=").append(this.protocol).append('}').toString();
    }
}
