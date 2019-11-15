package org.jboss.netty.handler.codec.http.websocketx;

import android.support.v4.media.session.PlaybackStateCompat;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.handler.codec.frame.CorruptedFrameException;
import org.jboss.netty.handler.codec.frame.TooLongFrameException;
import org.jboss.netty.handler.codec.replay.ReplayingDecoder;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class WebSocket08FrameDecoder extends ReplayingDecoder<State> {
    private static final byte OPCODE_BINARY = 2;
    private static final byte OPCODE_CLOSE = 8;
    private static final byte OPCODE_CONT = 0;
    private static final byte OPCODE_PING = 9;
    private static final byte OPCODE_PONG = 10;
    private static final byte OPCODE_TEXT = 1;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(WebSocket08FrameDecoder.class);
    private final boolean allowExtensions;
    private int fragmentedFramesCount;
    private UTF8Output fragmentedFramesText;
    private boolean frameFinalFlag;
    private int frameOpcode;
    private ChannelBuffer framePayload;
    private int framePayloadBytesRead;
    private long framePayloadLength;
    private int frameRsv;
    private final boolean maskedPayload;
    private ChannelBuffer maskingKey;
    private final long maxFramePayloadLength;
    private boolean receivedClosingHandshake;

    public enum State {
        FRAME_START,
        MASKING_KEY,
        PAYLOAD,
        CORRUPT
    }

    public WebSocket08FrameDecoder(boolean z, boolean z2) {
        this(z, z2, FileTracerConfig.FOREVER);
    }

    public WebSocket08FrameDecoder(boolean z, boolean z2, long j) {
        super(State.FRAME_START);
        this.maskedPayload = z;
        this.allowExtensions = z2;
        this.maxFramePayloadLength = j;
    }

    /* access modifiers changed from: protected */
    public Object decode(ChannelHandlerContext channelHandlerContext, Channel channel, ChannelBuffer channelBuffer, State state) throws Exception {
        ChannelBuffer channelBuffer2;
        boolean z;
        String str = null;
        if (this.receivedClosingHandshake) {
            channelBuffer.skipBytes(actualReadableBytes());
            return null;
        }
        switch (state) {
            case FRAME_START:
                this.framePayloadBytesRead = 0;
                this.framePayloadLength = -1;
                this.framePayload = null;
                byte readByte = channelBuffer.readByte();
                this.frameFinalFlag = (readByte & 128) != 0;
                this.frameRsv = (readByte & 112) >> 4;
                this.frameOpcode = readByte & 15;
                if (logger.isDebugEnabled()) {
                    logger.debug("Decoding WebSocket Frame opCode=" + this.frameOpcode);
                }
                byte readByte2 = channelBuffer.readByte();
                if ((readByte2 & 128) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                byte b = readByte2 & Byte.MAX_VALUE;
                if (this.frameRsv != 0 && !this.allowExtensions) {
                    protocolViolation(channel, "RSV != 0 and no extension negotiated, RSV:" + this.frameRsv);
                    return null;
                } else if (!this.maskedPayload || z) {
                    if (this.frameOpcode > 7) {
                        if (!this.frameFinalFlag) {
                            protocolViolation(channel, "fragmented control frame");
                            return null;
                        } else if (b > 125) {
                            protocolViolation(channel, "control frame with payload length > 125 octets");
                            return null;
                        } else if (this.frameOpcode != 8 && this.frameOpcode != 9 && this.frameOpcode != 10) {
                            protocolViolation(channel, "control frame using reserved opcode " + this.frameOpcode);
                            return null;
                        } else if (this.frameOpcode == 8 && b == 1) {
                            protocolViolation(channel, "received close control frame with payload len 1");
                            return null;
                        }
                    } else if (this.frameOpcode != 0 && this.frameOpcode != 1 && this.frameOpcode != 2) {
                        protocolViolation(channel, "data frame using reserved opcode " + this.frameOpcode);
                        return null;
                    } else if (this.fragmentedFramesCount == 0 && this.frameOpcode == 0) {
                        protocolViolation(channel, "received continuation data frame outside fragmented message");
                        return null;
                    } else if (!(this.fragmentedFramesCount == 0 || this.frameOpcode == 0 || this.frameOpcode == 9)) {
                        protocolViolation(channel, "received non-continuation data frame while inside fragmented message");
                        return null;
                    }
                    if (b == 126) {
                        this.framePayloadLength = (long) channelBuffer.readUnsignedShort();
                        if (this.framePayloadLength < 126) {
                            protocolViolation(channel, "invalid data frame length (not using minimal length encoding)");
                            return null;
                        }
                    } else if (b == Byte.MAX_VALUE) {
                        this.framePayloadLength = channelBuffer.readLong();
                        if (this.framePayloadLength < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                            protocolViolation(channel, "invalid data frame length (not using minimal length encoding)");
                            return null;
                        }
                    } else {
                        this.framePayloadLength = (long) b;
                    }
                    if (this.framePayloadLength <= this.maxFramePayloadLength) {
                        if (logger.isDebugEnabled()) {
                            logger.debug("Decoding WebSocket Frame length=" + this.framePayloadLength);
                        }
                        checkpoint(State.MASKING_KEY);
                        break;
                    } else {
                        protocolViolation(channel, "Max frame length of " + this.maxFramePayloadLength + " has been exceeded.");
                        return null;
                    }
                } else {
                    protocolViolation(channel, "unmasked client to server frame");
                    return null;
                }
                break;
            case MASKING_KEY:
                break;
            case PAYLOAD:
                break;
            case CORRUPT:
                channelBuffer.readByte();
                return null;
            default:
                throw new Error("Shouldn't reach here.");
        }
        if (this.maskedPayload) {
            this.maskingKey = channelBuffer.readBytes(4);
        }
        checkpoint(State.PAYLOAD);
        int actualReadableBytes = actualReadableBytes();
        long j = (long) (this.framePayloadBytesRead + actualReadableBytes);
        if (j == this.framePayloadLength) {
            channelBuffer2 = channelBuffer.readBytes(actualReadableBytes);
        } else if (j < this.framePayloadLength) {
            ChannelBuffer readBytes = channelBuffer.readBytes(actualReadableBytes);
            if (this.framePayload == null) {
                this.framePayload = channel.getConfig().getBufferFactory().getBuffer(toFrameLength(this.framePayloadLength));
            }
            this.framePayload.writeBytes(readBytes);
            this.framePayloadBytesRead = actualReadableBytes + this.framePayloadBytesRead;
            return null;
        } else if (j > this.framePayloadLength) {
            channelBuffer2 = channelBuffer.readBytes(toFrameLength(this.framePayloadLength - ((long) this.framePayloadBytesRead)));
        } else {
            channelBuffer2 = null;
        }
        checkpoint(State.FRAME_START);
        if (this.framePayload == null) {
            this.framePayload = channelBuffer2;
        } else {
            this.framePayload.writeBytes(channelBuffer2);
        }
        if (this.maskedPayload) {
            unmask(this.framePayload);
        }
        if (this.frameOpcode == 9) {
            return new PingWebSocketFrame(this.frameFinalFlag, this.frameRsv, this.framePayload);
        }
        if (this.frameOpcode == 10) {
            return new PongWebSocketFrame(this.frameFinalFlag, this.frameRsv, this.framePayload);
        }
        if (this.frameOpcode == 8) {
            checkCloseFrameBody(channel, this.framePayload);
            this.receivedClosingHandshake = true;
            return new CloseWebSocketFrame(this.frameFinalFlag, this.frameRsv, this.framePayload);
        }
        if (!this.frameFinalFlag) {
            if (this.fragmentedFramesCount == 0) {
                this.fragmentedFramesText = null;
                if (this.frameOpcode == 1) {
                    checkUTF8String(channel, this.framePayload.array());
                }
            } else if (this.fragmentedFramesText != null) {
                checkUTF8String(channel, this.framePayload.array());
            }
            this.fragmentedFramesCount++;
        } else if (this.frameOpcode != 9) {
            this.fragmentedFramesCount = 0;
            if (this.frameOpcode == 1 || this.fragmentedFramesText != null) {
                checkUTF8String(channel, this.framePayload.array());
                String uTF8Output = this.fragmentedFramesText.toString();
                this.fragmentedFramesText = null;
                str = uTF8Output;
            }
        }
        if (this.frameOpcode == 1) {
            return new TextWebSocketFrame(this.frameFinalFlag, this.frameRsv, this.framePayload);
        }
        if (this.frameOpcode == 2) {
            return new BinaryWebSocketFrame(this.frameFinalFlag, this.frameRsv, this.framePayload);
        }
        if (this.frameOpcode == 0) {
            return new ContinuationWebSocketFrame(this.frameFinalFlag, this.frameRsv, this.framePayload, str);
        }
        throw new UnsupportedOperationException("Cannot decode web socket frame with opcode: " + this.frameOpcode);
    }

    private void unmask(ChannelBuffer channelBuffer) {
        byte[] array = channelBuffer.array();
        for (int i = 0; i < array.length; i++) {
            channelBuffer.setByte(i, channelBuffer.getByte(i) ^ this.maskingKey.getByte(i % 4));
        }
    }

    private void protocolViolation(Channel channel, String str) throws CorruptedFrameException {
        checkpoint(State.CORRUPT);
        if (channel.isConnected()) {
            channel.write(ChannelBuffers.EMPTY_BUFFER).addListener(ChannelFutureListener.CLOSE);
        }
        throw new CorruptedFrameException(str);
    }

    private static int toFrameLength(long j) throws TooLongFrameException {
        if (j <= 2147483647L) {
            return (int) j;
        }
        throw new TooLongFrameException("Length:" + j);
    }

    private void checkUTF8String(Channel channel, byte[] bArr) throws CorruptedFrameException {
        try {
            if (this.fragmentedFramesText == null) {
                this.fragmentedFramesText = new UTF8Output(bArr);
            } else {
                this.fragmentedFramesText.write(bArr);
            }
        } catch (UTF8Exception e) {
            protocolViolation(channel, "invalid UTF-8 bytes");
        }
    }

    /* access modifiers changed from: protected */
    public void checkCloseFrameBody(Channel channel, ChannelBuffer channelBuffer) throws CorruptedFrameException {
        if (channelBuffer != null && channelBuffer.capacity() != 0) {
            if (channelBuffer.capacity() == 1) {
                protocolViolation(channel, "Invalid close frame body");
            }
            int readerIndex = channelBuffer.readerIndex();
            channelBuffer.readerIndex(0);
            short readShort = channelBuffer.readShort();
            if ((readShort >= 0 && readShort <= 999) || ((readShort >= 1004 && readShort <= 1006) || (readShort >= 1012 && readShort <= 2999))) {
                protocolViolation(channel, "Invalid close frame status code: " + readShort);
            }
            if (channelBuffer.readableBytes() > 0) {
                byte[] bArr = new byte[channelBuffer.readableBytes()];
                channelBuffer.readBytes(bArr);
                try {
                    new UTF8Output(bArr);
                } catch (UTF8Exception e) {
                    protocolViolation(channel, "Invalid close frame reason text. Invalid UTF-8 bytes");
                }
            }
            channelBuffer.readerIndex(readerIndex);
        }
    }
}
