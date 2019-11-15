package org.bouncycastle.crypto.modes.gcm;

import java.lang.reflect.Array;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

public class Tables64kGCMMultiplier implements GCMMultiplier {
    private byte[] H;
    private int[][][] M;

    public void init(byte[] bArr) {
        if (this.M == null) {
            this.M = (int[][][]) Array.newInstance(Integer.TYPE, new int[]{16, 256, 4});
        } else if (Arrays.areEqual(this.H, bArr)) {
            return;
        }
        this.H = Arrays.clone(bArr);
        GCMUtil.asInts(bArr, this.M[0][128]);
        for (int i = 64; i >= 1; i >>= 1) {
            GCMUtil.multiplyP(this.M[0][i + i], this.M[0][i]);
        }
        int i2 = 0;
        while (true) {
            for (int i3 = 2; i3 < 256; i3 += i3) {
                for (int i4 = 1; i4 < i3; i4++) {
                    GCMUtil.xor(this.M[i2][i3], this.M[i2][i4], this.M[i2][i3 + i4]);
                }
            }
            i2++;
            if (i2 != 16) {
                for (int i5 = 128; i5 > 0; i5 >>= 1) {
                    GCMUtil.multiplyP8(this.M[i2 - 1][i5], this.M[i2][i5]);
                }
            } else {
                return;
            }
        }
    }

    public void multiplyH(byte[] bArr) {
        int[] iArr = new int[4];
        for (int i = 15; i >= 0; i--) {
            int[] iArr2 = this.M[i][bArr[i] & 255];
            iArr[0] = iArr[0] ^ iArr2[0];
            iArr[1] = iArr[1] ^ iArr2[1];
            iArr[2] = iArr[2] ^ iArr2[2];
            iArr[3] = iArr2[3] ^ iArr[3];
        }
        Pack.intToBigEndian(iArr, bArr, 0);
    }
}
