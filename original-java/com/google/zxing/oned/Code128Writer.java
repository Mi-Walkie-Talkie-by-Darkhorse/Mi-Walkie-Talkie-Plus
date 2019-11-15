package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Map;

public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 'ñ';
    private static final char ESCAPE_FNC_2 = 'ò';
    private static final char ESCAPE_FNC_3 = 'ó';
    private static final char ESCAPE_FNC_4 = 'ô';

    private enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_128) {
            return super.encode(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
    }

    public boolean[] encode(String str) {
        int i;
        int i2;
        int i3 = 0;
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + length);
        }
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            switch (charAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (charAt <= 127) {
                        break;
                    } else {
                        throw new IllegalArgumentException("Bad character in input: " + charAt);
                    }
            }
        }
        ArrayList<int[]> arrayList = new ArrayList<>();
        int i5 = 0;
        int i6 = 0;
        int i7 = 1;
        int i8 = 0;
        while (i5 < length) {
            int chooseCode = chooseCode(str, i5, i6);
            if (chooseCode == i6) {
                switch (str.charAt(i5)) {
                    case 241:
                        i = 102;
                        break;
                    case 242:
                        i = 97;
                        break;
                    case 243:
                        i = 96;
                        break;
                    case 244:
                        if (i6 != 101) {
                            i = 100;
                            break;
                        } else {
                            i = 101;
                            break;
                        }
                    default:
                        switch (i6) {
                            case 100:
                                i = str.charAt(i5) - ' ';
                                break;
                            case 101:
                                i = str.charAt(i5) - ' ';
                                if (i < 0) {
                                    i += 96;
                                    break;
                                }
                                break;
                            default:
                                i = Integer.parseInt(str.substring(i5, i5 + 2));
                                i5++;
                                break;
                        }
                }
                i5++;
                chooseCode = i6;
            } else if (i6 == 0) {
                switch (chooseCode) {
                    case 100:
                        i = 104;
                        break;
                    case 101:
                        i = 103;
                        break;
                    default:
                        i = 105;
                        break;
                }
            } else {
                i = chooseCode;
            }
            arrayList.add(Code128Reader.CODE_PATTERNS[i]);
            int i9 = i8 + (i * i7);
            if (i5 != 0) {
                i2 = i7 + 1;
            } else {
                i2 = i7;
            }
            i7 = i2;
            i8 = i9;
            i6 = chooseCode;
        }
        arrayList.add(Code128Reader.CODE_PATTERNS[i8 % 103]);
        arrayList.add(Code128Reader.CODE_PATTERNS[106]);
        int i10 = 0;
        for (int[] iArr : arrayList) {
            int i11 = 0;
            while (i11 < iArr.length) {
                int i12 = iArr[i11] + i10;
                i11++;
                i10 = i12;
            }
        }
        boolean[] zArr = new boolean[i10];
        for (int[] appendPattern : arrayList) {
            i3 += appendPattern(zArr, i3, appendPattern, true);
        }
        return zArr;
    }

    private static CType findCType(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return CType.UNCODABLE;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return CType.FNC_1;
        }
        if (charAt < '0' || charAt > '9') {
            return CType.UNCODABLE;
        }
        if (i + 1 >= length) {
            return CType.ONE_DIGIT;
        }
        char charAt2 = charSequence.charAt(i + 1);
        if (charAt2 < '0' || charAt2 > '9') {
            return CType.ONE_DIGIT;
        }
        return CType.TWO_DIGITS;
    }

    private static int chooseCode(CharSequence charSequence, int i, int i2) {
        CType findCType;
        CType findCType2 = findCType(charSequence, i);
        if (findCType2 == CType.ONE_DIGIT) {
            return 100;
        }
        if (findCType2 == CType.UNCODABLE) {
            if (i < charSequence.length()) {
                char charAt = charSequence.charAt(i);
                if (charAt < ' ' || (i2 == 101 && charAt < '`')) {
                    return 101;
                }
            }
            return 100;
        } else if (i2 == 99) {
            return 99;
        } else {
            if (i2 != 100) {
                if (findCType2 == CType.FNC_1) {
                    findCType2 = findCType(charSequence, i + 1);
                }
                if (findCType2 == CType.TWO_DIGITS) {
                    return 99;
                }
                return 100;
            } else if (findCType2 == CType.FNC_1) {
                return 100;
            } else {
                CType findCType3 = findCType(charSequence, i + 2);
                if (findCType3 == CType.UNCODABLE || findCType3 == CType.ONE_DIGIT) {
                    return 100;
                }
                if (findCType3 != CType.FNC_1) {
                    int i3 = i + 4;
                    while (true) {
                        findCType = findCType(charSequence, i3);
                        if (findCType != CType.TWO_DIGITS) {
                            break;
                        }
                        i3 += 2;
                    }
                    if (findCType == CType.ONE_DIGIT) {
                        return 100;
                    }
                    return 99;
                } else if (findCType(charSequence, i + 3) == CType.TWO_DIGITS) {
                    return 99;
                } else {
                    return 100;
                }
            }
        }
    }
}
