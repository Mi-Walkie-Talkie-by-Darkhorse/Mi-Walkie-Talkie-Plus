package org.bouncycastle.pqc.crypto.gmss.util;

import org.bouncycastle.crypto.Digest;

public class WinternitzOTSVerify {
    private Digest messDigestOTS;
    private int w;

    public WinternitzOTSVerify(Digest digest, int i) {
        this.w = i;
        this.messDigestOTS = digest;
    }

    public byte[] Verify(byte[] bArr, byte[] bArr2) {
        int digestSize = this.messDigestOTS.getDigestSize();
        byte[] bArr3 = new byte[digestSize];
        this.messDigestOTS.update(bArr, 0, bArr.length);
        byte[] bArr4 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr4, 0);
        int i = ((digestSize << 3) + (this.w - 1)) / this.w;
        int log = getLog((i << this.w) + 1);
        int i2 = ((((this.w + log) - 1) / this.w) + i) * digestSize;
        if (i2 != bArr2.length) {
            return null;
        }
        byte[] bArr5 = new byte[i2];
        byte b = 0;
        int i3 = 0;
        if (8 % this.w == 0) {
            int i4 = 8 / this.w;
            int i5 = (1 << this.w) - 1;
            byte[] bArr6 = new byte[digestSize];
            for (int i6 = 0; i6 < bArr4.length; i6++) {
                int i7 = 0;
                while (i7 < i4) {
                    byte b2 = bArr4[i6] & i5;
                    int i8 = b + b2;
                    System.arraycopy(bArr2, i3 * digestSize, bArr6, 0, digestSize);
                    for (int i9 = b2; i9 < i5; i9++) {
                        this.messDigestOTS.update(bArr6, 0, bArr6.length);
                        bArr6 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr6, 0);
                    }
                    System.arraycopy(bArr6, 0, bArr5, i3 * digestSize, digestSize);
                    bArr4[i6] = (byte) (bArr4[i6] >>> this.w);
                    i7++;
                    i3++;
                    b = i8;
                }
            }
            int i10 = (i << this.w) - b;
            int i11 = i3;
            int i12 = 0;
            byte[] bArr7 = bArr6;
            while (i12 < log) {
                System.arraycopy(bArr2, i11 * digestSize, bArr7, 0, digestSize);
                for (int i13 = i10 & i5; i13 < i5; i13++) {
                    this.messDigestOTS.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr7, 0);
                }
                System.arraycopy(bArr7, 0, bArr5, i11 * digestSize, digestSize);
                i10 >>>= this.w;
                i11++;
                i12 = this.w + i12;
            }
        } else if (this.w < 8) {
            int i14 = digestSize / this.w;
            int i15 = (1 << this.w) - 1;
            byte[] bArr8 = new byte[digestSize];
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i17 < i14) {
                long j = 0;
                for (int i20 = 0; i20 < this.w; i20++) {
                    j ^= (long) ((bArr4[i16] & 255) << (i20 << 3));
                    i16++;
                }
                int i21 = i19;
                int i22 = i18;
                byte[] bArr9 = bArr8;
                long j2 = j;
                byte[] bArr10 = bArr9;
                for (int i23 = 0; i23 < 8; i23++) {
                    int i24 = (int) (((long) i15) & j2);
                    i21 += i24;
                    System.arraycopy(bArr2, i22 * digestSize, bArr10, 0, digestSize);
                    while (i24 < i15) {
                        this.messDigestOTS.update(bArr10, 0, bArr10.length);
                        bArr10 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr10, 0);
                        i24++;
                    }
                    System.arraycopy(bArr10, 0, bArr5, i22 * digestSize, digestSize);
                    j2 >>>= this.w;
                    i22++;
                }
                i17++;
                bArr8 = bArr10;
                i18 = i22;
                i19 = i21;
            }
            int i25 = digestSize % this.w;
            long j3 = 0;
            for (int i26 = 0; i26 < i25; i26++) {
                j3 ^= (long) ((bArr4[i16] & 255) << (i26 << 3));
                i16++;
            }
            int i27 = i25 << 3;
            byte[] bArr11 = bArr8;
            long j4 = j3;
            int i28 = 0;
            int i29 = i18;
            long j5 = j4;
            while (i28 < i27) {
                int i30 = (int) (((long) i15) & j5);
                i19 += i30;
                System.arraycopy(bArr2, i29 * digestSize, bArr11, 0, digestSize);
                while (i30 < i15) {
                    this.messDigestOTS.update(bArr11, 0, bArr11.length);
                    bArr11 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr11, 0);
                    i30++;
                }
                System.arraycopy(bArr11, 0, bArr5, i29 * digestSize, digestSize);
                j5 >>>= this.w;
                i29++;
                i28 = this.w + i28;
            }
            int i31 = (i << this.w) - i19;
            int i32 = i29;
            int i33 = 0;
            byte[] bArr12 = bArr11;
            while (i33 < log) {
                System.arraycopy(bArr2, i32 * digestSize, bArr12, 0, digestSize);
                for (int i34 = i31 & i15; i34 < i15; i34++) {
                    this.messDigestOTS.update(bArr12, 0, bArr12.length);
                    bArr12 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr12, 0);
                }
                System.arraycopy(bArr12, 0, bArr5, i32 * digestSize, digestSize);
                i31 >>>= this.w;
                i32++;
                i33 = this.w + i33;
            }
        } else if (this.w < 57) {
            int i35 = (digestSize << 3) - this.w;
            int i36 = (1 << this.w) - 1;
            int i37 = 0;
            byte[] bArr13 = new byte[digestSize];
            int i38 = 0;
            int i39 = 0;
            while (i37 <= i35) {
                int i40 = i37 % 8;
                int i41 = i37 + this.w;
                long j6 = 0;
                int i42 = 0;
                for (int i43 = i37 >>> 3; i43 < ((i41 + 7) >>> 3); i43++) {
                    j6 ^= (long) ((bArr4[i43] & 255) << (i42 << 3));
                    i42++;
                }
                long j7 = (j6 >>> i40) & ((long) i36);
                int i44 = (int) (((long) i39) + j7);
                System.arraycopy(bArr2, i38 * digestSize, bArr13, 0, digestSize);
                for (long j8 = j7; j8 < ((long) i36); j8++) {
                    this.messDigestOTS.update(bArr13, 0, bArr13.length);
                    bArr13 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr13, 0);
                }
                System.arraycopy(bArr13, 0, bArr5, i38 * digestSize, digestSize);
                i38++;
                i37 = i41;
                i39 = i44;
            }
            int i45 = i37 >>> 3;
            if (i45 < digestSize) {
                int i46 = i37 % 8;
                long j9 = 0;
                int i47 = 0;
                while (i45 < digestSize) {
                    j9 ^= (long) ((bArr4[i45] & 255) << (i47 << 3));
                    i47++;
                    i45++;
                }
                long j10 = (j9 >>> i46) & ((long) i36);
                i39 = (int) (((long) i39) + j10);
                System.arraycopy(bArr2, i38 * digestSize, bArr13, 0, digestSize);
                while (j10 < ((long) i36)) {
                    this.messDigestOTS.update(bArr13, 0, bArr13.length);
                    bArr13 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr13, 0);
                    j10++;
                }
                System.arraycopy(bArr13, 0, bArr5, i38 * digestSize, digestSize);
                i38++;
            }
            int i48 = i38;
            int i49 = (i << this.w) - i39;
            int i50 = 0;
            byte[] bArr14 = bArr13;
            while (i50 < log) {
                System.arraycopy(bArr2, i48 * digestSize, bArr14, 0, digestSize);
                for (long j11 = (long) (i49 & i36); j11 < ((long) i36); j11++) {
                    this.messDigestOTS.update(bArr14, 0, bArr14.length);
                    bArr14 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr14, 0);
                }
                System.arraycopy(bArr14, 0, bArr5, i48 * digestSize, digestSize);
                i49 >>>= this.w;
                i50 = this.w + i50;
                i48++;
            }
        }
        byte[] bArr15 = new byte[digestSize];
        this.messDigestOTS.update(bArr5, 0, bArr5.length);
        byte[] bArr16 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr16, 0);
        return bArr16;
    }

    public int getLog(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    public int getSignatureLength() {
        int digestSize = this.messDigestOTS.getDigestSize();
        int i = ((digestSize << 3) + (this.w - 1)) / this.w;
        return digestSize * (i + (((getLog((i << this.w) + 1) + this.w) - 1) / this.w));
    }
}
