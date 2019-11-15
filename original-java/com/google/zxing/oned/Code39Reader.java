package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.util.Arrays;
import java.util.Map;
import org.apache.http.HttpStatus;
import org.bouncycastle.crypto.tls.CipherSuite;

public final class Code39Reader extends OneDReader {
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";
    static final int ASTERISK_ENCODING = 148;
    static final int[] CHARACTER_ENCODINGS = {52, 289, 97, 352, 49, HttpStatus.SC_NOT_MODIFIED, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 448, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 400, 208, 133, 388, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256, CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256, 162, 138, 42};
    private final int[] counters;
    private final StringBuilder decodeRowResult;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;

    public Code39Reader() {
        this(false);
    }

    public Code39Reader(boolean z) {
        this(z, false);
    }

    public Code39Reader(boolean z, boolean z2) {
        this.usingCheckDigit = z;
        this.extendedMode = z2;
        this.decodeRowResult = new StringBuilder(20);
        this.counters = new int[9];
    }

    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        String sb;
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb2 = this.decodeRowResult;
        sb2.setLength(0);
        int[] findAsteriskPattern = findAsteriskPattern(bitArray, iArr);
        int nextSet = bitArray.getNextSet(findAsteriskPattern[1]);
        int size = bitArray.getSize();
        while (true) {
            recordPattern(bitArray, nextSet, iArr);
            int narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char patternToChar = patternToChar(narrowWidePattern);
            sb2.append(patternToChar);
            int i2 = nextSet;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int nextSet2 = bitArray.getNextSet(i2);
            if (patternToChar == '*') {
                sb2.setLength(sb2.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                int i6 = (nextSet2 - nextSet) - i4;
                if (nextSet2 == size || (i6 << 1) >= i4) {
                    if (this.usingCheckDigit) {
                        int length = sb2.length() - 1;
                        int i7 = 0;
                        for (int i8 = 0; i8 < length; i8++) {
                            i7 += ALPHABET_STRING.indexOf(this.decodeRowResult.charAt(i8));
                        }
                        if (sb2.charAt(length) != ALPHABET_STRING.charAt(i7 % 43)) {
                            throw ChecksumException.getChecksumInstance();
                        }
                        sb2.setLength(length);
                    }
                    if (sb2.length() == 0) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    if (this.extendedMode) {
                        sb = decodeExtended(sb2);
                    } else {
                        sb = sb2.toString();
                    }
                    return new Result(sb, null, new ResultPoint[]{new ResultPoint(((float) (findAsteriskPattern[1] + findAsteriskPattern[0])) / 2.0f, (float) i), new ResultPoint(((float) nextSet) + (((float) i4) / 2.0f), (float) i)}, BarcodeFormat.CODE_39);
                }
                throw NotFoundException.getNotFoundInstance();
            }
            nextSet = nextSet2;
        }
    }

    private static int[] findAsteriskPattern(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int length = iArr.length;
        boolean z = false;
        int i = 0;
        for (int i2 = nextSet; i2 < size; i2++) {
            if (bitArray.get(i2) != z) {
                iArr[i] = iArr[i] + 1;
            } else {
                if (i != length - 1) {
                    i++;
                } else if (toNarrowWidePattern(iArr) != 148 || !bitArray.isRange(Math.max(0, nextSet - ((i2 - nextSet) / 2)), nextSet, false)) {
                    nextSet += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, i - 1);
                    iArr[i - 1] = 0;
                    iArr[i] = 0;
                    i--;
                } else {
                    return new int[]{nextSet, i2};
                }
                iArr[i] = 1;
                if (!z) {
                    z = true;
                } else {
                    z = false;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i4 |= 1 << ((length - 1) - i7);
                    i6++;
                    i5 += i8;
                }
            }
            if (i6 == 3) {
                int i9 = i6;
                for (int i10 = 0; i10 < length && i9 > 0; i10++) {
                    int i11 = iArr[i10];
                    if (i11 > i2) {
                        i9--;
                        if ((i11 << 1) >= i5) {
                            return -1;
                        }
                    }
                }
                return i4;
            } else if (i6 <= 3) {
                return -1;
            } else {
                i = i2;
            }
        }
    }

    private static char patternToChar(int i) throws NotFoundException {
        for (int i2 = 0; i2 < CHARACTER_ENCODINGS.length; i2++) {
            if (CHARACTER_ENCODINGS[i2] == i) {
                return ALPHABET_STRING.charAt(i2);
            }
        }
        if (i == 148) {
            return '*';
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt == '+' || charAt == '$' || charAt == '%' || charAt == '/') {
                char charAt2 = charSequence.charAt(i2 + 1);
                switch (charAt) {
                    case '$':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            c = (char) (charAt2 - '@');
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case '%':
                        if (charAt2 < 'A' || charAt2 > 'E') {
                            if (charAt2 < 'F' || charAt2 > 'J') {
                                if (charAt2 < 'K' || charAt2 > 'O') {
                                    if (charAt2 >= 'P' && charAt2 <= 'T') {
                                        c = (char) (charAt2 + '+');
                                        break;
                                    } else if (charAt2 == 'U') {
                                        c = 0;
                                        break;
                                    } else if (charAt2 == 'V') {
                                        c = '@';
                                        break;
                                    } else if (charAt2 == 'W') {
                                        c = '`';
                                        break;
                                    } else if (charAt2 == 'X' || charAt2 == 'Y' || charAt2 == 'Z') {
                                        c = 127;
                                        break;
                                    } else {
                                        throw FormatException.getFormatInstance();
                                    }
                                } else {
                                    c = (char) (charAt2 + 16);
                                    break;
                                }
                            } else {
                                c = (char) (charAt2 - 11);
                                break;
                            }
                        } else {
                            c = (char) (charAt2 - '&');
                            break;
                        }
                        break;
                    case '+':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            c = (char) (charAt2 + ' ');
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case '/':
                        if (charAt2 >= 'A' && charAt2 <= 'O') {
                            c = (char) (charAt2 - ' ');
                            break;
                        } else if (charAt2 == 'Z') {
                            c = Http.PROTOCOL_PORT_SPLITTER;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    default:
                        c = 0;
                        break;
                }
                sb.append(c);
                i = i2 + 1;
            } else {
                sb.append(charAt);
                i = i2;
            }
            i2 = i + 1;
        }
        return sb.toString();
    }
}
