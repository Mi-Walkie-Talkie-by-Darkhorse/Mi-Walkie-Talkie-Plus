package com.amap.api.col.sl;

/* compiled from: XXTEA */
public final class ay {
    private static int a = 4;

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        int[] iArr;
        if (bArr.length != 0) {
            int length = bArr.length;
            int i = a - (length % a);
            byte[] bArr3 = new byte[(((length / a) + 1) * a)];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            while (length < bArr3.length) {
                bArr3[length] = (byte) i;
                length++;
            }
            int[] a2 = a(bArr3);
            int[] a3 = a(bArr2);
            int length2 = a2.length - 1;
            if (length2 > 0) {
                if (a3.length < 4) {
                    iArr = new int[4];
                    System.arraycopy(a3, 0, iArr, 0, a3.length);
                } else {
                    iArr = a3;
                }
                int i2 = (52 / (length2 + 1)) + 6;
                int i3 = 0;
                int i4 = a2[length2];
                while (true) {
                    int i5 = i2 - 1;
                    if (i2 <= 0) {
                        break;
                    }
                    i3 -= 1640531527;
                    int i6 = (i3 >>> 2) & 3;
                    int i7 = 0;
                    while (i7 < length2) {
                        int i8 = a2[i7 + 1];
                        i4 = (((i4 ^ iArr[(i7 & 3) ^ i6]) + (i8 ^ i3)) ^ (((i4 >>> 5) ^ (i8 << 2)) + ((i8 >>> 3) ^ (i4 << 4)))) + a2[i7];
                        a2[i7] = i4;
                        i7++;
                    }
                    int i9 = a2[0];
                    i4 = a2[length2] + (((iArr[(i7 & 3) ^ i6] ^ i4) + (i9 ^ i3)) ^ (((i4 >>> 5) ^ (i9 << 2)) + ((i9 >>> 3) ^ (i4 << 4))));
                    a2[length2] = i4;
                    i2 = i5;
                }
            }
            int length3 = a2.length << 2;
            bArr = new byte[length3];
            for (int i10 = 0; i10 < length3; i10++) {
                bArr[i10] = (byte) ((a2[i10 >>> 2] >>> ((i10 & 3) << 3)) & 255);
            }
        }
        return bArr;
    }

    private static int[] a(byte[] bArr) {
        int[] iArr = new int[(bArr.length >>> 2)];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = i >>> 2;
            iArr[i2] = iArr[i2] | ((bArr[i] & 255) << ((i & 3) << 3));
        }
        return iArr;
    }
}
