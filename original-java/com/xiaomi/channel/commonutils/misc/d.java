package com.xiaomi.channel.commonutils.misc;

public class d {
    static final char[] a = "0123456789ABCDEF".toCharArray();

    public static String a(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder(i2 * 2);
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = bArr[i + i3] & 255;
            sb.append(a[b >> 4]);
            sb.append(a[b & 15]);
        }
        return sb.toString();
    }
}
