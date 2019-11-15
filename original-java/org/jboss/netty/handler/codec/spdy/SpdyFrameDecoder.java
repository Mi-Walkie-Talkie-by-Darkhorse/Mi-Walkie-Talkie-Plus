package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.handler.codec.frame.FrameDecoder;

public class SpdyFrameDecoder extends FrameDecoder {
    private ChannelBuffer decompressed;
    private byte flags;
    private final SpdyHeaderBlockDecompressor headerBlockDecompressor;
    private int headerSize;
    private int length;
    private final int maxChunkSize;
    private final int maxHeaderSize;
    private int numHeaders;
    private SpdyHeaderBlock spdyHeaderBlock;
    private SpdySettingsFrame spdySettingsFrame;
    private final int spdyVersion;
    private State state;
    private int streamID;
    private int type;
    private int version;

    private enum State {
        READ_COMMON_HEADER,
        READ_CONTROL_FRAME,
        READ_SETTINGS_FRAME,
        READ_HEADER_BLOCK_FRAME,
        READ_HEADER_BLOCK,
        READ_DATA_FRAME,
        DISCARD_FRAME,
        FRAME_ERROR
    }

    @Deprecated
    public SpdyFrameDecoder() {
        this(2);
    }

    public SpdyFrameDecoder(int i) {
        this(i, 8192, 16384);
    }

    public SpdyFrameDecoder(int i, int i2, int i3) {
        super(false);
        if (i < 2 || i > 3) {
            throw new IllegalArgumentException("unsupported version: " + i);
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("maxChunkSize must be a positive integer: " + i2);
        } else if (i3 <= 0) {
            throw new IllegalArgumentException("maxHeaderSize must be a positive integer: " + i3);
        } else {
            this.spdyVersion = i;
            this.maxChunkSize = i2;
            this.maxHeaderSize = i3;
            this.headerBlockDecompressor = SpdyHeaderBlockDecompressor.newInstance(i);
            this.state = State.READ_COMMON_HEADER;
        }
    }

    /* access modifiers changed from: protected */
    public Object decodeLast(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        try {
            return decode(channelHandlerContext, channel, channelBuffer);
        } finally {
            this.headerBlockDecompressor.end();
        }
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer) throws Exception {
        byte readByte;
        int unsignedMedium;
        boolean z;
        boolean z2 = true;
        switch (this.state) {
            case READ_COMMON_HEADER:
                this.state = readCommonHeader(channelBuffer);
                if (this.state == State.FRAME_ERROR) {
                    if (this.version != this.spdyVersion) {
                        fireProtocolException(channelHandlerContext, "Unsupported version: " + this.version);
                    } else {
                        fireInvalidControlFrameException(channelHandlerContext);
                    }
                }
                if (this.length == 0) {
                    if (this.state != State.READ_DATA_FRAME) {
                        this.state = State.READ_COMMON_HEADER;
                    } else if (this.streamID == 0) {
                        this.state = State.FRAME_ERROR;
                        fireProtocolException(channelHandlerContext, "Received invalid data frame");
                        return null;
                    } else {
                        DefaultSpdyDataFrame defaultSpdyDataFrame = new DefaultSpdyDataFrame(this.streamID);
                        if ((this.flags & 1) == 0) {
                            z2 = false;
                        }
                        defaultSpdyDataFrame.setLast(z2);
                        this.state = State.READ_COMMON_HEADER;
                        return defaultSpdyDataFrame;
                    }
                }
                return null;
            case READ_CONTROL_FRAME:
                try {
                    Object readControlFrame = readControlFrame(channelBuffer);
                    if (readControlFrame == null) {
                        return readControlFrame;
                    }
                    this.state = State.READ_COMMON_HEADER;
                    return readControlFrame;
                } catch (IllegalArgumentException e) {
                    this.state = State.FRAME_ERROR;
                    fireInvalidControlFrameException(channelHandlerContext);
                    return null;
                }
            case READ_SETTINGS_FRAME:
                if (this.spdySettingsFrame == null) {
                    if (channelBuffer.readableBytes() < 4) {
                        return null;
                    }
                    int unsignedInt = SpdyCodecUtil.getUnsignedInt(channelBuffer, channelBuffer.readerIndex());
                    channelBuffer.skipBytes(4);
                    this.length -= 4;
                    if ((this.length & 7) == 0 && (this.length >> 3) == unsignedInt) {
                        this.spdySettingsFrame = new DefaultSpdySettingsFrame();
                        this.spdySettingsFrame.setClearPreviouslyPersistedSettings((this.flags & 1) != 0);
                    } else {
                        this.state = State.FRAME_ERROR;
                        fireInvalidControlFrameException(channelHandlerContext);
                        return null;
                    }
                }
                int min = Math.min(channelBuffer.readableBytes() >> 3, this.length >> 3);
                for (int i = 0; i < min; i++) {
                    if (this.version < 3) {
                        unsignedMedium = ((channelBuffer.readByte() & 255) << Tnaf.POW_2_WIDTH) | (channelBuffer.readByte() & 255) | ((channelBuffer.readByte() & 255) << 8);
                        readByte = channelBuffer.readByte();
                    } else {
                        readByte = channelBuffer.readByte();
                        unsignedMedium = SpdyCodecUtil.getUnsignedMedium(channelBuffer, channelBuffer.readerIndex());
                        channelBuffer.skipBytes(3);
                    }
                    int signedInt = SpdyCodecUtil.getSignedInt(channelBuffer, channelBuffer.readerIndex());
                    channelBuffer.skipBytes(4);
                    if (unsignedMedium == 0) {
                        this.state = State.FRAME_ERROR;
                        this.spdySettingsFrame = null;
                        fireInvalidControlFrameException(channelHandlerContext);
                        return null;
                    }
                    if (!this.spdySettingsFrame.isSet(unsignedMedium)) {
                        boolean z3 = (readByte & 1) != 0;
                        if ((readByte & 2) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.spdySettingsFrame.setValue(unsignedMedium, signedInt, z3, z);
                    }
                }
                this.length -= min * 8;
                if (this.length != 0) {
                    return null;
                }
                this.state = State.READ_COMMON_HEADER;
                SpdySettingsFrame spdySettingsFrame2 = this.spdySettingsFrame;
                this.spdySettingsFrame = null;
                return spdySettingsFrame2;
            case READ_HEADER_BLOCK_FRAME:
                try {
                    this.spdyHeaderBlock = readHeaderBlockFrame(channelBuffer);
                    if (this.spdyHeaderBlock != null) {
                        if (this.length == 0) {
                            this.state = State.READ_COMMON_HEADER;
                            SpdyHeaderBlock spdyHeaderBlock2 = this.spdyHeaderBlock;
                            this.spdyHeaderBlock = null;
                            return spdyHeaderBlock2;
                        }
                        this.state = State.READ_HEADER_BLOCK;
                    }
                    return null;
                } catch (IllegalArgumentException e2) {
                    this.state = State.FRAME_ERROR;
                    fireInvalidControlFrameException(channelHandlerContext);
                    return null;
                }
            case READ_HEADER_BLOCK:
                int min2 = Math.min(channelBuffer.readableBytes(), this.length);
                this.length -= min2;
                try {
                    decodeHeaderBlock(channelBuffer.readSlice(min2));
                    if (this.spdyHeaderBlock != null && this.spdyHeaderBlock.isInvalid()) {
                        SpdyHeaderBlock spdyHeaderBlock3 = this.spdyHeaderBlock;
                        this.spdyHeaderBlock = null;
                        this.decompressed = null;
                        if (this.length != 0) {
                            return spdyHeaderBlock3;
                        }
                        this.state = State.READ_COMMON_HEADER;
                        return spdyHeaderBlock3;
                    } else if (this.length != 0) {
                        return null;
                    } else {
                        SpdyHeaderBlock spdyHeaderBlock4 = this.spdyHeaderBlock;
                        this.spdyHeaderBlock = null;
                        this.state = State.READ_COMMON_HEADER;
                        return spdyHeaderBlock4;
                    }
                } catch (Exception e3) {
                    this.state = State.FRAME_ERROR;
                    this.spdyHeaderBlock = null;
                    this.decompressed = null;
                    Channels.fireExceptionCaught(channelHandlerContext, (Throwable) e3);
                    return null;
                }
            case READ_DATA_FRAME:
                if (this.streamID == 0) {
                    this.state = State.FRAME_ERROR;
                    fireProtocolException(channelHandlerContext, "Received invalid data frame");
                    return null;
                }
                int min3 = Math.min(this.maxChunkSize, this.length);
                if (channelBuffer.readableBytes() < min3) {
                    return null;
                }
                DefaultSpdyDataFrame defaultSpdyDataFrame2 = new DefaultSpdyDataFrame(this.streamID);
                defaultSpdyDataFrame2.setData(channelBuffer.readBytes(min3));
                this.length -= min3;
                if (this.length == 0) {
                    if ((this.flags & 1) == 0) {
                        z2 = false;
                    }
                    defaultSpdyDataFrame2.setLast(z2);
                    this.state = State.READ_COMMON_HEADER;
                }
                return defaultSpdyDataFrame2;
            case DISCARD_FRAME:
                int min4 = Math.min(channelBuffer.readableBytes(), this.length);
                channelBuffer.skipBytes(min4);
                this.length -= min4;
                if (this.length == 0) {
                    this.state = State.READ_COMMON_HEADER;
                }
                return null;
            case FRAME_ERROR:
                channelBuffer.skipBytes(channelBuffer.readableBytes());
                return null;
            default:
                throw new Error("Shouldn't reach here.");
        }
    }

    private State readCommonHeader(ChannelBuffer channelBuffer) {
        if (channelBuffer.readableBytes() < 8) {
            return State.READ_COMMON_HEADER;
        }
        int readerIndex = channelBuffer.readerIndex();
        int i = readerIndex + 4;
        int i2 = readerIndex + 5;
        channelBuffer.skipBytes(8);
        boolean z = (channelBuffer.getByte(readerIndex) & 128) != 0;
        this.flags = channelBuffer.getByte(i);
        this.length = SpdyCodecUtil.getUnsignedMedium(channelBuffer, i2);
        if (z) {
            this.version = SpdyCodecUtil.getUnsignedShort(channelBuffer, readerIndex) & 32767;
            this.type = SpdyCodecUtil.getUnsignedShort(channelBuffer, readerIndex + 2);
            if (this.version != this.spdyVersion || !isValidControlFrameHeader()) {
                return State.FRAME_ERROR;
            }
            if (willGenerateControlFrame()) {
                switch (this.type) {
                    case 1:
                    case 2:
                    case 8:
                        return State.READ_HEADER_BLOCK_FRAME;
                    case 4:
                        return State.READ_SETTINGS_FRAME;
                    default:
                        return State.READ_CONTROL_FRAME;
                }
            } else if (this.length != 0) {
                return State.DISCARD_FRAME;
            } else {
                return State.READ_COMMON_HEADER;
            }
        } else {
            this.streamID = SpdyCodecUtil.getUnsignedInt(channelBuffer, readerIndex);
            return State.READ_DATA_FRAME;
        }
    }

    private Object readControlFrame(ChannelBuffer channelBuffer) {
        int i = 8;
        switch (this.type) {
            case 3:
                if (channelBuffer.readableBytes() < 8) {
                    return null;
                }
                int unsignedInt = SpdyCodecUtil.getUnsignedInt(channelBuffer, channelBuffer.readerIndex());
                int signedInt = SpdyCodecUtil.getSignedInt(channelBuffer, channelBuffer.readerIndex() + 4);
                channelBuffer.skipBytes(8);
                return new DefaultSpdyRstStreamFrame(unsignedInt, signedInt);
            case 6:
                if (channelBuffer.readableBytes() < 4) {
                    return null;
                }
                int signedInt2 = SpdyCodecUtil.getSignedInt(channelBuffer, channelBuffer.readerIndex());
                channelBuffer.skipBytes(4);
                return new DefaultSpdyPingFrame(signedInt2);
            case 7:
                if (this.version < 3) {
                    i = 4;
                }
                if (channelBuffer.readableBytes() < i) {
                    return null;
                }
                int unsignedInt2 = SpdyCodecUtil.getUnsignedInt(channelBuffer, channelBuffer.readerIndex());
                channelBuffer.skipBytes(4);
                if (this.version < 3) {
                    return new DefaultSpdyGoAwayFrame(unsignedInt2);
                }
                int signedInt3 = SpdyCodecUtil.getSignedInt(channelBuffer, channelBuffer.readerIndex());
                channelBuffer.skipBytes(4);
                return new DefaultSpdyGoAwayFrame(unsignedInt2, signedInt3);
            case 9:
                if (channelBuffer.readableBytes() < 8) {
                    return null;
                }
                int unsignedInt3 = SpdyCodecUtil.getUnsignedInt(channelBuffer, channelBuffer.readerIndex());
                int unsignedInt4 = SpdyCodecUtil.getUnsignedInt(channelBuffer, channelBuffer.readerIndex() + 4);
                channelBuffer.skipBytes(8);
                return new DefaultSpdyWindowUpdateFrame(unsignedInt3, unsignedInt4);
            default:
                throw new Error("Shouldn't reach here.");
        }
    }

    private SpdyHeaderBlock readHeaderBlockFrame(ChannelBuffer channelBuffer) {
        int i;
        boolean z;
        boolean z2 = true;
        switch (this.type) {
            case 1:
                if (channelBuffer.readableBytes() < (this.version < 3 ? 12 : 10)) {
                    return null;
                }
                int readerIndex = channelBuffer.readerIndex();
                int unsignedInt = SpdyCodecUtil.getUnsignedInt(channelBuffer, readerIndex);
                int unsignedInt2 = SpdyCodecUtil.getUnsignedInt(channelBuffer, readerIndex + 4);
                byte b = (byte) ((channelBuffer.getByte(readerIndex + 8) >> 5) & 7);
                if (this.version < 3) {
                    b = (byte) (b >> 1);
                }
                channelBuffer.skipBytes(10);
                this.length -= 10;
                if (this.version < 3 && this.length == 2 && channelBuffer.getShort(channelBuffer.readerIndex()) == 0) {
                    channelBuffer.skipBytes(2);
                    this.length = 0;
                }
                DefaultSpdySynStreamFrame defaultSpdySynStreamFrame = new DefaultSpdySynStreamFrame(unsignedInt, unsignedInt2, b);
                if ((this.flags & 1) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                defaultSpdySynStreamFrame.setLast(z);
                if ((this.flags & 2) == 0) {
                    z2 = false;
                }
                defaultSpdySynStreamFrame.setUnidirectional(z2);
                return defaultSpdySynStreamFrame;
            case 2:
                if (this.version < 3) {
                    i = 8;
                } else {
                    i = 4;
                }
                if (channelBuffer.readableBytes() < i) {
                    return null;
                }
                int unsignedInt3 = SpdyCodecUtil.getUnsignedInt(channelBuffer, channelBuffer.readerIndex());
                channelBuffer.skipBytes(4);
                this.length -= 4;
                if (this.version < 3) {
                    channelBuffer.skipBytes(2);
                    this.length -= 2;
                }
                if (this.version < 3 && this.length == 2 && channelBuffer.getShort(channelBuffer.readerIndex()) == 0) {
                    channelBuffer.skipBytes(2);
                    this.length = 0;
                }
                DefaultSpdySynReplyFrame defaultSpdySynReplyFrame = new DefaultSpdySynReplyFrame(unsignedInt3);
                if ((this.flags & 1) == 0) {
                    z2 = false;
                }
                defaultSpdySynReplyFrame.setLast(z2);
                return defaultSpdySynReplyFrame;
            case 8:
                if (channelBuffer.readableBytes() < 4) {
                    return null;
                }
                if (this.version < 3 && this.length > 4 && channelBuffer.readableBytes() < 8) {
                    return null;
                }
                int unsignedInt4 = SpdyCodecUtil.getUnsignedInt(channelBuffer, channelBuffer.readerIndex());
                channelBuffer.skipBytes(4);
                this.length -= 4;
                if (this.version < 3 && this.length != 0) {
                    channelBuffer.skipBytes(2);
                    this.length -= 2;
                }
                if (this.version < 3 && this.length == 2 && channelBuffer.getShort(channelBuffer.readerIndex()) == 0) {
                    channelBuffer.skipBytes(2);
                    this.length = 0;
                }
                DefaultSpdyHeadersFrame defaultSpdyHeadersFrame = new DefaultSpdyHeadersFrame(unsignedInt4);
                if ((this.flags & 1) == 0) {
                    z2 = false;
                }
                defaultSpdyHeadersFrame.setLast(z2);
                return defaultSpdyHeadersFrame;
            default:
                throw new Error("Shouldn't reach here.");
        }
    }

    private boolean ensureBytes(int i) throws Exception {
        int decode;
        boolean z;
        if (this.decompressed.readableBytes() >= i) {
            return true;
        }
        do {
            decode = this.headerBlockDecompressor.decode(this.decompressed);
            z = this.decompressed.readableBytes() >= i;
            if (z) {
                break;
            }
        } while (decode > 0);
        return z;
    }

    private int readLengthField() {
        if (this.version < 3) {
            return this.decompressed.readUnsignedShort();
        }
        return this.decompressed.readInt();
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 185 */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00fc, code lost:
        r6 = r1 + r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0100, code lost:
        if (r6 <= r13.maxHeaderSize) goto L_0x011d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x011c, code lost:
        throw new org.jboss.netty.handler.codec.frame.TooLongFrameException("Header block exceeds " + r13.maxHeaderSize);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0121, code lost:
        if (ensureBytes(r5) != false) goto L_0x012f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0123, code lost:
        r13.decompressed.resetReaderIndex();
        r13.decompressed.discardReadBytes();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x012f, code lost:
        r7 = new byte[r5];
        r13.decompressed.readBytes(r7);
        r2 = 0;
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0138, code lost:
        if (r1 >= r5) goto L_0x016e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x013b, code lost:
        if (r1 >= r7.length) goto L_0x0144;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x013f, code lost:
        if (r7[r1] == 0) goto L_0x0144;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0141, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0145, code lost:
        if (r1 >= r7.length) goto L_0x0154;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x014b, code lost:
        if (r7[r1 + 1] != 0) goto L_0x0154;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x014d, code lost:
        r13.spdyHeaderBlock.setInvalid();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
        r13.spdyHeaderBlock.addHeader(r4, new java.lang.String(r7, r2, r1 - r2, "UTF-8"));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0162, code lost:
        r1 = r1 + 1;
        r2 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0167, code lost:
        r13.spdyHeaderBlock.setInvalid();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x016e, code lost:
        r13.numHeaders--;
        r13.headerSize = r6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void decodeHeaderBlock(org.jboss.netty.buffer.ChannelBuffer r14) throws java.lang.Exception {
        /*
            r13 = this;
            r12 = 0
            r11 = 3
            r2 = -1
            r3 = 0
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            if (r0 != 0) goto L_0x0014
            r13.headerSize = r3
            r13.numHeaders = r2
            r0 = 8192(0x2000, float:1.14794E-41)
            org.jboss.netty.buffer.ChannelBuffer r0 = org.jboss.netty.buffer.ChannelBuffers.dynamicBuffer(r0)
            r13.decompressed = r0
        L_0x0014:
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlockDecompressor r0 = r13.headerBlockDecompressor
            r0.setInput(r14)
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlockDecompressor r0 = r13.headerBlockDecompressor
            org.jboss.netty.buffer.ChannelBuffer r1 = r13.decompressed
            r0.decode(r1)
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            if (r0 != 0) goto L_0x0027
            r13.decompressed = r12
        L_0x0026:
            return
        L_0x0027:
            int r0 = r13.version
            if (r0 >= r11) goto L_0x0048
            r0 = 2
        L_0x002c:
            int r1 = r13.numHeaders
            if (r1 != r2) goto L_0x0059
            org.jboss.netty.buffer.ChannelBuffer r1 = r13.decompressed
            int r1 = r1.readableBytes()
            if (r1 < r0) goto L_0x0026
            int r1 = r13.readLengthField()
            r13.numHeaders = r1
            int r1 = r13.numHeaders
            if (r1 >= 0) goto L_0x0059
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            r0.setInvalid()
            goto L_0x0026
        L_0x0048:
            r0 = 4
            goto L_0x002c
        L_0x004a:
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r2 = r13.spdyHeaderBlock
            java.lang.String r5 = ""
            r2.addHeader(r4, r5)
            int r2 = r13.numHeaders
            int r2 = r2 + -1
            r13.numHeaders = r2
            r13.headerSize = r1
        L_0x0059:
            int r1 = r13.numHeaders
            if (r1 <= 0) goto L_0x0178
            int r1 = r13.headerSize
            org.jboss.netty.buffer.ChannelBuffer r2 = r13.decompressed
            r2.markReaderIndex()
            boolean r2 = r13.ensureBytes(r0)
            if (r2 != 0) goto L_0x0075
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.resetReaderIndex()
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.discardReadBytes()
            goto L_0x0026
        L_0x0075:
            int r2 = r13.readLengthField()
            if (r2 > 0) goto L_0x0081
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            r0.setInvalid()
            goto L_0x0026
        L_0x0081:
            int r1 = r1 + r2
            int r4 = r13.maxHeaderSize
            if (r1 <= r4) goto L_0x00a1
            org.jboss.netty.handler.codec.frame.TooLongFrameException r0 = new org.jboss.netty.handler.codec.frame.TooLongFrameException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Header block exceeds "
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r13.maxHeaderSize
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00a1:
            boolean r4 = r13.ensureBytes(r2)
            if (r4 != 0) goto L_0x00b3
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.resetReaderIndex()
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.discardReadBytes()
            goto L_0x0026
        L_0x00b3:
            byte[] r2 = new byte[r2]
            org.jboss.netty.buffer.ChannelBuffer r4 = r13.decompressed
            r4.readBytes(r2)
            java.lang.String r4 = new java.lang.String
            java.lang.String r5 = "UTF-8"
            r4.<init>(r2, r5)
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r2 = r13.spdyHeaderBlock
            boolean r2 = r2.containsHeader(r4)
            if (r2 == 0) goto L_0x00d0
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            r0.setInvalid()
            goto L_0x0026
        L_0x00d0:
            boolean r2 = r13.ensureBytes(r0)
            if (r2 != 0) goto L_0x00e2
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.resetReaderIndex()
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.discardReadBytes()
            goto L_0x0026
        L_0x00e2:
            int r5 = r13.readLengthField()
            if (r5 >= 0) goto L_0x00ef
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            r0.setInvalid()
            goto L_0x0026
        L_0x00ef:
            if (r5 != 0) goto L_0x00fc
            int r2 = r13.version
            if (r2 >= r11) goto L_0x004a
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            r0.setInvalid()
            goto L_0x0026
        L_0x00fc:
            int r6 = r1 + r5
            int r1 = r13.maxHeaderSize
            if (r6 <= r1) goto L_0x011d
            org.jboss.netty.handler.codec.frame.TooLongFrameException r0 = new org.jboss.netty.handler.codec.frame.TooLongFrameException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Header block exceeds "
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r13.maxHeaderSize
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x011d:
            boolean r1 = r13.ensureBytes(r5)
            if (r1 != 0) goto L_0x012f
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.resetReaderIndex()
            org.jboss.netty.buffer.ChannelBuffer r0 = r13.decompressed
            r0.discardReadBytes()
            goto L_0x0026
        L_0x012f:
            byte[] r7 = new byte[r5]
            org.jboss.netty.buffer.ChannelBuffer r1 = r13.decompressed
            r1.readBytes(r7)
            r2 = r3
            r1 = r3
        L_0x0138:
            if (r1 >= r5) goto L_0x016e
        L_0x013a:
            int r8 = r7.length
            if (r1 >= r8) goto L_0x0144
            byte r8 = r7[r1]
            if (r8 == 0) goto L_0x0144
            int r1 = r1 + 1
            goto L_0x013a
        L_0x0144:
            int r8 = r7.length
            if (r1 >= r8) goto L_0x0154
            int r8 = r1 + 1
            byte r8 = r7[r8]
            if (r8 != 0) goto L_0x0154
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            r0.setInvalid()
            goto L_0x0026
        L_0x0154:
            java.lang.String r8 = new java.lang.String
            int r9 = r1 - r2
            java.lang.String r10 = "UTF-8"
            r8.<init>(r7, r2, r9, r10)
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r2 = r13.spdyHeaderBlock     // Catch:{ IllegalArgumentException -> 0x0166 }
            r2.addHeader(r4, r8)     // Catch:{ IllegalArgumentException -> 0x0166 }
            int r1 = r1 + 1
            r2 = r1
            goto L_0x0138
        L_0x0166:
            r0 = move-exception
            org.jboss.netty.handler.codec.spdy.SpdyHeaderBlock r0 = r13.spdyHeaderBlock
            r0.setInvalid()
            goto L_0x0026
        L_0x016e:
            int r1 = r13.numHeaders
            int r1 = r1 + -1
            r13.numHeaders = r1
            r13.headerSize = r6
            goto L_0x0059
        L_0x0178:
            r13.decompressed = r12
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.handler.codec.spdy.SpdyFrameDecoder.decodeHeaderBlock(org.jboss.netty.buffer.ChannelBuffer):void");
    }

    private boolean isValidControlFrameHeader() {
        boolean z = false;
        switch (this.type) {
            case 1:
                if (this.version < 3) {
                    if (this.length < 12) {
                        return false;
                    }
                    return true;
                } else if (this.length < 10) {
                    return false;
                } else {
                    return true;
                }
            case 2:
                if (this.version < 3) {
                    if (this.length < 8) {
                        return false;
                    }
                    return true;
                } else if (this.length < 4) {
                    return false;
                } else {
                    return true;
                }
            case 3:
                if (this.flags == 0 && this.length == 8) {
                    return true;
                }
                return false;
            case 4:
                if (this.length < 4) {
                    return false;
                }
                return true;
            case 5:
                if (this.length != 0) {
                    return false;
                }
                return true;
            case 6:
                if (this.length != 4) {
                    return false;
                }
                return true;
            case 7:
                if (this.version < 3) {
                    if (this.length != 4) {
                        return false;
                    }
                    return true;
                } else if (this.length != 8) {
                    return false;
                } else {
                    return true;
                }
            case 8:
                if (this.version < 3) {
                    if (this.length == 4 || this.length >= 8) {
                        z = true;
                    }
                    return z;
                } else if (this.length < 4) {
                    return false;
                } else {
                    return true;
                }
            case 9:
                return this.length == 8;
            default:
                return true;
        }
    }

    private boolean willGenerateControlFrame() {
        switch (this.type) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private void fireInvalidControlFrameException(ChannelHandlerContext channelHandlerContext) {
        String str = "Received invalid control frame";
        switch (this.type) {
            case 1:
                str = "Received invalid SYN_STREAM control frame";
                break;
            case 2:
                str = "Received invalid SYN_REPLY control frame";
                break;
            case 3:
                str = "Received invalid RST_STREAM control frame";
                break;
            case 4:
                str = "Received invalid SETTINGS control frame";
                break;
            case 5:
                str = "Received invalid NOOP control frame";
                break;
            case 6:
                str = "Received invalid PING control frame";
                break;
            case 7:
                str = "Received invalid GOAWAY control frame";
                break;
            case 8:
                str = "Received invalid HEADERS control frame";
                break;
            case 9:
                str = "Received invalid WINDOW_UPDATE control frame";
                break;
            case 10:
                str = "Received invalid CREDENTIAL control frame";
                break;
        }
        fireProtocolException(channelHandlerContext, str);
    }

    private static void fireProtocolException(ChannelHandlerContext channelHandlerContext, String str) {
        Channels.fireExceptionCaught(channelHandlerContext, (Throwable) new SpdyProtocolException(str));
    }
}
