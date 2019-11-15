package org.bouncycastle.crypto.engines;

import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

public class HC256Engine implements StreamCipher {
    private byte[] buf = new byte[4];
    private int cnt = 0;
    private int idx = 0;
    private boolean initialised;
    private byte[] iv;
    private byte[] key;
    private int[] p = new int[1024];
    private int[] q = new int[1024];

    private byte getByte() {
        if (this.idx == 0) {
            int step = step();
            this.buf[0] = (byte) (step & 255);
            int i = step >> 8;
            this.buf[1] = (byte) (i & 255);
            int i2 = i >> 8;
            this.buf[2] = (byte) (i2 & 255);
            this.buf[3] = (byte) ((i2 >> 8) & 255);
        }
        byte b = this.buf[this.idx];
        this.idx = (this.idx + 1) & 3;
        return b;
    }

    private void init() {
        if (this.key.length != 32 && this.key.length != 16) {
            throw new IllegalArgumentException("The key must be 128/256 bits long");
        } else if (this.iv.length < 16) {
            throw new IllegalArgumentException("The IV must be at least 128 bits long");
        } else {
            if (this.key.length != 32) {
                byte[] bArr = new byte[32];
                System.arraycopy(this.key, 0, bArr, 0, this.key.length);
                System.arraycopy(this.key, 0, bArr, 16, this.key.length);
                this.key = bArr;
            }
            if (this.iv.length < 32) {
                byte[] bArr2 = new byte[32];
                System.arraycopy(this.iv, 0, bArr2, 0, this.iv.length);
                System.arraycopy(this.iv, 0, bArr2, this.iv.length, bArr2.length - this.iv.length);
                this.iv = bArr2;
            }
            this.idx = 0;
            this.cnt = 0;
            int[] iArr = new int[2560];
            for (int i = 0; i < 32; i++) {
                int i2 = i >> 2;
                iArr[i2] = iArr[i2] | ((this.key[i] & 255) << ((i & 3) * 8));
            }
            for (int i3 = 0; i3 < 32; i3++) {
                int i4 = (i3 >> 2) + 8;
                iArr[i4] = iArr[i4] | ((this.iv[i3] & 255) << ((i3 & 3) * 8));
            }
            for (int i5 = 16; i5 < 2560; i5++) {
                int i6 = iArr[i5 - 2];
                int i7 = iArr[i5 - 15];
                iArr[i5] = ((i6 >>> 10) ^ (rotateRight(i6, 17) ^ rotateRight(i6, 19))) + iArr[i5 - 7] + ((i7 >>> 3) ^ (rotateRight(i7, 7) ^ rotateRight(i7, 18))) + iArr[i5 - 16] + i5;
            }
            System.arraycopy(iArr, 512, this.p, 0, 1024);
            System.arraycopy(iArr, 1536, this.q, 0, 1024);
            for (int i8 = 0; i8 < 4096; i8++) {
                step();
            }
            this.cnt = 0;
        }
    }

    private static int rotateRight(int i, int i2) {
        return (i >>> i2) | (i << (-i2));
    }

    private int step() {
        int i;
        int i2 = this.cnt & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW;
        if (this.cnt < 1024) {
            int i3 = this.p[(i2 - 3) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW];
            int i4 = this.p[(i2 - 1023) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW];
            int[] iArr = this.p;
            iArr[i2] = this.q[(i3 ^ i4) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW] + this.p[(i2 - 10) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW] + (rotateRight(i3, 10) ^ rotateRight(i4, 23)) + iArr[i2];
            int i5 = this.p[(i2 - 12) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW];
            i = this.p[i2] ^ (this.q[((i5 >> 24) & 255) + 768] + ((this.q[i5 & 255] + this.q[((i5 >> 8) & 255) + 256]) + this.q[((i5 >> 16) & 255) + 512]));
        } else {
            int i6 = this.q[(i2 - 3) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW];
            int i7 = this.q[(i2 - 1023) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW];
            int[] iArr2 = this.q;
            iArr2[i2] = this.p[(i6 ^ i7) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW] + this.q[(i2 - 10) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW] + (rotateRight(i6, 10) ^ rotateRight(i7, 23)) + iArr2[i2];
            int i8 = this.q[(i2 - 12) & GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW];
            i = this.q[i2] ^ (this.p[((i8 >> 24) & 255) + 768] + ((this.p[i8 & 255] + this.p[((i8 >> 8) & 255) + 256]) + this.p[((i8 >> 16) & 255) + 512]));
        }
        this.cnt = (this.cnt + 1) & 2047;
        return i;
    }

    public String getAlgorithmName() {
        return "HC-256";
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof ParametersWithIV) {
            this.iv = ((ParametersWithIV) cipherParameters).getIV();
            cipherParameters2 = ((ParametersWithIV) cipherParameters).getParameters();
        } else {
            this.iv = new byte[0];
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.key = ((KeyParameter) cipherParameters2).getKey();
            init();
            this.initialised = true;
            return;
        }
        throw new IllegalArgumentException("Invalid parameter passed to HC256 init - " + cipherParameters.getClass().getName());
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ getByte());
            }
            return i2;
        }
    }

    public void reset() {
        init();
    }

    public byte returnByte(byte b) {
        return (byte) (getByte() ^ b);
    }
}
