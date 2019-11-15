package com.google.zxing.client.result;

import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.regex.Pattern;

public final class VINResultParser extends ResultParser {
    private static final Pattern AZ09 = Pattern.compile("[A-Z0-9]{17}");
    private static final Pattern IOQ = Pattern.compile("[IOQ]");

    public VINParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.CODE_39) {
            return null;
        }
        String trim = IOQ.matcher(result.getText()).replaceAll("").trim();
        if (!AZ09.matcher(trim).matches()) {
            return null;
        }
        try {
            if (!checkChecksum(trim)) {
                return null;
            }
            String substring = trim.substring(0, 3);
            return new VINParsedResult(trim, substring, trim.substring(3, 9), trim.substring(9, 17), countryCode(substring), trim.substring(3, 8), modelYear(trim.charAt(9)), trim.charAt(10), trim.substring(11));
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    private static boolean checkChecksum(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            i += vinPositionWeight(i2 + 1) * vinCharValue(charSequence.charAt(i2));
        }
        if (charSequence.charAt(8) == checkChar(i % 11)) {
            return true;
        }
        return false;
    }

    private static int vinCharValue(char c) {
        if (c >= 'A' && c <= 'I') {
            return (c - 'A') + 1;
        }
        if (c >= 'J' && c <= 'R') {
            return (c - 'J') + 1;
        }
        if (c >= 'S' && c <= 'Z') {
            return (c - 'S') + 2;
        }
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        throw new IllegalArgumentException();
    }

    private static int vinPositionWeight(int i) {
        if (i > 0 && i <= 7) {
            return 9 - i;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 0;
        }
        if (i >= 10 && i <= 17) {
            return 19 - i;
        }
        throw new IllegalArgumentException();
    }

    private static char checkChar(int i) {
        if (i < 10) {
            return (char) (i + 48);
        }
        if (i == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    private static int modelYear(char c) {
        if (c >= 'E' && c <= 'H') {
            return (c - 'E') + 1984;
        }
        if (c >= 'J' && c <= 'N') {
            return (c - 'J') + 1988;
        }
        if (c == 'P') {
            return 1993;
        }
        if (c >= 'R' && c <= 'T') {
            return (c - 'R') + 1994;
        }
        if (c >= 'V' && c <= 'Y') {
            return (c - 'V') + 1997;
        }
        if (c >= '1' && c <= '9') {
            return (c - '1') + 2001;
        }
        if (c >= 'A' && c <= 'D') {
            return (c - 'A') + GLMapStaticValue.AM_PARAMETERNAME_TRAFFIC;
        }
        throw new IllegalArgumentException();
    }

    private static String countryCode(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        char charAt2 = charSequence.charAt(1);
        switch (charAt) {
            case '1':
            case '4':
            case '5':
                return "US";
            case '2':
                return "CA";
            case '3':
                if (charAt2 >= 'A' && charAt2 <= 'W') {
                    return "MX";
                }
            case '9':
                if ((charAt2 >= 'A' && charAt2 <= 'E') || (charAt2 >= '3' && charAt2 <= '9')) {
                    return "BR";
                }
            case 'J':
                if (charAt2 >= 'A' && charAt2 <= 'T') {
                    return "JP";
                }
            case 'K':
                if (charAt2 >= 'L' && charAt2 <= 'R') {
                    return "KO";
                }
            case 'L':
                return "CN";
            case 'M':
                if (charAt2 >= 'A' && charAt2 <= 'E') {
                    return "IN";
                }
            case 'S':
                if (charAt2 >= 'A' && charAt2 <= 'M') {
                    return "UK";
                }
                if (charAt2 >= 'N' && charAt2 <= 'T') {
                    return "DE";
                }
                break;
            case 'V':
                if (charAt2 >= 'F' && charAt2 <= 'R') {
                    return "FR";
                }
                if (charAt2 >= 'S' && charAt2 <= 'W') {
                    return "ES";
                }
            case 'W':
                return "DE";
            case 'X':
                if (charAt2 == '0' || (charAt2 >= '3' && charAt2 <= '9')) {
                    return "RU";
                }
            case 'Z':
                if (charAt2 >= 'A' && charAt2 <= 'R') {
                    return "IT";
                }
        }
        return null;
    }
}
