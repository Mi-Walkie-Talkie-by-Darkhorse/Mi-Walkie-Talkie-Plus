package com.xiaomi.smack.util;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.string.a;
import java.util.Random;

public class d {
    private static final char[] a = "&quot;".toCharArray();
    private static final char[] b = "&apos;".toCharArray();
    private static final char[] c = "&amp;".toCharArray();
    private static final char[] d = "&lt;".toCharArray();
    private static final char[] e = "&gt;".toCharArray();
    private static Random f = new Random();
    private static char[] g = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    public static String a(int i) {
        if (i < 1) {
            return null;
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < cArr.length; i2++) {
            cArr[i2] = g[f.nextInt(71)];
        }
        return new String(cArr);
    }

    public static String a(String str) {
        int i = 0;
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        StringBuilder sb = new StringBuilder((int) (((double) length) * 1.3d));
        int i2 = 0;
        while (i2 < length) {
            char c2 = charArray[i2];
            if (c2 <= '>') {
                if (c2 == '<') {
                    if (i2 > i) {
                        sb.append(charArray, i, i2 - i);
                    }
                    i = i2 + 1;
                    sb.append(d);
                } else if (c2 == '>') {
                    if (i2 > i) {
                        sb.append(charArray, i, i2 - i);
                    }
                    i = i2 + 1;
                    sb.append(e);
                } else if (c2 == '&') {
                    if (i2 > i) {
                        sb.append(charArray, i, i2 - i);
                    }
                    if (length <= i2 + 5 || charArray[i2 + 1] != '#' || !Character.isDigit(charArray[i2 + 2]) || !Character.isDigit(charArray[i2 + 3]) || !Character.isDigit(charArray[i2 + 4]) || charArray[i2 + 5] != ';') {
                        i = i2 + 1;
                        sb.append(c);
                    }
                } else if (c2 == '\"') {
                    if (i2 > i) {
                        sb.append(charArray, i, i2 - i);
                    }
                    i = i2 + 1;
                    sb.append(a);
                } else if (c2 == '\'') {
                    if (i2 > i) {
                        sb.append(charArray, i, i2 - i);
                    }
                    i = i2 + 1;
                    sb.append(b);
                }
            }
            i2++;
        }
        if (i == 0) {
            return str;
        }
        if (i2 > i) {
            sb.append(charArray, i, i2 - i);
        }
        return sb.toString();
    }

    public static final String a(String str, String str2, String str3) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(str2, 0);
        if (indexOf < 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        char[] charArray2 = str3.toCharArray();
        int length = str2.length();
        StringBuilder sb = new StringBuilder(charArray.length);
        sb.append(charArray, 0, indexOf).append(charArray2);
        int i = indexOf + length;
        while (true) {
            int indexOf2 = str.indexOf(str2, i);
            if (indexOf2 > 0) {
                sb.append(charArray, i, indexOf2 - i).append(charArray2);
                i = indexOf2 + length;
            } else {
                sb.append(charArray, i, charArray.length - i);
                return sb.toString();
            }
        }
    }

    public static String a(byte[] bArr) {
        return String.valueOf(a.a(bArr));
    }

    public static boolean a(char c2) {
        return (c2 >= ' ' && c2 <= 55295) || (c2 >= 57344 && c2 <= 65533) || ((c2 >= 0 && c2 <= 65535) || c2 == 9 || c2 == 10 || c2 == 13);
    }

    public static final String b(String str) {
        return a(a(a(a(a(str, "&lt;", "<"), "&gt;", ">"), "&quot;", "\""), "&apos;", "'"), "&amp;", "&");
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (a(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }
}
