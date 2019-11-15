package com.google.zxing.maxicode.decoder;

import com.google.zxing.common.DecoderResult;
import java.text.DecimalFormat;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.jboss.netty.handler.codec.http.HttpConstants;

final class DecodedBitStreamParser {
    private static final char ECI = '￺';
    private static final char FS = '\u001c';
    private static final char GS = '\u001d';
    private static final char LATCHA = '￷';
    private static final char LATCHB = '￸';
    private static final char LOCK = '￹';
    private static final char NS = '￻';
    private static final char PAD = '￼';
    private static final char RS = '\u001e';
    private static final String[] SETS = {"\nABCDEFGHIJKLMNOPQRSTUVWXYZ￺\u001c\u001d\u001e￻ ￼\"#$%&'()*+,-./0123456789:￱￲￳￴￸", "`abcdefghijklmnopqrstuvwxyz￺\u001c\u001d\u001e￻{￼}~;<=>?[\\]^_ ,./:@!|￼￵￶￼￰￲￳￴￷", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ￺\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾￷ ￹￳￴￸", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú￺\u001c\u001d\u001e￻ûüýþÿ¡¨«¯°´·¸»¿￷ ￲￹￴￸", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a￺￼￼\u001b￻\u001c\u001d\u001e\u001f ¢£¤¥¦§©­®¶￷ ￲￳￹￸", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?"};
    private static final char SHIFTA = '￰';
    private static final char SHIFTB = '￱';
    private static final char SHIFTC = '￲';
    private static final char SHIFTD = '￳';
    private static final char SHIFTE = '￴';
    private static final char THREESHIFTA = '￶';
    private static final char TWOSHIFTA = '￵';

    private DecodedBitStreamParser() {
    }

    static DecoderResult decode(byte[] bArr, int i) {
        String postCode3;
        StringBuilder sb = new StringBuilder(CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA);
        switch (i) {
            case 2:
            case 3:
                if (i == 2) {
                    postCode3 = new DecimalFormat("0000000000".substring(0, getPostCode2Length(bArr))).format((long) getPostCode2(bArr));
                } else {
                    postCode3 = getPostCode3(bArr);
                }
                DecimalFormat decimalFormat = new DecimalFormat("000");
                String format = decimalFormat.format((long) getCountry(bArr));
                String format2 = decimalFormat.format((long) getServiceClass(bArr));
                sb.append(getMessage(bArr, 10, 84));
                if (!sb.toString().startsWith("[)>\u001e01\u001d")) {
                    sb.insert(0, postCode3 + GS + format + GS + format2 + GS);
                    break;
                } else {
                    sb.insert(9, postCode3 + GS + format + GS + format2 + GS);
                    break;
                }
            case 4:
                sb.append(getMessage(bArr, 1, 93));
                break;
            case 5:
                sb.append(getMessage(bArr, 1, 77));
                break;
        }
        return new DecoderResult(bArr, sb.toString(), null, String.valueOf(i));
    }

    private static int getBit(int i, byte[] bArr) {
        int i2 = i - 1;
        if (((1 << (5 - (i2 % 6))) & bArr[i2 / 6]) == 0) {
            return 0;
        }
        return 1;
    }

    private static int getInt(byte[] bArr, byte[] bArr2) {
        if (bArr2.length == 0) {
            throw new IllegalArgumentException();
        }
        int i = 0;
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            i += getBit(bArr2[i2], bArr) << ((bArr2.length - i2) - 1);
        }
        return i;
    }

    private static int getCountry(byte[] bArr) {
        return getInt(bArr, new byte[]{53, 54, 43, HttpConstants.COMMA, 45, 46, 47, 48, 37, 38});
    }

    private static int getServiceClass(byte[] bArr) {
        return getInt(bArr, new byte[]{55, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, 49, 50, 51, 52});
    }

    private static int getPostCode2Length(byte[] bArr) {
        return getInt(bArr, new byte[]{39, 40, 41, 42, 31, HttpConstants.SP});
    }

    private static int getPostCode2(byte[] bArr) {
        return getInt(bArr, new byte[]{33, HttpConstants.DOUBLE_QUOTE, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, HttpConstants.CR, 14, 15, Tnaf.POW_2_WIDTH, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2});
    }

    private static String getPostCode3(byte[] bArr) {
        return String.valueOf(new char[]{SETS[0].charAt(getInt(bArr, new byte[]{39, 40, 41, 42, 31, HttpConstants.SP})), SETS[0].charAt(getInt(bArr, new byte[]{33, HttpConstants.DOUBLE_QUOTE, 35, 36, 25, 26})), SETS[0].charAt(getInt(bArr, new byte[]{27, 28, 29, 30, 19, 20})), SETS[0].charAt(getInt(bArr, new byte[]{21, 22, 23, 24, HttpConstants.CR, 14})), SETS[0].charAt(getInt(bArr, new byte[]{15, Tnaf.POW_2_WIDTH, 17, 18, 7, 8})), SETS[0].charAt(getInt(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
    }

    private static String getMessage(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        StringBuilder sb = new StringBuilder();
        int i5 = i;
        int i6 = 0;
        int i7 = 0;
        int i8 = -1;
        while (i5 < i + i2) {
            char charAt = SETS[i7].charAt(bArr[i5]);
            switch (charAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i8 = 1;
                    int i9 = i7;
                    i3 = i5;
                    i4 = charAt - SHIFTA;
                    i6 = i9;
                    break;
                case 65525:
                    i8 = 2;
                    i6 = i7;
                    i3 = i5;
                    i4 = 0;
                    break;
                case 65526:
                    i8 = 3;
                    i6 = i7;
                    i3 = i5;
                    i4 = 0;
                    break;
                case 65527:
                    i3 = i5;
                    i8 = -1;
                    i4 = 0;
                    break;
                case 65528:
                    i3 = i5;
                    i8 = -1;
                    i4 = 1;
                    break;
                case 65529:
                    i8 = -1;
                    int i10 = i7;
                    i3 = i5;
                    i4 = i10;
                    break;
                case 65531:
                    int i11 = i5 + 1;
                    int i12 = i11 + 1;
                    int i13 = i12 + 1;
                    int i14 = i13 + 1;
                    int i15 = i14 + 1;
                    sb.append(new DecimalFormat("000000000").format((long) ((bArr[i11] << 24) + (bArr[i12] << 18) + (bArr[i13] << 12) + (bArr[i14] << 6) + bArr[i15])));
                    int i16 = i15;
                    i4 = i7;
                    i3 = i16;
                    break;
                default:
                    sb.append(charAt);
                    int i17 = i5;
                    i4 = i7;
                    i3 = i17;
                    break;
            }
            int i18 = i8 - 1;
            if (i8 == 0) {
                i4 = i6;
            }
            i8 = i18;
            int i19 = i4;
            i5 = i3 + 1;
            i7 = i19;
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == 65532) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }
}
