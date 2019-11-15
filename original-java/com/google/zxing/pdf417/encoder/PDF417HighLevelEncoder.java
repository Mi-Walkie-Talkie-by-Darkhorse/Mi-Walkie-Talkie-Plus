package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.jboss.netty.handler.codec.http.HttpConstants;

final class PDF417HighLevelEncoder {
    private static final int BYTE_COMPACTION = 1;
    private static final Charset DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED = new byte[128];
    private static final int NUMERIC_COMPACTION = 2;
    private static final byte[] PUNCTUATION = new byte[128];
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, HttpConstants.CR, 9, HttpConstants.COMMA, HttpConstants.COLON, 35, 45, 46, 36, 47, 43, 37, 42, HttpConstants.EQUALS, 94, 0, HttpConstants.SP, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {HttpConstants.SEMICOLON, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, HttpConstants.CR, 9, HttpConstants.COMMA, HttpConstants.COLON, 10, 45, 46, 36, 47, HttpConstants.DOUBLE_QUOTE, 124, 42, 40, 41, 63, 123, 125, 39, 0};

    static {
        Arrays.fill(MIXED, -1);
        for (int i = 0; i < TEXT_MIXED_RAW.length; i++) {
            byte b = TEXT_MIXED_RAW[i];
            if (b > 0) {
                MIXED[b] = (byte) i;
            }
        }
        Arrays.fill(PUNCTUATION, -1);
        for (int i2 = 0; i2 < TEXT_PUNCTUATION_RAW.length; i2++) {
            byte b2 = TEXT_PUNCTUATION_RAW[i2];
            if (b2 > 0) {
                PUNCTUATION[b2] = (byte) i2;
            }
        }
    }

    private PDF417HighLevelEncoder() {
    }

    static String encodeHighLevel(String str, Compaction compaction, Charset charset) throws WriterException {
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = DEFAULT_ENCODING;
        } else if (!DEFAULT_ENCODING.equals(charset)) {
            CharacterSetECI characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(charset.name());
            if (characterSetECIByName != null) {
                encodingECI(characterSetECIByName.getValue(), sb);
            }
        }
        int length = str.length();
        switch (compaction) {
            case TEXT:
                encodeText(str, 0, length, sb, 0);
                break;
            case BYTE:
                byte[] bytes = str.getBytes(charset);
                encodeBinary(bytes, 0, bytes.length, 1, sb);
                break;
            case NUMERIC:
                sb.append(902);
                encodeNumeric(str, 0, length, sb);
                break;
            default:
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                while (i3 < length) {
                    int determineConsecutiveDigitCount = determineConsecutiveDigitCount(str, i3);
                    if (determineConsecutiveDigitCount >= 13) {
                        sb.append(902);
                        i = 2;
                        encodeNumeric(str, i3, determineConsecutiveDigitCount, sb);
                        i3 += determineConsecutiveDigitCount;
                        i2 = 0;
                    } else {
                        int determineConsecutiveTextCount = determineConsecutiveTextCount(str, i3);
                        if (determineConsecutiveTextCount >= 5 || determineConsecutiveDigitCount == length) {
                            if (i != 0) {
                                sb.append(900);
                                i = 0;
                                i2 = 0;
                            }
                            i2 = encodeText(str, i3, determineConsecutiveTextCount, sb, i2);
                            i3 += determineConsecutiveTextCount;
                        } else {
                            int determineConsecutiveBinaryCount = determineConsecutiveBinaryCount(str, i3, charset);
                            if (determineConsecutiveBinaryCount == 0) {
                                determineConsecutiveBinaryCount = 1;
                            }
                            byte[] bytes2 = str.substring(i3, i3 + determineConsecutiveBinaryCount).getBytes(charset);
                            if (bytes2.length == 1 && i == 0) {
                                encodeBinary(bytes2, 0, 1, 0, sb);
                            } else {
                                encodeBinary(bytes2, 0, bytes2.length, i, sb);
                                i = 1;
                                i2 = 0;
                            }
                            i3 = determineConsecutiveBinaryCount + i3;
                        }
                    }
                }
                break;
        }
        return sb.toString();
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int encodeText(java.lang.CharSequence r9, int r10, int r11, java.lang.StringBuilder r12, int r13) {
        /*
            r8 = 28
            r7 = 27
            r2 = 1
            r6 = 29
            r1 = 0
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r11)
            r0 = r1
        L_0x000e:
            int r3 = r10 + r0
            char r3 = r9.charAt(r3)
            switch(r13) {
                case 0: goto L_0x0047;
                case 1: goto L_0x0080;
                case 2: goto L_0x00c1;
                default: goto L_0x0017;
            }
        L_0x0017:
            boolean r4 = isPunctuation(r3)
            if (r4 == 0) goto L_0x0112
            byte[] r4 = PUNCTUATION
            byte r3 = r4[r3]
            char r3 = (char) r3
            r5.append(r3)
        L_0x0025:
            int r0 = r0 + 1
            if (r0 < r11) goto L_0x000e
            int r6 = r5.length()
            r3 = r1
            r4 = r1
        L_0x002f:
            if (r3 >= r6) goto L_0x0121
            int r0 = r3 % 2
            if (r0 == 0) goto L_0x0118
            r0 = r2
        L_0x0036:
            if (r0 == 0) goto L_0x011b
            int r0 = r4 * 30
            char r4 = r5.charAt(r3)
            int r0 = r0 + r4
            char r0 = (char) r0
            r12.append(r0)
        L_0x0043:
            int r3 = r3 + 1
            r4 = r0
            goto L_0x002f
        L_0x0047:
            boolean r4 = isAlphaUpper(r3)
            if (r4 == 0) goto L_0x005e
            r4 = 32
            if (r3 != r4) goto L_0x0057
            r3 = 26
            r5.append(r3)
            goto L_0x0025
        L_0x0057:
            int r3 = r3 + -65
            char r3 = (char) r3
            r5.append(r3)
            goto L_0x0025
        L_0x005e:
            boolean r4 = isAlphaLower(r3)
            if (r4 == 0) goto L_0x0069
            r5.append(r7)
            r13 = r2
            goto L_0x000e
        L_0x0069:
            boolean r4 = isMixed(r3)
            if (r4 == 0) goto L_0x0074
            r13 = 2
            r5.append(r8)
            goto L_0x000e
        L_0x0074:
            r5.append(r6)
            byte[] r4 = PUNCTUATION
            byte r3 = r4[r3]
            char r3 = (char) r3
            r5.append(r3)
            goto L_0x0025
        L_0x0080:
            boolean r4 = isAlphaLower(r3)
            if (r4 == 0) goto L_0x0097
            r4 = 32
            if (r3 != r4) goto L_0x0090
            r3 = 26
            r5.append(r3)
            goto L_0x0025
        L_0x0090:
            int r3 = r3 + -97
            char r3 = (char) r3
            r5.append(r3)
            goto L_0x0025
        L_0x0097:
            boolean r4 = isAlphaUpper(r3)
            if (r4 == 0) goto L_0x00a8
            r5.append(r7)
            int r3 = r3 + -65
            char r3 = (char) r3
            r5.append(r3)
            goto L_0x0025
        L_0x00a8:
            boolean r4 = isMixed(r3)
            if (r4 == 0) goto L_0x00b4
            r13 = 2
            r5.append(r8)
            goto L_0x000e
        L_0x00b4:
            r5.append(r6)
            byte[] r4 = PUNCTUATION
            byte r3 = r4[r3]
            char r3 = (char) r3
            r5.append(r3)
            goto L_0x0025
        L_0x00c1:
            boolean r4 = isMixed(r3)
            if (r4 == 0) goto L_0x00d1
            byte[] r4 = MIXED
            byte r3 = r4[r3]
            char r3 = (char) r3
            r5.append(r3)
            goto L_0x0025
        L_0x00d1:
            boolean r4 = isAlphaUpper(r3)
            if (r4 == 0) goto L_0x00dd
            r5.append(r8)
            r13 = r1
            goto L_0x000e
        L_0x00dd:
            boolean r4 = isAlphaLower(r3)
            if (r4 == 0) goto L_0x00e9
            r5.append(r7)
            r13 = r2
            goto L_0x000e
        L_0x00e9:
            int r4 = r10 + r0
            int r4 = r4 + 1
            if (r4 >= r11) goto L_0x0105
            int r4 = r10 + r0
            int r4 = r4 + 1
            char r4 = r9.charAt(r4)
            boolean r4 = isPunctuation(r4)
            if (r4 == 0) goto L_0x0105
            r13 = 3
            r3 = 25
            r5.append(r3)
            goto L_0x000e
        L_0x0105:
            r5.append(r6)
            byte[] r4 = PUNCTUATION
            byte r3 = r4[r3]
            char r3 = (char) r3
            r5.append(r3)
            goto L_0x0025
        L_0x0112:
            r5.append(r6)
            r13 = r1
            goto L_0x000e
        L_0x0118:
            r0 = r1
            goto L_0x0036
        L_0x011b:
            char r0 = r5.charAt(r3)
            goto L_0x0043
        L_0x0121:
            int r0 = r6 % 2
            if (r0 == 0) goto L_0x012d
            int r0 = r4 * 30
            int r0 = r0 + 29
            char r0 = (char) r0
            r12.append(r0)
        L_0x012d:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.encodeText(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    private static void encodeBinary(byte[] bArr, int i, int i2, int i3, StringBuilder sb) {
        int i4;
        if (i2 == 1 && i3 == 0) {
            sb.append(913);
        } else if (i2 % 6 == 0) {
            sb.append(924);
        } else {
            sb.append(901);
        }
        if (i2 >= 6) {
            char[] cArr = new char[5];
            i4 = i;
            while ((i + i2) - i4 >= 6) {
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + ((long) (bArr[i4 + i5] & 255));
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) ((int) (j % 900));
                    j /= 900;
                }
                for (int i7 = 4; i7 >= 0; i7--) {
                    sb.append(cArr[i7]);
                }
                i4 += 6;
            }
        } else {
            i4 = i;
        }
        while (i4 < i + i2) {
            sb.append((char) (bArr[i4] & 255));
            i4++;
        }
    }

    private static void encodeNumeric(String str, int i, int i2, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger valueOf = BigInteger.valueOf(900);
        BigInteger valueOf2 = BigInteger.valueOf(0);
        int i3 = 0;
        while (i3 < i2) {
            sb2.setLength(0);
            int min = Math.min(44, i2 - i3);
            BigInteger bigInteger = new BigInteger("1" + str.substring(i + i3, i + i3 + min));
            do {
                sb2.append((char) bigInteger.mod(valueOf).intValue());
                bigInteger = bigInteger.divide(valueOf);
            } while (!bigInteger.equals(valueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += min;
        }
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean isAlphaUpper(char c) {
        return c == ' ' || (c >= 'A' && c <= 'Z');
    }

    private static boolean isAlphaLower(char c) {
        return c == ' ' || (c >= 'a' && c <= 'z');
    }

    private static boolean isMixed(char c) {
        return MIXED[c] != -1;
    }

    private static boolean isPunctuation(char c) {
        return PUNCTUATION[c] != -1;
    }

    private static boolean isText(char c) {
        return c == 9 || c == 10 || c == 13 || (c >= ' ' && c <= '~');
    }

    private static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int i2 = 0;
        int length = charSequence.length();
        if (i < length) {
            char charAt = charSequence.charAt(i);
            while (isDigit(charAt) && i < length) {
                i2++;
                i++;
                if (i < length) {
                    charAt = charSequence.charAt(i);
                }
            }
        }
        return i2;
    }

    private static int determineConsecutiveTextCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            int i3 = 0;
            while (i3 < 13 && isDigit(charAt) && i2 < length) {
                i3++;
                int i4 = i2 + 1;
                if (i4 < length) {
                    charAt = charSequence.charAt(i4);
                    i2 = i4;
                } else {
                    i2 = i4;
                }
            }
            if (i3 < 13) {
                if (i3 <= 0) {
                    if (!isText(charSequence.charAt(i2))) {
                        break;
                    }
                    i2++;
                }
            } else {
                return (i2 - i) - i3;
            }
        }
        return i2 - i;
    }

    private static int determineConsecutiveBinaryCount(String str, int i, Charset charset) throws WriterException {
        CharsetEncoder newEncoder = charset.newEncoder();
        int length = str.length();
        int i2 = i;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            int i3 = 0;
            while (i3 < 13 && isDigit(charAt)) {
                i3++;
                int i4 = i2 + i3;
                if (i4 >= length) {
                    break;
                }
                charAt = str.charAt(i4);
            }
            if (i3 >= 13) {
                return i2 - i;
            }
            char charAt2 = str.charAt(i2);
            if (!newEncoder.canEncode(charAt2)) {
                throw new WriterException("Non-encodable character detected: " + charAt2 + " (Unicode: " + charAt2 + ')');
            }
            i2++;
        }
        return i2 - i;
    }

    private static void encodingECI(int i, StringBuilder sb) throws WriterException {
        if (i >= 0 && i < 900) {
            sb.append(927);
            sb.append((char) i);
        } else if (i < 810900) {
            sb.append(926);
            sb.append((char) ((i / 900) - 1));
            sb.append((char) (i % 900));
        } else if (i < 811800) {
            sb.append(925);
            sb.append((char) (810900 - i));
        } else {
            throw new WriterException("ECI number not in valid range from 0..811799, but was " + i);
        }
    }
}
