package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.pdf417.PDF417ResultMetadata;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

final class DecodedBitStreamParser {
    private static final int AL = 28;
    private static final int AS = 27;
    private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    private static final int BYTE_COMPACTION_MODE_LATCH = 901;
    private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final BigInteger[] EXP900;
    private static final int LL = 27;
    private static final int MACRO_PDF417_TERMINATOR = 922;
    private static final int MAX_NUMERIC_CODEWORDS = 15;
    private static final char[] MIXED_CHARS = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();
    private static final int ML = 28;
    private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    private static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    private static final int PAL = 29;
    private static final int PL = 25;
    private static final int PS = 29;
    private static final char[] PUNCT_CHARS = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();
    private static final int TEXT_COMPACTION_MODE_LATCH = 900;

    private enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        EXP900 = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900);
        EXP900[1] = valueOf;
        for (int i = 2; i < EXP900.length; i++) {
            EXP900[i] = EXP900[i - 1].multiply(valueOf);
        }
    }

    private DecodedBitStreamParser() {
    }

    static DecoderResult decode(int[] iArr, String str) throws FormatException {
        int decodeMacroBlock;
        StringBuilder sb = new StringBuilder(iArr.length << 1);
        Charset charset = StandardCharsets.ISO_8859_1;
        int i = 2;
        int i2 = iArr[1];
        PDF417ResultMetadata pDF417ResultMetadata = new PDF417ResultMetadata();
        while (i < iArr[0]) {
            switch (i2) {
                case 900:
                    decodeMacroBlock = textCompaction(iArr, i, sb);
                    break;
                case BYTE_COMPACTION_MODE_LATCH /*901*/:
                case BYTE_COMPACTION_MODE_LATCH_6 /*924*/:
                    decodeMacroBlock = byteCompaction(i2, iArr, charset, i, sb);
                    break;
                case NUMERIC_COMPACTION_MODE_LATCH /*902*/:
                    decodeMacroBlock = numericCompaction(iArr, i, sb);
                    break;
                case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /*913*/:
                    decodeMacroBlock = i + 1;
                    sb.append((char) iArr[i]);
                    break;
                case MACRO_PDF417_TERMINATOR /*922*/:
                case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /*923*/:
                    throw FormatException.getFormatInstance();
                case ECI_USER_DEFINED /*925*/:
                    decodeMacroBlock = i + 1;
                    break;
                case ECI_GENERAL_PURPOSE /*926*/:
                    decodeMacroBlock = i + 2;
                    break;
                case ECI_CHARSET /*927*/:
                    decodeMacroBlock = i + 1;
                    charset = Charset.forName(CharacterSetECI.getCharacterSetECIByValue(iArr[i]).name());
                    break;
                case 928:
                    decodeMacroBlock = decodeMacroBlock(iArr, i, pDF417ResultMetadata);
                    break;
                default:
                    decodeMacroBlock = textCompaction(iArr, i - 1, sb);
                    break;
            }
            if (decodeMacroBlock < iArr.length) {
                i = decodeMacroBlock + 1;
                i2 = iArr[decodeMacroBlock];
            } else {
                throw FormatException.getFormatInstance();
            }
        }
        if (sb.length() == 0) {
            throw FormatException.getFormatInstance();
        }
        DecoderResult decoderResult = new DecoderResult(null, sb.toString(), null, str);
        decoderResult.setOther(pDF417ResultMetadata);
        return decoderResult;
    }

    private static int decodeMacroBlock(int[] iArr, int i, PDF417ResultMetadata pDF417ResultMetadata) throws FormatException {
        if (i + 2 > iArr[0]) {
            throw FormatException.getFormatInstance();
        }
        int[] iArr2 = new int[2];
        int i2 = 0;
        while (i2 < 2) {
            iArr2[i2] = iArr[i];
            i2++;
            i++;
        }
        pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10(iArr2, 2)));
        StringBuilder sb = new StringBuilder();
        int textCompaction = textCompaction(iArr, i, sb);
        pDF417ResultMetadata.setFileId(sb.toString());
        switch (iArr[textCompaction]) {
            case MACRO_PDF417_TERMINATOR /*922*/:
                pDF417ResultMetadata.setLastSegment(true);
                return textCompaction + 1;
            case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /*923*/:
                int i3 = textCompaction + 1;
                int[] iArr3 = new int[(iArr[0] - i3)];
                int i4 = 0;
                int i5 = i3;
                boolean z = false;
                while (i5 < iArr[0] && !z) {
                    int i6 = i5 + 1;
                    int i7 = iArr[i5];
                    if (i7 < 900) {
                        int i8 = i4 + 1;
                        iArr3[i4] = i7;
                        i4 = i8;
                        i5 = i6;
                    } else {
                        switch (i7) {
                            case MACRO_PDF417_TERMINATOR /*922*/:
                                pDF417ResultMetadata.setLastSegment(true);
                                i5 = i6 + 1;
                                z = true;
                                break;
                            default:
                                throw FormatException.getFormatInstance();
                        }
                    }
                }
                pDF417ResultMetadata.setOptionalData(Arrays.copyOf(iArr3, i4));
                return i5;
            default:
                return textCompaction;
        }
    }

    private static int textCompaction(int[] iArr, int i, StringBuilder sb) {
        int[] iArr2 = new int[((iArr[0] - i) << 1)];
        int[] iArr3 = new int[((iArr[0] - i) << 1)];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 >= 900) {
                switch (i4) {
                    case 900:
                        int i5 = i2 + 1;
                        iArr2[i2] = 900;
                        i2 = i5;
                        i = i3;
                        break;
                    case BYTE_COMPACTION_MODE_LATCH /*901*/:
                    case NUMERIC_COMPACTION_MODE_LATCH /*902*/:
                    case MACRO_PDF417_TERMINATOR /*922*/:
                    case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /*923*/:
                    case BYTE_COMPACTION_MODE_LATCH_6 /*924*/:
                    case 928:
                        i = i3 - 1;
                        z = true;
                        break;
                    case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /*913*/:
                        iArr2[i2] = MODE_SHIFT_TO_BYTE_COMPACTION_MODE;
                        i = i3 + 1;
                        iArr3[i2] = iArr[i3];
                        i2++;
                        break;
                    default:
                        i = i3;
                        break;
                }
            } else {
                iArr2[i2] = i4 / 30;
                iArr2[i2 + 1] = i4 % 30;
                i2 += 2;
                i = i3;
            }
        }
        decodeTextCompaction(iArr2, iArr3, i2, sb);
        return i;
    }

    private static void decodeTextCompaction(int[] iArr, int[] iArr2, int i, StringBuilder sb) {
        Mode mode;
        char c;
        Mode mode2;
        Mode mode3 = Mode.ALPHA;
        Mode mode4 = Mode.ALPHA;
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr[i2];
            switch (mode3) {
                case ALPHA:
                    if (i3 >= 26) {
                        switch (i3) {
                            case 26:
                                mode = mode3;
                                c = ' ';
                                break;
                            case 27:
                                mode = Mode.LOWER;
                                c = 0;
                                break;
                            case 28:
                                mode = Mode.MIXED;
                                c = 0;
                                break;
                            case 29:
                                mode = Mode.PUNCT_SHIFT;
                                mode4 = mode3;
                                c = 0;
                                break;
                            case 900:
                                mode3 = Mode.ALPHA;
                                break;
                            case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /*913*/:
                                sb.append((char) iArr2[i2]);
                                mode = mode3;
                                c = 0;
                                break;
                        }
                        mode = mode3;
                        c = 0;
                        break;
                    } else {
                        char c2 = (char) (i3 + 65);
                        mode = mode3;
                        c = c2;
                        break;
                    }
                case LOWER:
                    if (i3 >= 26) {
                        switch (i3) {
                            case 26:
                                mode = mode3;
                                c = ' ';
                                break;
                            case 27:
                                mode = Mode.ALPHA_SHIFT;
                                mode4 = mode3;
                                c = 0;
                                break;
                            case 28:
                                mode = Mode.MIXED;
                                c = 0;
                                break;
                            case 29:
                                mode = Mode.PUNCT_SHIFT;
                                mode4 = mode3;
                                c = 0;
                                break;
                            case 900:
                                mode3 = Mode.ALPHA;
                                break;
                            case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /*913*/:
                                sb.append((char) iArr2[i2]);
                                mode = mode3;
                                c = 0;
                                break;
                        }
                        mode = mode3;
                        c = 0;
                        break;
                    } else {
                        char c3 = (char) (i3 + 97);
                        mode = mode3;
                        c = c3;
                        break;
                    }
                case MIXED:
                    if (i3 >= 25) {
                        switch (i3) {
                            case 25:
                                mode = Mode.PUNCT;
                                c = 0;
                                break;
                            case 26:
                                mode = mode3;
                                c = ' ';
                                break;
                            case 27:
                                mode = Mode.LOWER;
                                c = 0;
                                break;
                            case 28:
                                mode = Mode.ALPHA;
                                c = 0;
                                break;
                            case 29:
                                mode = Mode.PUNCT_SHIFT;
                                mode4 = mode3;
                                c = 0;
                                break;
                            case 900:
                                mode3 = Mode.ALPHA;
                                break;
                            case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /*913*/:
                                sb.append((char) iArr2[i2]);
                                mode = mode3;
                                c = 0;
                                break;
                        }
                        mode = mode3;
                        c = 0;
                        break;
                    } else {
                        char c4 = MIXED_CHARS[i3];
                        mode = mode3;
                        c = c4;
                        break;
                    }
                case PUNCT:
                    if (i3 >= 29) {
                        switch (i3) {
                            case 29:
                                mode = Mode.ALPHA;
                                c = 0;
                                break;
                            case 900:
                                mode3 = Mode.ALPHA;
                                break;
                            case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /*913*/:
                                sb.append((char) iArr2[i2]);
                                mode = mode3;
                                c = 0;
                                break;
                        }
                        mode = mode3;
                        c = 0;
                        break;
                    } else {
                        char c5 = PUNCT_CHARS[i3];
                        mode = mode3;
                        c = c5;
                        break;
                    }
                case ALPHA_SHIFT:
                    if (i3 >= 26) {
                        switch (i3) {
                            case 26:
                                c = ' ';
                                mode = mode4;
                                break;
                            case 900:
                                mode2 = Mode.ALPHA;
                                break;
                            default:
                                mode2 = mode4;
                                break;
                        }
                        mode = mode2;
                        c = 0;
                        break;
                    } else {
                        c = (char) (i3 + 65);
                        mode = mode4;
                        break;
                    }
                case PUNCT_SHIFT:
                    if (i3 >= 29) {
                        switch (i3) {
                            case 29:
                                mode = Mode.ALPHA;
                                c = 0;
                                break;
                            case 900:
                                mode = Mode.ALPHA;
                                c = 0;
                                break;
                            case MODE_SHIFT_TO_BYTE_COMPACTION_MODE /*913*/:
                                sb.append((char) iArr2[i2]);
                                c = 0;
                                mode = mode4;
                                break;
                            default:
                                c = 0;
                                mode = mode4;
                                break;
                        }
                    } else {
                        c = PUNCT_CHARS[i3];
                        mode = mode4;
                        break;
                    }
                default:
                    mode = mode3;
                    c = 0;
                    break;
            }
            if (c != 0) {
                sb.append(c);
            }
            i2++;
            mode3 = mode;
        }
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 152 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int byteCompaction(int r14, int[] r15, java.nio.charset.Charset r16, int r17, java.lang.StringBuilder r18) {
        /*
            java.io.ByteArrayOutputStream r10 = new java.io.ByteArrayOutputStream
            r10.<init>()
            r6 = 0
            r4 = 0
            r3 = 0
            switch(r14) {
                case 901: goto L_0x001d;
                case 924: goto L_0x007f;
                default: goto L_0x000c;
            }
        L_0x000c:
            java.lang.String r2 = new java.lang.String
            byte[] r3 = r10.toByteArray()
            r0 = r16
            r2.<init>(r3, r0)
            r0 = r18
            r0.append(r2)
            return r17
        L_0x001d:
            r2 = 6
            int[] r11 = new int[r2]
            int r7 = r17 + 1
            r2 = r15[r17]
            r8 = r7
        L_0x0025:
            r7 = 0
            r7 = r15[r7]
            if (r8 >= r7) goto L_0x005f
            if (r3 != 0) goto L_0x005f
            int r7 = r6 + 1
            r11[r6] = r2
            r12 = 900(0x384, double:4.447E-321)
            long r4 = r4 * r12
            long r12 = (long) r2
            long r4 = r4 + r12
            int r9 = r8 + 1
            r2 = r15[r8]
            switch(r2) {
                case 900: goto L_0x0054;
                case 901: goto L_0x0054;
                case 902: goto L_0x0054;
                case 922: goto L_0x0054;
                case 923: goto L_0x0054;
                case 924: goto L_0x0054;
                case 928: goto L_0x0054;
                default: goto L_0x003c;
            }
        L_0x003c:
            int r6 = r7 % 5
            if (r6 != 0) goto L_0x00bb
            if (r7 <= 0) goto L_0x00bb
            r6 = 0
        L_0x0043:
            r7 = 6
            if (r6 >= r7) goto L_0x005a
            int r7 = 5 - r6
            int r7 = r7 * 8
            long r12 = r4 >> r7
            int r7 = (int) r12
            byte r7 = (byte) r7
            r10.write(r7)
            int r6 = r6 + 1
            goto L_0x0043
        L_0x0054:
            int r6 = r9 + -1
            r3 = 1
            r8 = r6
            r6 = r7
            goto L_0x0025
        L_0x005a:
            r4 = 0
            r6 = 0
            r8 = r9
            goto L_0x0025
        L_0x005f:
            r3 = 0
            r3 = r15[r3]
            if (r8 != r3) goto L_0x006d
            r3 = 900(0x384, float:1.261E-42)
            if (r2 >= r3) goto L_0x006d
            int r3 = r6 + 1
            r11[r6] = r2
            r6 = r3
        L_0x006d:
            r2 = 0
        L_0x006e:
            if (r2 >= r6) goto L_0x0079
            r3 = r11[r2]
            byte r3 = (byte) r3
            r10.write(r3)
            int r2 = r2 + 1
            goto L_0x006e
        L_0x0079:
            r17 = r8
            goto L_0x000c
        L_0x007c:
            r4 = 0
            r6 = 0
        L_0x007f:
            r2 = 0
            r2 = r15[r2]
            r0 = r17
            if (r0 >= r2) goto L_0x000c
            if (r3 != 0) goto L_0x000c
            int r2 = r17 + 1
            r7 = r15[r17]
            r8 = 900(0x384, float:1.261E-42)
            if (r7 >= r8) goto L_0x00b1
            int r6 = r6 + 1
            r8 = 900(0x384, double:4.447E-321)
            long r4 = r4 * r8
            long r8 = (long) r7
            long r4 = r4 + r8
            r17 = r2
        L_0x0099:
            int r2 = r6 % 5
            if (r2 != 0) goto L_0x007f
            if (r6 <= 0) goto L_0x007f
            r2 = 0
        L_0x00a0:
            r6 = 6
            if (r2 >= r6) goto L_0x007c
            int r6 = 5 - r2
            int r6 = r6 * 8
            long r6 = r4 >> r6
            int r6 = (int) r6
            byte r6 = (byte) r6
            r10.write(r6)
            int r2 = r2 + 1
            goto L_0x00a0
        L_0x00b1:
            switch(r7) {
                case 900: goto L_0x00b7;
                case 901: goto L_0x00b7;
                case 902: goto L_0x00b7;
                case 922: goto L_0x00b7;
                case 923: goto L_0x00b7;
                case 924: goto L_0x00b7;
                case 928: goto L_0x00b7;
                default: goto L_0x00b4;
            }
        L_0x00b4:
            r17 = r2
            goto L_0x0099
        L_0x00b7:
            int r17 = r2 + -1
            r3 = 1
            goto L_0x0099
        L_0x00bb:
            r6 = r7
            r8 = r9
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.byteCompaction(int, int[], java.nio.charset.Charset, int, java.lang.StringBuilder):int");
    }

    private static int numericCompaction(int[] iArr, int i, StringBuilder sb) throws FormatException {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 >= 900) {
                switch (i4) {
                    case 900:
                    case BYTE_COMPACTION_MODE_LATCH /*901*/:
                    case MACRO_PDF417_TERMINATOR /*922*/:
                    case BEGIN_MACRO_PDF417_OPTIONAL_FIELD /*923*/:
                    case BYTE_COMPACTION_MODE_LATCH_6 /*924*/:
                    case 928:
                        i = i3 - 1;
                        z = true;
                        break;
                    default:
                        i = i3;
                        break;
                }
            } else {
                iArr2[i2] = i4;
                i2++;
                i = i3;
            }
            if ((i2 % 15 == 0 || i4 == NUMERIC_COMPACTION_MODE_LATCH || z) && i2 > 0) {
                sb.append(decodeBase900toBase10(iArr2, i2));
                i2 = 0;
            }
        }
        return i;
    }

    private static String decodeBase900toBase10(int[] iArr, int i) throws FormatException {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigInteger = bigInteger.add(EXP900[(i - i2) - 1].multiply(BigInteger.valueOf((long) iArr[i2])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) == '1') {
            return bigInteger2.substring(1);
        }
        throw FormatException.getFormatInstance();
    }
}
