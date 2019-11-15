package org.bouncycastle.crypto.modes.gcm;

import java.lang.reflect.Array;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

public class Tables8kGCMMultiplier implements GCMMultiplier {
    private byte[] H;
    private int[][][] M;

    public void init(byte[] bArr) {
        if (this.M == null) {
            this.M = (int[][][]) Array.newInstance(Integer.TYPE, new int[]{32, 16, 4});
        } else if (Arrays.areEqual(this.H, bArr)) {
            return;
        }
        this.H = Arrays.clone(bArr);
        GCMUtil.asInts(bArr, this.M[1][8]);
        for (int i = 4; i >= 1; i >>= 1) {
            GCMUtil.multiplyP(this.M[1][i + i], this.M[1][i]);
        }
        GCMUtil.multiplyP(this.M[1][1], this.M[0][8]);
        for (int i2 = 4; i2 >= 1; i2 >>= 1) {
            GCMUtil.multiplyP(this.M[0][i2 + i2], this.M[0][i2]);
        }
        int i3 = 0;
        while (true) {
            for (int i4 = 2; i4 < 16; i4 += i4) {
                for (int i5 = 1; i5 < i4; i5++) {
                    GCMUtil.xor(this.M[i3][i4], this.M[i3][i5], this.M[i3][i4 + i5]);
                }
            }
            i3++;
            if (i3 == 32) {
                return;
            }
            if (i3 > 1) {
                for (int i6 = 8; i6 > 0; i6 >>= 1) {
                    GCMUtil.multiplyP8(this.M[i3 - 2][i6], this.M[i3][i6]);
                }
            }
        }
    }

    public void multiplyH(byte[] bArr) {
        int[] iArr = new int[4];
        for (int i = 15; i >= 0; i--) {
            int[] iArr2 = this.M[i + i][bArr[i] & 15];
            iArr[0] = iArr[0] ^ iArr2[0];
            iArr[1] = iArr[1] ^ iArr2[1];
            iArr[2] = iArr[2] ^ iArr2[2];
            iArr[3] = iArr2[3] ^ iArr[3];
            int[] iArr3 = this.M[i + i + 1][(bArr[i] & 240) >>> 4];
            iArr[0] = iArr[0] ^ iArr3[0];
            iArr[1] = iArr[1] ^ iArr3[1];
            iArr[2] = iArr[2] ^ iArr3[2];
            iArr[3] = iArr3[3] ^ iArr[3];
        }
        Pack.intToBigEndian(iArr, bArr, 0);
    }
}
