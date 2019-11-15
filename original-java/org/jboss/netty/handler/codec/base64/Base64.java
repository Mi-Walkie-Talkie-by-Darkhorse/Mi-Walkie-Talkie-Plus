package org.jboss.netty.handler.codec.base64;

import java.nio.ByteOrder;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferFactory;
import org.jboss.netty.buffer.HeapChannelBufferFactory;

public final class Base64 {
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    private static final byte WHITE_SPACE_ENC = -5;

    private static byte[] alphabet(Base64Dialect base64Dialect) {
        if (base64Dialect != null) {
            return base64Dialect.alphabet;
        }
        throw new NullPointerException("dialect");
    }

    private static byte[] decodabet(Base64Dialect base64Dialect) {
        if (base64Dialect != null) {
            return base64Dialect.decodabet;
        }
        throw new NullPointerException("dialect");
    }

    private static boolean breakLines(Base64Dialect base64Dialect) {
        if (base64Dialect != null) {
            return base64Dialect.breakLinesByDefault;
        }
        throw new NullPointerException("dialect");
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer) {
        return encode(channelBuffer, Base64Dialect.STANDARD);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, Base64Dialect base64Dialect) {
        return encode(channelBuffer, breakLines(base64Dialect), base64Dialect);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, ChannelBufferFactory channelBufferFactory) {
        return encode(channelBuffer, Base64Dialect.STANDARD, channelBufferFactory);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, Base64Dialect base64Dialect, ChannelBufferFactory channelBufferFactory) {
        return encode(channelBuffer, breakLines(base64Dialect), base64Dialect, channelBufferFactory);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, boolean z) {
        return encode(channelBuffer, z, Base64Dialect.STANDARD);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, boolean z, Base64Dialect base64Dialect) {
        return encode(channelBuffer, z, base64Dialect, HeapChannelBufferFactory.getInstance());
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, boolean z, ChannelBufferFactory channelBufferFactory) {
        return encode(channelBuffer, z, Base64Dialect.STANDARD, channelBufferFactory);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, boolean z, Base64Dialect base64Dialect, ChannelBufferFactory channelBufferFactory) {
        if (channelBuffer == null) {
            throw new NullPointerException("src");
        }
        ChannelBuffer encode = encode(channelBuffer, channelBuffer.readerIndex(), channelBuffer.readableBytes(), z, base64Dialect, channelBufferFactory);
        channelBuffer.readerIndex(channelBuffer.writerIndex());
        return encode;
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2) {
        return encode(channelBuffer, i, i2, Base64Dialect.STANDARD);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2, Base64Dialect base64Dialect) {
        return encode(channelBuffer, i, i2, breakLines(base64Dialect), base64Dialect);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2, ChannelBufferFactory channelBufferFactory) {
        return encode(channelBuffer, i, i2, Base64Dialect.STANDARD, channelBufferFactory);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2, Base64Dialect base64Dialect, ChannelBufferFactory channelBufferFactory) {
        return encode(channelBuffer, i, i2, breakLines(base64Dialect), base64Dialect, channelBufferFactory);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2, boolean z) {
        return encode(channelBuffer, i, i2, z, Base64Dialect.STANDARD);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2, boolean z, Base64Dialect base64Dialect) {
        return encode(channelBuffer, i, i2, z, base64Dialect, HeapChannelBufferFactory.getInstance());
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2, boolean z, ChannelBufferFactory channelBufferFactory) {
        return encode(channelBuffer, i, i2, z, Base64Dialect.STANDARD, channelBufferFactory);
    }

    public static ChannelBuffer encode(ChannelBuffer channelBuffer, int i, int i2, boolean z, Base64Dialect base64Dialect, ChannelBufferFactory channelBufferFactory) {
        int i3;
        if (channelBuffer == null) {
            throw new NullPointerException("src");
        } else if (base64Dialect == null) {
            throw new NullPointerException("dialect");
        } else if (channelBufferFactory == null) {
            throw new NullPointerException("bufferFactory");
        } else {
            int i4 = (i2 * 4) / 3;
            ByteOrder order = channelBuffer.order();
            int i5 = i4 + (i2 % 3 > 0 ? 4 : 0);
            if (z) {
                i3 = i4 / 76;
            } else {
                i3 = 0;
            }
            ChannelBuffer buffer = channelBufferFactory.getBuffer(order, i3 + i5);
            int i6 = i2 - 2;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i9 < i6) {
                encode3to4(channelBuffer, i9 + i, 3, buffer, i8, base64Dialect);
                int i10 = i7 + 4;
                if (z && i10 == 76) {
                    buffer.setByte(i8 + 4, 10);
                    i8++;
                    i10 = 0;
                }
                i8 += 4;
                i7 = i10;
                i9 += 3;
            }
            if (i9 < i2) {
                encode3to4(channelBuffer, i9 + i, i2 - i9, buffer, i8, base64Dialect);
                i8 += 4;
            }
            return buffer.slice(0, i8);
        }
    }

    private static void encode3to4(ChannelBuffer channelBuffer, int i, int i2, ChannelBuffer channelBuffer2, int i3, Base64Dialect base64Dialect) {
        int i4 = 0;
        byte[] alphabet = alphabet(base64Dialect);
        int i5 = (i2 > 1 ? (channelBuffer.getByte(i + 1) << 24) >>> 16 : 0) | (i2 > 0 ? (channelBuffer.getByte(i) << 24) >>> 8 : 0);
        if (i2 > 2) {
            i4 = (channelBuffer.getByte(i + 2) << 24) >>> 24;
        }
        int i6 = i4 | i5;
        switch (i2) {
            case 1:
                channelBuffer2.setByte(i3, alphabet[i6 >>> 18]);
                channelBuffer2.setByte(i3 + 1, alphabet[(i6 >>> 12) & 63]);
                channelBuffer2.setByte(i3 + 2, 61);
                channelBuffer2.setByte(i3 + 3, 61);
                return;
            case 2:
                channelBuffer2.setByte(i3, alphabet[i6 >>> 18]);
                channelBuffer2.setByte(i3 + 1, alphabet[(i6 >>> 12) & 63]);
                channelBuffer2.setByte(i3 + 2, alphabet[(i6 >>> 6) & 63]);
                channelBuffer2.setByte(i3 + 3, 61);
                return;
            case 3:
                channelBuffer2.setByte(i3, alphabet[i6 >>> 18]);
                channelBuffer2.setByte(i3 + 1, alphabet[(i6 >>> 12) & 63]);
                channelBuffer2.setByte(i3 + 2, alphabet[(i6 >>> 6) & 63]);
                channelBuffer2.setByte(i3 + 3, alphabet[i6 & 63]);
                return;
            default:
                return;
        }
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer) {
        return decode(channelBuffer, Base64Dialect.STANDARD);
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer, Base64Dialect base64Dialect) {
        return decode(channelBuffer, base64Dialect, HeapChannelBufferFactory.getInstance());
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer, ChannelBufferFactory channelBufferFactory) {
        return decode(channelBuffer, Base64Dialect.STANDARD, channelBufferFactory);
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer, Base64Dialect base64Dialect, ChannelBufferFactory channelBufferFactory) {
        if (channelBuffer == null) {
            throw new NullPointerException("src");
        }
        ChannelBuffer decode = decode(channelBuffer, channelBuffer.readerIndex(), channelBuffer.readableBytes(), base64Dialect, channelBufferFactory);
        channelBuffer.readerIndex(channelBuffer.writerIndex());
        return decode;
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer, int i, int i2) {
        return decode(channelBuffer, i, i2, Base64Dialect.STANDARD);
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer, int i, int i2, Base64Dialect base64Dialect) {
        return decode(channelBuffer, i, i2, base64Dialect, HeapChannelBufferFactory.getInstance());
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer, int i, int i2, ChannelBufferFactory channelBufferFactory) {
        return decode(channelBuffer, i, i2, Base64Dialect.STANDARD, channelBufferFactory);
    }

    public static ChannelBuffer decode(ChannelBuffer channelBuffer, int i, int i2, Base64Dialect base64Dialect, ChannelBufferFactory channelBufferFactory) {
        int i3;
        int i4;
        int i5;
        if (channelBuffer == null) {
            throw new NullPointerException("src");
        } else if (base64Dialect == null) {
            throw new NullPointerException("dialect");
        } else if (channelBufferFactory == null) {
            throw new NullPointerException("bufferFactory");
        } else {
            byte[] decodabet = decodabet(base64Dialect);
            ChannelBuffer buffer = channelBufferFactory.getBuffer(channelBuffer.order(), (i2 * 3) / 4);
            byte[] bArr = new byte[4];
            int i6 = i;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i6 >= i + i2) {
                    i3 = i8;
                    break;
                }
                byte b = (byte) (channelBuffer.getByte(i6) & Byte.MAX_VALUE);
                byte b2 = decodabet[b];
                if (b2 >= -5) {
                    if (b2 >= -1) {
                        i4 = i7 + 1;
                        bArr[i7] = b;
                        if (i4 > 3) {
                            i3 = decode4to3(bArr, 0, buffer, i8, base64Dialect) + i8;
                            if (b == 61) {
                                break;
                            }
                            i5 = i3;
                            i4 = 0;
                        } else {
                            i5 = i8;
                        }
                    } else {
                        i4 = i7;
                        i5 = i8;
                    }
                    i6++;
                    i8 = i5;
                    i7 = i4;
                } else {
                    throw new IllegalArgumentException("bad Base64 input character at " + i6 + ": " + channelBuffer.getUnsignedByte(i6) + " (decimal)");
                }
            }
            return buffer.slice(0, i3);
        }
    }

    private static int decode4to3(byte[] bArr, int i, ChannelBuffer channelBuffer, int i2, Base64Dialect base64Dialect) {
        byte[] decodabet = decodabet(base64Dialect);
        if (bArr[i + 2] == 61) {
            channelBuffer.setByte(i2, (byte) ((((decodabet[bArr[i + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i]] & EQUALS_SIGN_ENC) << 18)) >>> 16));
            return 1;
        } else if (bArr[i + 3] == 61) {
            int i3 = ((decodabet[bArr[i + 2]] & EQUALS_SIGN_ENC) << 6) | ((decodabet[bArr[i]] & EQUALS_SIGN_ENC) << 18) | ((decodabet[bArr[i + 1]] & EQUALS_SIGN_ENC) << 12);
            channelBuffer.setByte(i2, (byte) (i3 >>> 16));
            channelBuffer.setByte(i2 + 1, (byte) (i3 >>> 8));
            return 2;
        } else {
            try {
                byte b = (decodabet[bArr[i + 3]] & EQUALS_SIGN_ENC) | ((decodabet[bArr[i]] & EQUALS_SIGN_ENC) << 18) | ((decodabet[bArr[i + 1]] & EQUALS_SIGN_ENC) << 12) | ((decodabet[bArr[i + 2]] & EQUALS_SIGN_ENC) << 6);
                channelBuffer.setByte(i2, (byte) (b >> Tnaf.POW_2_WIDTH));
                channelBuffer.setByte(i2 + 1, (byte) (b >> 8));
                channelBuffer.setByte(i2 + 2, (byte) b);
                return 3;
            } catch (IndexOutOfBoundsException e) {
                throw new IllegalArgumentException("not encoded in Base64");
            }
        }
    }

    private Base64() {
    }
}
