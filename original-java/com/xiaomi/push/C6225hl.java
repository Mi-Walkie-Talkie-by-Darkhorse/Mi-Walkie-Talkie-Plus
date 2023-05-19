package com.xiaomi.push;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Random;

/* renamed from: com.xiaomi.push.hl */
/* loaded from: classes2.dex */
public class C6225hl {

    /* renamed from: a */
    private static final char[] f21883a = "&quot;".toCharArray();

    /* renamed from: b */
    private static final char[] f21884b = "&apos;".toCharArray();

    /* renamed from: c */
    private static final char[] f21885c = "&amp;".toCharArray();

    /* renamed from: d */
    private static final char[] f21886d = "&lt;".toCharArray();

    /* renamed from: e */
    private static final char[] f21887e = "&gt;".toCharArray();

    /* renamed from: a */
    private static Random f21882a = new Random();

    /* renamed from: f */
    private static char[] f21888f = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    /* renamed from: a */
    public static String m2612a(int i) {
        if (i < 1) {
            return null;
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = f21888f[f21882a.nextInt(71)];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static String m2611a(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        StringBuilder sb = new StringBuilder((int) (length * 1.3d));
        int i = 0;
        int i2 = 0;
        while (i < length) {
            char c = charArray[i];
            if (c <= '>') {
                if (c == '<') {
                    if (i > i2) {
                        sb.append(charArray, i2, i - i2);
                    }
                    i2 = i + 1;
                    sb.append(f21886d);
                } else if (c == '>') {
                    if (i > i2) {
                        sb.append(charArray, i2, i - i2);
                    }
                    i2 = i + 1;
                    sb.append(f21887e);
                } else if (c == '&') {
                    if (i > i2) {
                        sb.append(charArray, i2, i - i2);
                    }
                    int i3 = i + 5;
                    if (length <= i3 || charArray[i + 1] != '#' || !Character.isDigit(charArray[i + 2]) || !Character.isDigit(charArray[i + 3]) || !Character.isDigit(charArray[i + 4]) || charArray[i3] != ';') {
                        i2 = i + 1;
                        sb.append(f21885c);
                    }
                } else if (c == '\"') {
                    if (i > i2) {
                        sb.append(charArray, i2, i - i2);
                    }
                    i2 = i + 1;
                    sb.append(f21883a);
                } else if (c == '\'') {
                    if (i > i2) {
                        sb.append(charArray, i2, i - i2);
                    }
                    i2 = i + 1;
                    sb.append(f21884b);
                }
            }
            i++;
        }
        if (i2 == 0) {
            return str;
        }
        if (i > i2) {
            sb.append(charArray, i2, i - i2);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static final String m2610a(String str, String str2, String str3) {
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
        sb.append(charArray, 0, indexOf);
        sb.append(charArray2);
        int i = indexOf + length;
        while (true) {
            int indexOf2 = str.indexOf(str2, i);
            if (indexOf2 <= 0) {
                sb.append(charArray, i, charArray.length - i);
                return sb.toString();
            }
            sb.append(charArray, i, indexOf2 - i);
            sb.append(charArray2);
            i = indexOf2 + length;
        }
    }

    /* renamed from: a */
    public static String m2609a(byte[] bArr) {
        return String.valueOf(C6020bl.m3631a(bArr));
    }

    /* renamed from: b */
    public static final String m2608b(String str) {
        return m2610a(m2610a(m2610a(m2610a(m2610a(str, "&lt;", "<"), "&gt;", ">"), "&quot;", "\""), "&apos;", "'"), "&amp;", ContainerUtils.FIELD_DELIMITER);
    }
}
