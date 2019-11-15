package com.ksyun.ks3.a;

/* compiled from: ByteUtil */
public class a {
    public static int a(byte[] bArr, byte[] bArr2) {
        return a(bArr, 0, bArr.length, bArr2, 0, bArr2.length);
    }

    public static int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        int i5 = i + i2;
        int i6 = i3 + i4;
        while (i < i5 && i3 < i6) {
            byte b = bArr[i] & 255;
            byte b2 = bArr2[i3] & 255;
            if (b != b2) {
                return b - b2;
            }
            i++;
            i3++;
        }
        return i2 - i4;
    }
}
