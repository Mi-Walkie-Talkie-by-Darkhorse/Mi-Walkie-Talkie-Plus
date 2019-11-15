package org.jboss.netty.handler.codec.http;

import java.util.List;
import org.apache.http.HttpStatus;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.replay.ReplayingDecoder;

public abstract class HttpMessageDecoder extends ReplayingDecoder<State> {
    static final /* synthetic */ boolean $assertionsDisabled = (!HttpMessageDecoder.class.desiredAssertionStatus());
    private long chunkSize;
    private ChannelBuffer content;
    private int contentRead;
    private int headerSize;
    private final int maxChunkSize;
    private final int maxHeaderSize;
    private final int maxInitialLineLength;
    private HttpMessage message;

    protected enum State {
        SKIP_CONTROL_CHARS,
        READ_INITIAL,
        READ_HEADER,
        READ_VARIABLE_LENGTH_CONTENT,
        READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS,
        READ_FIXED_LENGTH_CONTENT,
        READ_FIXED_LENGTH_CONTENT_AS_CHUNKS,
        READ_CHUNK_SIZE,
        READ_CHUNKED_CONTENT,
        READ_CHUNKED_CONTENT_AS_CHUNKS,
        READ_CHUNK_DELIMITER,
        READ_CHUNK_FOOTER
    }

    /* access modifiers changed from: protected */
    public abstract HttpMessage createMessage(String[] strArr) throws Exception;

    /* access modifiers changed from: protected */
    public abstract boolean isDecodingRequest();

    protected HttpMessageDecoder() {
        this(4096, 8192, 8192);
    }

    protected HttpMessageDecoder(int i, int i2, int i3) {
        super(State.SKIP_CONTROL_CHARS, true);
        if (i <= 0) {
            throw new IllegalArgumentException("maxInitialLineLength must be a positive integer: " + i);
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("maxHeaderSize must be a positive integer: " + i2);
        } else if (i3 < 0) {
            throw new IllegalArgumentException("maxChunkSize must be a positive integer: " + i3);
        } else {
            this.maxInitialLineLength = i;
            this.maxHeaderSize = i2;
            this.maxChunkSize = i3;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:115:0x024a, code lost:
        r0 = r11.readByte();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x0250, code lost:
        if (r0 != 13) goto L_0x0262;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x0258, code lost:
        if (r11.readByte() != 10) goto L_0x024a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x025a, code lost:
        checkpoint(org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x0264, code lost:
        if (r0 != 10) goto L_0x024a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x0266, code lost:
        checkpoint(org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:?, code lost:
        return r8.message;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:?, code lost:
        return r8.message;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:?, code lost:
        return reset();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:?, code lost:
        return r8.message;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0038, code lost:
        r8.message = createMessage(r0);
        checkpoint(org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_HEADER);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:?, code lost:
        return r8.message;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0043, code lost:
        r0 = readHeaders(r11);
        checkpoint(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:?, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:?, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x004c, code lost:
        if (r0 != org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE) goto L_0x0057;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004e, code lost:
        r8.message.setChunked(true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0059, code lost:
        if (r0 != org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.SKIP_CONTROL_CHARS) goto L_0x0065;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005b, code lost:
        r8.message.removeHeader("Transfer-Encoding");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0065, code lost:
        r2 = org.jboss.netty.handler.codec.http.HttpHeaders.getContentLength(r8.message, -1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0071, code lost:
        if (r2 == 0) goto L_0x007f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0077, code lost:
        if (r2 != -1) goto L_0x0088;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x007d, code lost:
        if (isDecodingRequest() == false) goto L_0x0088;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x007f, code lost:
        r8.content = org.jboss.netty.buffer.ChannelBuffers.EMPTY_BUFFER;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0090, code lost:
        switch(r0) {
            case org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_FIXED_LENGTH_CONTENT :org.jboss.netty.handler.codec.http.HttpMessageDecoder$State: goto L_0x00ac;
            case org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_VARIABLE_LENGTH_CONTENT :org.jboss.netty.handler.codec.http.HttpMessageDecoder$State: goto L_0x00d4;
            default: goto L_0x0093;
        };
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00ab, code lost:
        throw new java.lang.IllegalStateException("Unexpected state: " + r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00b1, code lost:
        if (r2 > ((long) r8.maxChunkSize)) goto L_0x00bb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00b9, code lost:
        if (org.jboss.netty.handler.codec.http.HttpHeaders.is100ContinueExpected(r8.message) == false) goto L_0x00f3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00bb, code lost:
        checkpoint(org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_FIXED_LENGTH_CONTENT_AS_CHUNKS);
        r8.message.setChunked(true);
        r8.chunkSize = org.jboss.netty.handler.codec.http.HttpHeaders.getContentLength(r8.message, -1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00da, code lost:
        if (r11.readableBytes() > r8.maxChunkSize) goto L_0x00e4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00e2, code lost:
        if (org.jboss.netty.handler.codec.http.HttpHeaders.is100ContinueExpected(r8.message) == false) goto L_0x00f3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00e4, code lost:
        checkpoint(org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS);
        r8.message.setChunked(true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x001e, code lost:
        r0 = splitInitialLine(readLine(r11, r8.maxInitialLineLength));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:0x01d7, code lost:
        if ($assertionsDisabled != false) goto L_0x01ee;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x01e0, code lost:
        if (r8.chunkSize <= 2147483647L) goto L_0x01ee;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x01e7, code lost:
        throw new java.lang.AssertionError();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002a, code lost:
        if (r0.length >= 3) goto L_0x0038;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x01ee, code lost:
        r0 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk(r11.readBytes((int) r8.chunkSize));
        checkpoint(org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_DELIMITER);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002c, code lost:
        checkpoint(org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.SKIP_CONTROL_CHARS);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object decode(org.jboss.netty.channel.ChannelHandlerContext r9, org.jboss.netty.channel.Channel r10, org.jboss.netty.buffer.ChannelBuffer r11, org.jboss.netty.handler.codec.http.HttpMessageDecoder.State r12) throws java.lang.Exception {
        /*
            r8 = this;
            int[] r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State
            int r1 = r12.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0163;
                case 2: goto L_0x00f6;
                case 3: goto L_0x0013;
                case 4: goto L_0x001e;
                case 5: goto L_0x0043;
                case 6: goto L_0x0131;
                case 7: goto L_0x0169;
                case 8: goto L_0x01b5;
                case 9: goto L_0x01d5;
                case 10: goto L_0x0201;
                case 11: goto L_0x024a;
                case 12: goto L_0x026e;
                default: goto L_0x000b;
            }
        L_0x000b:
            java.lang.Error r0 = new java.lang.Error
            java.lang.String r1 = "Shouldn't reach here."
            r0.<init>(r1)
            throw r0
        L_0x0013:
            skipControlCharacters(r11)     // Catch:{ all -> 0x0033 }
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_INITIAL     // Catch:{ all -> 0x0033 }
            r8.checkpoint(r0)     // Catch:{ all -> 0x0033 }
            r8.checkpoint()
        L_0x001e:
            int r0 = r8.maxInitialLineLength
            java.lang.String r0 = readLine(r11, r0)
            java.lang.String[] r0 = splitInitialLine(r0)
            int r1 = r0.length
            r2 = 3
            if (r1 >= r2) goto L_0x0038
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.SKIP_CONTROL_CHARS
            r8.checkpoint(r0)
            r0 = 0
        L_0x0032:
            return r0
        L_0x0033:
            r0 = move-exception
            r8.checkpoint()
            throw r0
        L_0x0038:
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.createMessage(r0)
            r8.message = r0
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_HEADER
            r8.checkpoint(r0)
        L_0x0043:
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = r8.readHeaders(r11)
            r8.checkpoint(r0)
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r1 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE
            if (r0 != r1) goto L_0x0057
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            r1 = 1
            r0.setChunked(r1)
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            goto L_0x0032
        L_0x0057:
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r1 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.SKIP_CONTROL_CHARS
            if (r0 != r1) goto L_0x0065
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            java.lang.String r1 = "Transfer-Encoding"
            r0.removeHeader(r1)
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            goto L_0x0032
        L_0x0065:
            org.jboss.netty.handler.codec.http.HttpMessage r1 = r8.message
            r2 = -1
            long r2 = org.jboss.netty.handler.codec.http.HttpHeaders.getContentLength(r1, r2)
            r4 = 0
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 == 0) goto L_0x007f
            r4 = -1
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 != 0) goto L_0x0088
            boolean r1 = r8.isDecodingRequest()
            if (r1 == 0) goto L_0x0088
        L_0x007f:
            org.jboss.netty.buffer.ChannelBuffer r0 = org.jboss.netty.buffer.ChannelBuffers.EMPTY_BUFFER
            r8.content = r0
            java.lang.Object r0 = r8.reset()
            goto L_0x0032
        L_0x0088:
            int[] r1 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.AnonymousClass1.$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State
            int r4 = r0.ordinal()
            r1 = r1[r4]
            switch(r1) {
                case 1: goto L_0x00ac;
                case 2: goto L_0x00d4;
                default: goto L_0x0093;
            }
        L_0x0093:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unexpected state: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L_0x00ac:
            int r0 = r8.maxChunkSize
            long r0 = (long) r0
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 > 0) goto L_0x00bb
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            boolean r0 = org.jboss.netty.handler.codec.http.HttpHeaders.is100ContinueExpected(r0)
            if (r0 == 0) goto L_0x00f3
        L_0x00bb:
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_FIXED_LENGTH_CONTENT_AS_CHUNKS
            r8.checkpoint(r0)
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            r1 = 1
            r0.setChunked(r1)
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            r2 = -1
            long r0 = org.jboss.netty.handler.codec.http.HttpHeaders.getContentLength(r0, r2)
            r8.chunkSize = r0
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            goto L_0x0032
        L_0x00d4:
            int r0 = r11.readableBytes()
            int r1 = r8.maxChunkSize
            if (r0 > r1) goto L_0x00e4
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            boolean r0 = org.jboss.netty.handler.codec.http.HttpHeaders.is100ContinueExpected(r0)
            if (r0 == 0) goto L_0x00f3
        L_0x00e4:
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS
            r8.checkpoint(r0)
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            r1 = 1
            r0.setChunked(r1)
            org.jboss.netty.handler.codec.http.HttpMessage r0 = r8.message
            goto L_0x0032
        L_0x00f3:
            r0 = 0
            goto L_0x0032
        L_0x00f6:
            int r0 = r8.actualReadableBytes()
            int r1 = r8.maxChunkSize
            if (r0 <= r1) goto L_0x0100
            int r0 = r8.maxChunkSize
        L_0x0100:
            org.jboss.netty.handler.codec.http.HttpMessage r1 = r8.message
            boolean r1 = r1.isChunked()
            if (r1 != 0) goto L_0x0125
            org.jboss.netty.handler.codec.http.HttpMessage r1 = r8.message
            r2 = 1
            r1.setChunked(r2)
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            org.jboss.netty.handler.codec.http.HttpMessage r3 = r8.message
            r1[r2] = r3
            r2 = 1
            org.jboss.netty.handler.codec.http.DefaultHttpChunk r3 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk
            org.jboss.netty.buffer.ChannelBuffer r0 = r11.readBytes(r0)
            r3.<init>(r0)
            r1[r2] = r3
            r0 = r1
            goto L_0x0032
        L_0x0125:
            org.jboss.netty.handler.codec.http.DefaultHttpChunk r1 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk
            org.jboss.netty.buffer.ChannelBuffer r0 = r11.readBytes(r0)
            r1.<init>(r0)
            r0 = r1
            goto L_0x0032
        L_0x0131:
            int r0 = r8.actualReadableBytes()
            int r1 = r8.maxChunkSize
            if (r0 <= r1) goto L_0x013b
            int r0 = r8.maxChunkSize
        L_0x013b:
            org.jboss.netty.handler.codec.http.DefaultHttpChunk r1 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk
            org.jboss.netty.buffer.ChannelBuffer r0 = r11.readBytes(r0)
            r1.<init>(r0)
            boolean r0 = r11.readable()
            if (r0 != 0) goto L_0x0160
            r8.reset()
            boolean r0 = r1.isLast()
            if (r0 != 0) goto L_0x0160
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r2 = 0
            r0[r2] = r1
            r1 = 1
            org.jboss.netty.handler.codec.http.HttpChunkTrailer r2 = org.jboss.netty.handler.codec.http.HttpChunk.LAST_CHUNK
            r0[r1] = r2
            goto L_0x0032
        L_0x0160:
            r0 = r1
            goto L_0x0032
        L_0x0163:
            java.lang.Object r0 = r8.readFixedLengthContent(r11)
            goto L_0x0032
        L_0x0169:
            long r4 = r8.chunkSize
            int r0 = r8.actualReadableBytes()
            if (r0 != 0) goto L_0x0174
            r0 = 0
            goto L_0x0032
        L_0x0174:
            int r1 = r8.maxChunkSize
            if (r0 <= r1) goto L_0x017a
            int r0 = r8.maxChunkSize
        L_0x017a:
            long r2 = (long) r0
            int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r1 <= 0) goto L_0x0180
            int r0 = (int) r4
        L_0x0180:
            org.jboss.netty.handler.codec.http.DefaultHttpChunk r2 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk
            org.jboss.netty.buffer.ChannelBuffer r1 = r11.readBytes(r0)
            r2.<init>(r1)
            long r6 = (long) r0
            int r1 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r1 <= 0) goto L_0x01af
            long r0 = (long) r0
            long r0 = r4 - r0
        L_0x0191:
            r8.chunkSize = r0
            r4 = 0
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto L_0x01b2
            r8.reset()
            boolean r0 = r2.isLast()
            if (r0 != 0) goto L_0x01b2
            r0 = 2
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 0
            r0[r1] = r2
            r1 = 1
            org.jboss.netty.handler.codec.http.HttpChunkTrailer r2 = org.jboss.netty.handler.codec.http.HttpChunk.LAST_CHUNK
            r0[r1] = r2
            goto L_0x0032
        L_0x01af:
            r0 = 0
            goto L_0x0191
        L_0x01b2:
            r0 = r2
            goto L_0x0032
        L_0x01b5:
            int r0 = r8.maxInitialLineLength
            java.lang.String r0 = readLine(r11, r0)
            int r0 = getChunkSize(r0)
            long r2 = (long) r0
            r8.chunkSize = r2
            if (r0 != 0) goto L_0x01cc
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_FOOTER
            r8.checkpoint(r0)
            r0 = 0
            goto L_0x0032
        L_0x01cc:
            int r1 = r8.maxChunkSize
            if (r0 <= r1) goto L_0x01e8
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNKED_CONTENT_AS_CHUNKS
            r8.checkpoint(r0)
        L_0x01d5:
            boolean r0 = $assertionsDisabled
            if (r0 != 0) goto L_0x01ee
            long r0 = r8.chunkSize
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L_0x01ee
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L_0x01e8:
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNKED_CONTENT
            r8.checkpoint(r0)
            goto L_0x01d5
        L_0x01ee:
            org.jboss.netty.handler.codec.http.DefaultHttpChunk r0 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk
            long r2 = r8.chunkSize
            int r1 = (int) r2
            org.jboss.netty.buffer.ChannelBuffer r1 = r11.readBytes(r1)
            r0.<init>(r1)
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r1 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_DELIMITER
            r8.checkpoint(r1)
            goto L_0x0032
        L_0x0201:
            boolean r0 = $assertionsDisabled
            if (r0 != 0) goto L_0x0214
            long r0 = r8.chunkSize
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L_0x0214
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L_0x0214:
            long r0 = r8.chunkSize
            int r2 = (int) r0
            int r0 = r8.actualReadableBytes()
            if (r0 != 0) goto L_0x0220
            r0 = 0
            goto L_0x0032
        L_0x0220:
            int r1 = r8.maxChunkSize
            if (r2 <= r1) goto L_0x0283
            int r1 = r8.maxChunkSize
        L_0x0226:
            if (r1 <= r0) goto L_0x0281
        L_0x0228:
            org.jboss.netty.handler.codec.http.DefaultHttpChunk r1 = new org.jboss.netty.handler.codec.http.DefaultHttpChunk
            org.jboss.netty.buffer.ChannelBuffer r3 = r11.readBytes(r0)
            r1.<init>(r3)
            if (r2 <= r0) goto L_0x0248
            int r0 = r2 - r0
        L_0x0235:
            long r2 = (long) r0
            r8.chunkSize = r2
            if (r0 != 0) goto L_0x023f
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_DELIMITER
            r8.checkpoint(r0)
        L_0x023f:
            boolean r0 = r1.isLast()
            if (r0 != 0) goto L_0x024a
            r0 = r1
            goto L_0x0032
        L_0x0248:
            r0 = 0
            goto L_0x0235
        L_0x024a:
            byte r0 = r11.readByte()
            r1 = 13
            if (r0 != r1) goto L_0x0262
            byte r0 = r11.readByte()
            r1 = 10
            if (r0 != r1) goto L_0x024a
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE
            r8.checkpoint(r0)
            r0 = 0
            goto L_0x0032
        L_0x0262:
            r1 = 10
            if (r0 != r1) goto L_0x024a
            org.jboss.netty.handler.codec.http.HttpMessageDecoder$State r0 = org.jboss.netty.handler.codec.http.HttpMessageDecoder.State.READ_CHUNK_SIZE
            r8.checkpoint(r0)
            r0 = 0
            goto L_0x0032
        L_0x026e:
            org.jboss.netty.handler.codec.http.HttpChunkTrailer r0 = r8.readTrailingHeaders(r11)
            int r1 = r8.maxChunkSize
            if (r1 != 0) goto L_0x027c
            java.lang.Object r0 = r8.reset()
            goto L_0x0032
        L_0x027c:
            r8.reset()
            goto L_0x0032
        L_0x0281:
            r0 = r1
            goto L_0x0228
        L_0x0283:
            r1 = r2
            goto L_0x0226
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.http.HttpMessageDecoder.decode(org.jboss.netty.channel.ChannelHandlerContext, org.jboss.netty.channel.Channel, org.jboss.netty.buffer.ChannelBuffer, org.jboss.netty.handler.codec.http.HttpMessageDecoder$State):java.lang.Object");
    }

    /* access modifiers changed from: protected */
    public boolean isContentAlwaysEmpty(HttpMessage httpMessage) {
        if (!(httpMessage instanceof HttpResponse)) {
            return false;
        }
        HttpResponse httpResponse = (HttpResponse) httpMessage;
        int code = httpResponse.getStatus().getCode();
        if (code < 100 || code >= 200) {
            switch (code) {
                case HttpStatus.SC_NO_CONTENT /*204*/:
                case HttpStatus.SC_RESET_CONTENT /*205*/:
                case HttpStatus.SC_NOT_MODIFIED /*304*/:
                    return true;
                default:
                    return false;
            }
        } else if (code != 101 || httpResponse.containsHeader(Names.SEC_WEBSOCKET_ACCEPT)) {
            return true;
        } else {
            return false;
        }
    }

    private Object reset() {
        HttpMessage httpMessage = this.message;
        ChannelBuffer channelBuffer = this.content;
        if (channelBuffer != null) {
            httpMessage.setContent(channelBuffer);
            this.content = null;
        }
        this.message = null;
        checkpoint(State.SKIP_CONTROL_CHARS);
        return httpMessage;
    }

    private static void skipControlCharacters(ChannelBuffer channelBuffer) {
        while (true) {
            char readUnsignedByte = (char) channelBuffer.readUnsignedByte();
            if (!Character.isISOControl(readUnsignedByte) && !Character.isWhitespace(readUnsignedByte)) {
                channelBuffer.readerIndex(channelBuffer.readerIndex() - 1);
                return;
            }
        }
    }

    private Object readFixedLengthContent(ChannelBuffer channelBuffer) {
        long contentLength = HttpHeaders.getContentLength(this.message, -1);
        if ($assertionsDisabled || contentLength <= 2147483647L) {
            int i = ((int) contentLength) - this.contentRead;
            if (i > actualReadableBytes()) {
                i = actualReadableBytes();
            }
            this.contentRead += i;
            if (contentLength >= ((long) this.contentRead)) {
                if (this.content == null) {
                    this.content = channelBuffer.readBytes((int) contentLength);
                } else {
                    this.content.writeBytes(channelBuffer, (int) contentLength);
                }
                return reset();
            } else if (this.message.isChunked()) {
                return new DefaultHttpChunk(channelBuffer.readBytes(i));
            } else {
                this.message.setChunked(true);
                return new Object[]{this.message, new DefaultHttpChunk(channelBuffer.readBytes(i))};
            }
        } else {
            throw new AssertionError();
        }
    }

    private State readHeaders(ChannelBuffer channelBuffer) throws TooLongFrameException {
        String str = null;
        this.headerSize = 0;
        HttpMessage httpMessage = this.message;
        String readHeader = readHeader(channelBuffer);
        if (readHeader.length() != 0) {
            httpMessage.clearHeaders();
            String str2 = readHeader;
            String str3 = null;
            do {
                char charAt = str2.charAt(0);
                if (str3 == null || !(charAt == ' ' || charAt == 9)) {
                    if (str3 != null) {
                        httpMessage.addHeader(str3, str);
                    }
                    String[] splitHeader = splitHeader(str2);
                    str3 = splitHeader[0];
                    str = splitHeader[1];
                } else {
                    str = str + ' ' + str2.trim();
                }
                str2 = readHeader(channelBuffer);
            } while (str2.length() != 0);
            if (str3 != null) {
                httpMessage.addHeader(str3, str);
            }
        }
        if (isContentAlwaysEmpty(httpMessage)) {
            return State.SKIP_CONTROL_CHARS;
        }
        if (httpMessage.isChunked()) {
            return State.READ_CHUNK_SIZE;
        }
        if (HttpHeaders.getContentLength(httpMessage, -1) >= 0) {
            return State.READ_FIXED_LENGTH_CONTENT;
        }
        return State.READ_VARIABLE_LENGTH_CONTENT;
    }

    private HttpChunkTrailer readTrailingHeaders(ChannelBuffer channelBuffer) throws TooLongFrameException {
        String str;
        this.headerSize = 0;
        String readHeader = readHeader(channelBuffer);
        String str2 = null;
        if (readHeader.length() == 0) {
            return HttpChunk.LAST_CHUNK;
        }
        DefaultHttpChunkTrailer defaultHttpChunkTrailer = new DefaultHttpChunkTrailer();
        String str3 = readHeader;
        while (true) {
            char charAt = str3.charAt(0);
            if (str2 == null || !(charAt == ' ' || charAt == 9)) {
                String[] splitHeader = splitHeader(str3);
                str = splitHeader[0];
                if (!str.equalsIgnoreCase("Content-Length") && !str.equalsIgnoreCase("Transfer-Encoding") && !str.equalsIgnoreCase(Names.TRAILER)) {
                    defaultHttpChunkTrailer.addHeader(str, splitHeader[1]);
                }
            } else {
                List headers = defaultHttpChunkTrailer.getHeaders(str2);
                if (!headers.isEmpty()) {
                    int size = headers.size() - 1;
                    headers.set(size, ((String) headers.get(size)) + str3.trim());
                }
                str = str2;
            }
            String readHeader2 = readHeader(channelBuffer);
            if (readHeader2.length() == 0) {
                return defaultHttpChunkTrailer;
            }
            str3 = readHeader2;
            str2 = str;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r0 < r5.maxHeaderSize) goto L_0x004d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0038, code lost:
        throw new org.jboss.netty.handler.codec.frame.TooLongFrameException("HTTP header is larger than " + r5.maxHeaderSize + " bytes.");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String readHeader(org.jboss.netty.buffer.ChannelBuffer r6) throws org.jboss.netty.handler.codec.frame.TooLongFrameException {
        /*
            r5 = this;
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r0 = 64
            r3.<init>(r0)
            int r0 = r5.headerSize
        L_0x0009:
            byte r1 = r6.readByte()
            char r1 = (char) r1
            int r2 = r0 + 1
            switch(r1) {
                case 10: goto L_0x004b;
                case 11: goto L_0x0013;
                case 12: goto L_0x0013;
                case 13: goto L_0x0039;
                default: goto L_0x0013;
            }
        L_0x0013:
            r0 = r2
        L_0x0014:
            int r2 = r5.maxHeaderSize
            if (r0 < r2) goto L_0x004d
            org.jboss.netty.handler.codec.frame.TooLongFrameException r0 = new org.jboss.netty.handler.codec.frame.TooLongFrameException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "HTTP header is larger than "
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r5.maxHeaderSize
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " bytes."
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0039:
            byte r0 = r6.readByte()
            char r0 = (char) r0
            int r1 = r2 + 1
            r2 = 10
            if (r0 != r2) goto L_0x0051
        L_0x0044:
            r5.headerSize = r1
            java.lang.String r0 = r3.toString()
            return r0
        L_0x004b:
            r1 = r2
            goto L_0x0044
        L_0x004d:
            r3.append(r1)
            goto L_0x0009
        L_0x0051:
            r4 = r0
            r0 = r1
            r1 = r4
            goto L_0x0014
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.http.HttpMessageDecoder.readHeader(org.jboss.netty.buffer.ChannelBuffer):java.lang.String");
    }

    private static int getChunkSize(String str) {
        String str2;
        String trim = str.trim();
        int i = 0;
        while (true) {
            if (i >= trim.length()) {
                str2 = trim;
                break;
            }
            char charAt = trim.charAt(i);
            if (charAt == ';' || Character.isWhitespace(charAt) || Character.isISOControl(charAt)) {
                str2 = trim.substring(0, i);
            } else {
                i++;
            }
        }
        str2 = trim.substring(0, i);
        return Integer.parseInt(str2, 16);
    }

    private static String readLine(ChannelBuffer channelBuffer, int i) throws TooLongFrameException {
        StringBuilder sb = new StringBuilder(64);
        int i2 = 0;
        while (true) {
            byte readByte = channelBuffer.readByte();
            if (readByte == 13) {
                if (channelBuffer.readByte() == 10) {
                    return sb.toString();
                }
            } else if (readByte == 10) {
                return sb.toString();
            } else {
                if (i2 >= i) {
                    throw new TooLongFrameException("An HTTP line is larger than " + i + " bytes.");
                }
                i2++;
                sb.append((char) readByte);
            }
        }
    }

    private static String[] splitInitialLine(String str) {
        int findNonWhitespace = findNonWhitespace(str, 0);
        int findWhitespace = findWhitespace(str, findNonWhitespace);
        int findNonWhitespace2 = findNonWhitespace(str, findWhitespace);
        int findWhitespace2 = findWhitespace(str, findNonWhitespace2);
        int findNonWhitespace3 = findNonWhitespace(str, findWhitespace2);
        int findEndOfString = findEndOfString(str);
        String[] strArr = new String[3];
        strArr[0] = str.substring(findNonWhitespace, findWhitespace);
        strArr[1] = str.substring(findNonWhitespace2, findWhitespace2);
        strArr[2] = findNonWhitespace3 < findEndOfString ? str.substring(findNonWhitespace3, findEndOfString) : "";
        return strArr;
    }

    private static String[] splitHeader(String str) {
        int length = str.length();
        int findNonWhitespace = findNonWhitespace(str, 0);
        int i = findNonWhitespace;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == ':' || Character.isWhitespace(charAt)) {
                break;
            }
            i++;
        }
        int i2 = i;
        while (true) {
            if (i2 >= length) {
                break;
            } else if (str.charAt(i2) == ':') {
                i2++;
                break;
            } else {
                i2++;
            }
        }
        int findNonWhitespace2 = findNonWhitespace(str, i2);
        if (findNonWhitespace2 == length) {
            return new String[]{str.substring(findNonWhitespace, i), ""};
        }
        return new String[]{str.substring(findNonWhitespace, i), str.substring(findNonWhitespace2, findEndOfString(str))};
    }

    private static int findNonWhitespace(String str, int i) {
        while (i < str.length() && Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        return i;
    }

    private static int findWhitespace(String str, int i) {
        while (i < str.length() && !Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        return i;
    }

    private static int findEndOfString(String str) {
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        return length;
    }
}
