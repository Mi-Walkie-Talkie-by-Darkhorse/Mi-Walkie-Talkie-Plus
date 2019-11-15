package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Memoable;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class MD2Digest implements ExtendedDigest, Memoable {
    private static final int DIGEST_LENGTH = 16;
    private static final byte[] S = {41, 46, 67, -55, -94, -40, 124, 1, HttpConstants.EQUALS, 54, 84, -95, -20, -16, 6, 19, 98, -89, 5, -13, -64, -57, 115, -116, -104, -109, 43, -39, PSSSigner.TRAILER_IMPLICIT, 76, -126, -54, 30, -101, 87, 60, -3, -44, -32, 22, 103, 66, 111, 24, -118, 23, -27, 18, -66, 78, -60, -42, -38, -98, -34, 73, -96, -5, -11, -114, -69, 47, -18, 122, -87, 104, 121, -111, 21, -78, 7, 63, -108, -62, Tnaf.POW_2_WIDTH, -119, 11, HttpConstants.DOUBLE_QUOTE, 95, 33, Byte.MIN_VALUE, Byte.MAX_VALUE, 93, -102, 90, -112, 50, 39, 53, 62, -52, -25, -65, -9, -105, 3, -1, 25, 48, -77, 72, -91, -75, -47, -41, 94, -110, 42, -84, 86, -86, -58, 79, -72, 56, -46, -106, -92, 125, -74, 118, -4, 107, -30, -100, 116, 4, -15, 69, -99, 112, 89, 100, 113, -121, HttpConstants.SP, -122, 91, -49, 101, -26, 45, -88, 2, 27, 96, 37, -83, -82, -80, -71, -10, 28, 70, 97, 105, 52, 64, 126, 15, 85, 71, -93, 35, -35, 81, -81, HttpConstants.COLON, -61, 92, -7, -50, -70, -59, -22, 38, HttpConstants.COMMA, 83, HttpConstants.CR, 110, -123, 40, -124, 9, -45, -33, -51, -12, 65, -127, 77, 82, 106, -36, 55, -56, 108, -63, -85, -6, 36, -31, 123, 8, 12, -67, -79, 74, 120, -120, -107, -117, -29, 99, -24, 109, -23, -53, -43, -2, HttpConstants.SEMICOLON, 0, 29, 57, -14, -17, -73, 14, 102, 88, -48, -28, -90, 119, 114, -8, -21, 117, 75, 10, 49, 68, 80, -76, -113, -19, 31, 26, -37, -103, -115, 51, -97, 17, -125, 20};
    private byte[] C = new byte[16];
    private int COff;
    private byte[] M = new byte[16];
    private byte[] X = new byte[48];
    private int mOff;
    private int xOff;

    public MD2Digest() {
        reset();
    }

    public MD2Digest(MD2Digest mD2Digest) {
        copyIn(mD2Digest);
    }

    private void copyIn(MD2Digest mD2Digest) {
        System.arraycopy(mD2Digest.X, 0, this.X, 0, mD2Digest.X.length);
        this.xOff = mD2Digest.xOff;
        System.arraycopy(mD2Digest.M, 0, this.M, 0, mD2Digest.M.length);
        this.mOff = mD2Digest.mOff;
        System.arraycopy(mD2Digest.C, 0, this.C, 0, mD2Digest.C.length);
        this.COff = mD2Digest.COff;
    }

    public Memoable copy() {
        return new MD2Digest(this);
    }

    public int doFinal(byte[] bArr, int i) {
        byte length = (byte) (this.M.length - this.mOff);
        for (int i2 = this.mOff; i2 < this.M.length; i2++) {
            this.M[i2] = length;
        }
        processCheckSum(this.M);
        processBlock(this.M);
        processBlock(this.C);
        System.arraycopy(this.X, this.xOff, bArr, i, 16);
        reset();
        return 16;
    }

    public String getAlgorithmName() {
        return "MD2";
    }

    public int getByteLength() {
        return 16;
    }

    public int getDigestSize() {
        return 16;
    }

    /* JADX WARNING: type inference failed for: r0v7, types: [int] */
    /* JADX WARNING: type inference failed for: r3v2 */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void processBlock(byte[] r8) {
        /*
            r7 = this;
            r1 = 0
            r0 = r1
        L_0x0002:
            r2 = 16
            if (r0 >= r2) goto L_0x001f
            byte[] r2 = r7.X
            int r3 = r0 + 16
            byte r4 = r8[r0]
            r2[r3] = r4
            byte[] r2 = r7.X
            int r3 = r0 + 32
            byte r4 = r8[r0]
            byte[] r5 = r7.X
            byte r5 = r5[r0]
            r4 = r4 ^ r5
            byte r4 = (byte) r4
            r2[r3] = r4
            int r0 = r0 + 1
            goto L_0x0002
        L_0x001f:
            r3 = r1
            r0 = r1
        L_0x0021:
            r2 = 18
            if (r3 >= r2) goto L_0x0045
            r2 = r0
            r0 = r1
        L_0x0027:
            r4 = 48
            if (r0 >= r4) goto L_0x003c
            byte[] r4 = r7.X
            byte r5 = r4[r0]
            byte[] r6 = S
            byte r2 = r6[r2]
            r2 = r2 ^ r5
            byte r2 = (byte) r2
            r4[r0] = r2
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r0 = r0 + 1
            goto L_0x0027
        L_0x003c:
            int r0 = r2 + r3
            int r2 = r0 % 256
            int r0 = r3 + 1
            r3 = r0
            r0 = r2
            goto L_0x0021
        L_0x0045:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.digests.MD2Digest.processBlock(byte[]):void");
    }

    /* access modifiers changed from: protected */
    public void processCheckSum(byte[] bArr) {
        byte b = this.C[15];
        for (int i = 0; i < 16; i++) {
            byte[] bArr2 = this.C;
            bArr2[i] = (byte) (S[(b ^ bArr[i]) & 255] ^ bArr2[i]);
            b = this.C[i];
        }
    }

    public void reset() {
        this.xOff = 0;
        for (int i = 0; i != this.X.length; i++) {
            this.X[i] = 0;
        }
        this.mOff = 0;
        for (int i2 = 0; i2 != this.M.length; i2++) {
            this.M[i2] = 0;
        }
        this.COff = 0;
        for (int i3 = 0; i3 != this.C.length; i3++) {
            this.C[i3] = 0;
        }
    }

    public void reset(Memoable memoable) {
        copyIn((MD2Digest) memoable);
    }

    public void update(byte b) {
        byte[] bArr = this.M;
        int i = this.mOff;
        this.mOff = i + 1;
        bArr[i] = b;
        if (this.mOff == 16) {
            processCheckSum(this.M);
            processBlock(this.M);
            this.mOff = 0;
        }
    }

    public void update(byte[] bArr, int i, int i2) {
        while (this.mOff != 0 && i2 > 0) {
            update(bArr[i]);
            i++;
            i2--;
        }
        int i3 = i2;
        int i4 = i;
        while (i3 > 16) {
            System.arraycopy(bArr, i4, this.M, 0, 16);
            processCheckSum(this.M);
            processBlock(this.M);
            i3 -= 16;
            i4 += 16;
        }
        while (i3 > 0) {
            update(bArr[i4]);
            i4++;
            i3--;
        }
    }
}
