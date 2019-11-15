package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.UnsupportedEncodingException;
import java.util.Collection;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

final class DecodedBitStreamParser {
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'M', 'N', 'O', 'P', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'S', 'T', Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO};
    private static final char[] C40_SHIFT2_SET_CHARS = {'!', '\"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', Http.PROTOCOL_HOST_SPLITTER, Http.PROTOCOL_PORT_SPLITTER, ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_'};
    private static final char[] TEXT_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    private static final char[] TEXT_SHIFT2_SET_CHARS = C40_SHIFT2_SET_CHARS;
    private static final char[] TEXT_SHIFT3_SET_CHARS = {'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', Matrix.MATRIX_TYPE_RANDOM_LT, 'M', 'N', 'O', 'P', 'Q', Matrix.MATRIX_TYPE_RANDOM_REGULAR, 'S', 'T', Matrix.MATRIX_TYPE_RANDOM_UT, 'V', 'W', 'X', 'Y', Matrix.MATRIX_TYPE_ZERO, '{', '|', '}', '~', 127};

    private enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE
    }

    private DecodedBitStreamParser() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0033  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x006d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.google.zxing.common.DecoderResult decode(byte[] r7) throws com.google.zxing.FormatException {
        /*
            r1 = 0
            com.google.zxing.common.BitSource r3 = new com.google.zxing.common.BitSource
            r3.<init>(r7)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r0 = 100
            r4.<init>(r0)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r0 = 0
            r5.<init>(r0)
            java.util.ArrayList r2 = new java.util.ArrayList
            r0 = 1
            r2.<init>(r0)
            com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$Mode r0 = com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.Mode.ASCII_ENCODE
        L_0x001b:
            com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$Mode r6 = com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.Mode.ASCII_ENCODE
            if (r0 != r6) goto L_0x0047
            com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$Mode r0 = decodeAsciiSegment(r3, r4, r5)
        L_0x0023:
            com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$Mode r6 = com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.Mode.PAD_ENCODE
            if (r0 == r6) goto L_0x002d
            int r6 = r3.available()
            if (r6 > 0) goto L_0x001b
        L_0x002d:
            int r0 = r5.length()
            if (r0 <= 0) goto L_0x0036
            r4.append(r5)
        L_0x0036:
            com.google.zxing.common.DecoderResult r3 = new com.google.zxing.common.DecoderResult
            java.lang.String r4 = r4.toString()
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto L_0x006d
            r0 = r1
        L_0x0043:
            r3.<init>(r7, r4, r0, r1)
            return r3
        L_0x0047:
            int[] r6 = com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode
            int r0 = r0.ordinal()
            r0 = r6[r0]
            switch(r0) {
                case 1: goto L_0x0057;
                case 2: goto L_0x005d;
                case 3: goto L_0x0061;
                case 4: goto L_0x0065;
                case 5: goto L_0x0069;
                default: goto L_0x0052;
            }
        L_0x0052:
            com.google.zxing.FormatException r0 = com.google.zxing.FormatException.getFormatInstance()
            throw r0
        L_0x0057:
            decodeC40Segment(r3, r4)
        L_0x005a:
            com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$Mode r0 = com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.Mode.ASCII_ENCODE
            goto L_0x0023
        L_0x005d:
            decodeTextSegment(r3, r4)
            goto L_0x005a
        L_0x0061:
            decodeAnsiX12Segment(r3, r4)
            goto L_0x005a
        L_0x0065:
            decodeEdifactSegment(r3, r4)
            goto L_0x005a
        L_0x0069:
            decodeBase256Segment(r3, r4, r2)
            goto L_0x005a
        L_0x006d:
            r0 = r2
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser.decode(byte[]):com.google.zxing.common.DecoderResult");
    }

    private static Mode decodeAsciiSegment(BitSource bitSource, StringBuilder sb, StringBuilder sb2) throws FormatException {
        int i;
        boolean z = false;
        do {
            int readBits = bitSource.readBits(8);
            if (readBits == 0) {
                throw FormatException.getFormatInstance();
            } else if (readBits <= 128) {
                if (z) {
                    i = readBits + 128;
                } else {
                    i = readBits;
                }
                sb.append((char) (i - 1));
                return Mode.ASCII_ENCODE;
            } else if (readBits == 129) {
                return Mode.PAD_ENCODE;
            } else {
                if (readBits <= 229) {
                    int i2 = readBits - 130;
                    if (i2 < 10) {
                        sb.append('0');
                    }
                    sb.append(i2);
                } else {
                    switch (readBits) {
                        case 230:
                            return Mode.C40_ENCODE;
                        case 231:
                            return Mode.BASE256_ENCODE;
                        case 232:
                            sb.append(29);
                            break;
                        case 233:
                        case 234:
                        case 241:
                            break;
                        case 235:
                            z = true;
                            break;
                        case 236:
                            sb.append("[)>\u001e05\u001d");
                            sb2.insert(0, "\u001e\u0004");
                            break;
                        case 237:
                            sb.append("[)>\u001e06\u001d");
                            sb2.insert(0, "\u001e\u0004");
                            break;
                        case 238:
                            return Mode.ANSIX12_ENCODE;
                        case 239:
                            return Mode.TEXT_ENCODE;
                        case 240:
                            return Mode.EDIFACT_ENCODE;
                        default:
                            if (readBits >= 242 && !(readBits == 254 && bitSource.available() == 0)) {
                                throw FormatException.getFormatInstance();
                            }
                    }
                }
            }
        } while (bitSource.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeC40Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int[] iArr = new int[3];
        int i = 0;
        boolean z = false;
        while (bitSource.available() != 8) {
            int readBits = bitSource.readBits(8);
            if (readBits != 254) {
                parseTwoBytes(readBits, bitSource.readBits(8), iArr);
                for (int i2 = 0; i2 < 3; i2++) {
                    int i3 = iArr[i2];
                    switch (i) {
                        case 0:
                            if (i3 < 3) {
                                i = i3 + 1;
                                break;
                            } else if (i3 < C40_BASIC_SET_CHARS.length) {
                                char c = C40_BASIC_SET_CHARS[i3];
                                if (!z) {
                                    sb.append(c);
                                    break;
                                } else {
                                    sb.append((char) (c + 128));
                                    z = false;
                                    break;
                                }
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        case 1:
                            if (z) {
                                sb.append((char) (i3 + 128));
                                z = false;
                            } else {
                                sb.append((char) i3);
                            }
                            i = 0;
                            break;
                        case 2:
                            if (i3 < C40_SHIFT2_SET_CHARS.length) {
                                char c2 = C40_SHIFT2_SET_CHARS[i3];
                                if (z) {
                                    sb.append((char) (c2 + 128));
                                    z = false;
                                } else {
                                    sb.append(c2);
                                }
                            } else {
                                switch (i3) {
                                    case 27:
                                        sb.append(29);
                                        break;
                                    case 30:
                                        z = true;
                                        break;
                                    default:
                                        throw FormatException.getFormatInstance();
                                }
                            }
                            i = 0;
                            break;
                        case 3:
                            if (z) {
                                sb.append((char) (i3 + 224));
                                z = false;
                            } else {
                                sb.append((char) (i3 + 96));
                            }
                            i = 0;
                            break;
                        default:
                            throw FormatException.getFormatInstance();
                    }
                }
                if (bitSource.available() <= 0) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static void decodeTextSegment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int[] iArr = new int[3];
        int i = 0;
        boolean z = false;
        while (bitSource.available() != 8) {
            int readBits = bitSource.readBits(8);
            if (readBits != 254) {
                parseTwoBytes(readBits, bitSource.readBits(8), iArr);
                for (int i2 = 0; i2 < 3; i2++) {
                    int i3 = iArr[i2];
                    switch (i) {
                        case 0:
                            if (i3 < 3) {
                                i = i3 + 1;
                                break;
                            } else if (i3 < TEXT_BASIC_SET_CHARS.length) {
                                char c = TEXT_BASIC_SET_CHARS[i3];
                                if (!z) {
                                    sb.append(c);
                                    break;
                                } else {
                                    sb.append((char) (c + 128));
                                    z = false;
                                    break;
                                }
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        case 1:
                            if (z) {
                                sb.append((char) (i3 + 128));
                                z = false;
                            } else {
                                sb.append((char) i3);
                            }
                            i = 0;
                            break;
                        case 2:
                            if (i3 < TEXT_SHIFT2_SET_CHARS.length) {
                                char c2 = TEXT_SHIFT2_SET_CHARS[i3];
                                if (z) {
                                    sb.append((char) (c2 + 128));
                                    z = false;
                                } else {
                                    sb.append(c2);
                                }
                            } else {
                                switch (i3) {
                                    case 27:
                                        sb.append(29);
                                        break;
                                    case 30:
                                        z = true;
                                        break;
                                    default:
                                        throw FormatException.getFormatInstance();
                                }
                            }
                            i = 0;
                            break;
                        case 3:
                            if (i3 < TEXT_SHIFT3_SET_CHARS.length) {
                                char c3 = TEXT_SHIFT3_SET_CHARS[i3];
                                if (z) {
                                    sb.append((char) (c3 + 128));
                                    z = false;
                                } else {
                                    sb.append(c3);
                                }
                                i = 0;
                                break;
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                        default:
                            throw FormatException.getFormatInstance();
                    }
                }
                if (bitSource.available() <= 0) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static void decodeAnsiX12Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int[] iArr = new int[3];
        while (bitSource.available() != 8) {
            int readBits = bitSource.readBits(8);
            if (readBits != 254) {
                parseTwoBytes(readBits, bitSource.readBits(8), iArr);
                for (int i = 0; i < 3; i++) {
                    int i2 = iArr[i];
                    switch (i2) {
                        case 0:
                            sb.append(13);
                            break;
                        case 1:
                            sb.append('*');
                            break;
                        case 2:
                            sb.append('>');
                            break;
                        case 3:
                            sb.append(' ');
                            break;
                        default:
                            if (i2 < 14) {
                                sb.append((char) (i2 + 44));
                                break;
                            } else if (i2 < 40) {
                                sb.append((char) (i2 + 51));
                                break;
                            } else {
                                throw FormatException.getFormatInstance();
                            }
                    }
                }
                if (bitSource.available() <= 0) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private static void parseTwoBytes(int i, int i2, int[] iArr) {
        int i3 = ((i << 8) + i2) - 1;
        int i4 = i3 / 1600;
        iArr[0] = i4;
        int i5 = i3 - (i4 * 1600);
        int i6 = i5 / 40;
        iArr[1] = i6;
        iArr[2] = i5 - (i6 * 40);
    }

    private static void decodeEdifactSegment(BitSource bitSource, StringBuilder sb) {
        while (bitSource.available() > 16) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < 4) {
                    int readBits = bitSource.readBits(6);
                    if (readBits == 31) {
                        int bitOffset = 8 - bitSource.getBitOffset();
                        if (bitOffset != 8) {
                            bitSource.readBits(bitOffset);
                            return;
                        }
                        return;
                    }
                    if ((readBits & 32) == 0) {
                        readBits |= 64;
                    }
                    sb.append((char) readBits);
                    i = i2 + 1;
                } else if (bitSource.available() <= 0) {
                    return;
                }
            }
        }
    }

    private static void decodeBase256Segment(BitSource bitSource, StringBuilder sb, Collection<byte[]> collection) throws FormatException {
        int unrandomize255State;
        int byteOffset = bitSource.getByteOffset() + 1;
        int i = byteOffset + 1;
        int unrandomize255State2 = unrandomize255State(bitSource.readBits(8), byteOffset);
        if (unrandomize255State2 == 0) {
            unrandomize255State = bitSource.available() / 8;
        } else if (unrandomize255State2 < 250) {
            unrandomize255State = unrandomize255State2;
        } else {
            unrandomize255State = ((unrandomize255State2 - 249) * 250) + unrandomize255State(bitSource.readBits(8), i);
            i++;
        }
        if (unrandomize255State < 0) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[unrandomize255State];
        int i2 = 0;
        while (i2 < unrandomize255State) {
            if (bitSource.available() < 8) {
                throw FormatException.getFormatInstance();
            }
            int i3 = i + 1;
            bArr[i2] = (byte) unrandomize255State(bitSource.readBits(8), i);
            i2++;
            i = i3;
        }
        collection.add(bArr);
        try {
            sb.append(new String(bArr, "ISO8859_1"));
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException("Platform does not support required encoding: " + e);
        }
    }

    private static int unrandomize255State(int i, int i2) {
        int i3 = i - (((i2 * CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA) % 255) + 1);
        return i3 >= 0 ? i3 : i3 + 256;
    }
}
