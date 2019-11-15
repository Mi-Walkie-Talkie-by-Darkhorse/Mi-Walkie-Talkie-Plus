package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.MaxBytesExceededException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.SkippingStreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.Strings;

public class Salsa20Engine implements SkippingStreamCipher {
    public static final int DEFAULT_ROUNDS = 20;
    private static final int STATE_SIZE = 16;
    protected static final byte[] sigma = Strings.toByteArray("expand 32-byte k");
    protected static final byte[] tau = Strings.toByteArray("expand 16-byte k");
    private int cW0;
    private int cW1;
    private int cW2;
    protected int[] engineState;
    private int index;
    private boolean initialised;
    private byte[] keyStream;
    protected int rounds;
    protected int[] x;

    public Salsa20Engine() {
        this(20);
    }

    public Salsa20Engine(int i) {
        this.index = 0;
        this.engineState = new int[16];
        this.x = new int[16];
        this.keyStream = new byte[64];
        this.initialised = false;
        if (i <= 0 || (i & 1) != 0) {
            throw new IllegalArgumentException("'rounds' must be a positive, even number");
        }
        this.rounds = i;
    }

    private boolean limitExceeded() {
        int i = this.cW0 + 1;
        this.cW0 = i;
        if (i != 0) {
            return false;
        }
        int i2 = this.cW1 + 1;
        this.cW1 = i2;
        if (i2 != 0) {
            return false;
        }
        int i3 = this.cW2 + 1;
        this.cW2 = i3;
        return (i3 & 32) != 0;
    }

    private boolean limitExceeded(int i) {
        this.cW0 += i;
        if (this.cW0 >= i || this.cW0 < 0) {
            return false;
        }
        int i2 = this.cW1 + 1;
        this.cW1 = i2;
        if (i2 != 0) {
            return false;
        }
        int i3 = this.cW2 + 1;
        this.cW2 = i3;
        return (i3 & 32) != 0;
    }

    private void resetLimitCounter() {
        this.cW0 = 0;
        this.cW1 = 0;
        this.cW2 = 0;
    }

    protected static int rotl(int i, int i2) {
        return (i << i2) | (i >>> (-i2));
    }

    public static void salsaCore(int i, int[] iArr, int[] iArr2) {
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        } else if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        } else if (i % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        } else {
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = iArr[3];
            int i6 = iArr[4];
            int i7 = iArr[5];
            int i8 = iArr[6];
            int i9 = iArr[7];
            int i10 = iArr[8];
            int i11 = iArr[9];
            int i12 = iArr[10];
            int i13 = iArr[11];
            int i14 = iArr[12];
            int i15 = iArr[13];
            int i16 = iArr[14];
            int i17 = iArr[15];
            while (i > 0) {
                int rotl = i6 ^ rotl(i2 + i14, 7);
                int rotl2 = i10 ^ rotl(rotl + i2, 9);
                int rotl3 = i14 ^ rotl(rotl2 + rotl, 13);
                int rotl4 = i2 ^ rotl(rotl3 + rotl2, 18);
                int rotl5 = i11 ^ rotl(i7 + i3, 7);
                int rotl6 = i15 ^ rotl(rotl5 + i7, 9);
                int rotl7 = i3 ^ rotl(rotl6 + rotl5, 13);
                int rotl8 = i7 ^ rotl(rotl7 + rotl6, 18);
                int rotl9 = i16 ^ rotl(i12 + i8, 7);
                int rotl10 = i4 ^ rotl(rotl9 + i12, 9);
                int rotl11 = i8 ^ rotl(rotl10 + rotl9, 13);
                int rotl12 = i12 ^ rotl(rotl11 + rotl10, 18);
                int rotl13 = i5 ^ rotl(i17 + i13, 7);
                int rotl14 = i9 ^ rotl(rotl13 + i17, 9);
                int rotl15 = i13 ^ rotl(rotl14 + rotl13, 13);
                int rotl16 = i17 ^ rotl(rotl15 + rotl14, 18);
                i3 = rotl7 ^ rotl(rotl4 + rotl13, 7);
                i4 = rotl10 ^ rotl(i3 + rotl4, 9);
                i5 = rotl13 ^ rotl(i4 + i3, 13);
                i2 = rotl4 ^ rotl(i5 + i4, 18);
                i8 = rotl11 ^ rotl(rotl8 + rotl, 7);
                i9 = rotl14 ^ rotl(i8 + rotl8, 9);
                i6 = rotl ^ rotl(i9 + i8, 13);
                i7 = rotl8 ^ rotl(i6 + i9, 18);
                i13 = rotl15 ^ rotl(rotl12 + rotl5, 7);
                i10 = rotl2 ^ rotl(i13 + rotl12, 9);
                i11 = rotl5 ^ rotl(i10 + i13, 13);
                i12 = rotl12 ^ rotl(i11 + i10, 18);
                i14 = rotl3 ^ rotl(rotl16 + rotl9, 7);
                i15 = rotl6 ^ rotl(i14 + rotl16, 9);
                i16 = rotl9 ^ rotl(i15 + i14, 13);
                i17 = rotl16 ^ rotl(i16 + i15, 18);
                i -= 2;
            }
            iArr2[0] = i2 + iArr[0];
            iArr2[1] = i3 + iArr[1];
            iArr2[2] = i4 + iArr[2];
            iArr2[3] = i5 + iArr[3];
            iArr2[4] = i6 + iArr[4];
            iArr2[5] = i7 + iArr[5];
            iArr2[6] = i8 + iArr[6];
            iArr2[7] = i9 + iArr[7];
            iArr2[8] = i10 + iArr[8];
            iArr2[9] = i11 + iArr[9];
            iArr2[10] = i12 + iArr[10];
            iArr2[11] = i13 + iArr[11];
            iArr2[12] = i14 + iArr[12];
            iArr2[13] = i15 + iArr[13];
            iArr2[14] = i16 + iArr[14];
            iArr2[15] = i17 + iArr[15];
        }
    }

    /* access modifiers changed from: protected */
    public void advanceCounter() {
        int[] iArr = this.engineState;
        int i = iArr[8] + 1;
        iArr[8] = i;
        if (i == 0) {
            int[] iArr2 = this.engineState;
            iArr2[9] = iArr2[9] + 1;
        }
    }

    /* access modifiers changed from: protected */
    public void advanceCounter(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i > 0) {
            int[] iArr = this.engineState;
            iArr[9] = i + iArr[9];
        }
        int i3 = this.engineState[8];
        int[] iArr2 = this.engineState;
        iArr2[8] = i2 + iArr2[8];
        if (i3 != 0 && this.engineState[8] < i3) {
            int[] iArr3 = this.engineState;
            iArr3[9] = iArr3[9] + 1;
        }
    }

    /* access modifiers changed from: protected */
    public void generateKeyStream(byte[] bArr) {
        salsaCore(this.rounds, this.engineState, this.x);
        Pack.intToLittleEndian(this.x, bArr, 0);
    }

    public String getAlgorithmName() {
        String str = "Salsa20";
        return this.rounds != 20 ? str + "/" + this.rounds : str;
    }

    /* access modifiers changed from: protected */
    public long getCounter() {
        return (((long) this.engineState[9]) << 32) | (((long) this.engineState[8]) & 4294967295L);
    }

    /* access modifiers changed from: protected */
    public int getNonceSize() {
        return 8;
    }

    public long getPosition() {
        return (getCounter() * 64) + ((long) this.index);
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != getNonceSize()) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires exactly " + getNonceSize() + " bytes of IV");
        }
        CipherParameters parameters = parametersWithIV.getParameters();
        if (parameters == null) {
            if (!this.initialised) {
                throw new IllegalStateException(getAlgorithmName() + " KeyParameter can not be null for first initialisation");
            }
            setKey(null, iv);
        } else if (parameters instanceof KeyParameter) {
            setKey(((KeyParameter) parameters).getKey(), iv);
        } else {
            throw new IllegalArgumentException(getAlgorithmName() + " Init parameters must contain a KeyParameter (or null for re-init)");
        }
        reset();
        this.initialised = true;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else if (limitExceeded(i2)) {
            throw new MaxBytesExceededException("2^70 byte limit per IV would be exceeded; Change IV");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i4 + i3] = (byte) (this.keyStream[this.index] ^ bArr[i4 + i]);
                this.index = (this.index + 1) & 63;
                if (this.index == 0) {
                    advanceCounter();
                    generateKeyStream(this.keyStream);
                }
            }
            return i2;
        }
    }

    public void reset() {
        this.index = 0;
        resetLimitCounter();
        resetCounter();
        generateKeyStream(this.keyStream);
    }

    /* access modifiers changed from: protected */
    public void resetCounter() {
        int[] iArr = this.engineState;
        this.engineState[9] = 0;
        iArr[8] = 0;
    }

    /* access modifiers changed from: protected */
    public void retreatCounter() {
        if (this.engineState[8] == 0 && this.engineState[9] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int[] iArr = this.engineState;
        int i = iArr[8] - 1;
        iArr[8] = i;
        if (i == -1) {
            int[] iArr2 = this.engineState;
            iArr2[9] = iArr2[9] - 1;
        }
    }

    /* access modifiers changed from: protected */
    public void retreatCounter(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i != 0) {
            if ((((long) this.engineState[9]) & 4294967295L) >= (((long) i) & 4294967295L)) {
                int[] iArr = this.engineState;
                iArr[9] = iArr[9] - i;
            } else {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
        }
        if ((((long) this.engineState[8]) & 4294967295L) >= (((long) i2) & 4294967295L)) {
            int[] iArr2 = this.engineState;
            iArr2[8] = iArr2[8] - i2;
        } else if (this.engineState[9] != 0) {
            int[] iArr3 = this.engineState;
            iArr3[9] = iArr3[9] - 1;
            int[] iArr4 = this.engineState;
            iArr4[8] = iArr4[8] - i2;
        } else {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
    }

    public byte returnByte(byte b) {
        if (limitExceeded()) {
            throw new MaxBytesExceededException("2^70 byte limit per IV; Change IV");
        }
        byte b2 = (byte) (this.keyStream[this.index] ^ b);
        this.index = (this.index + 1) & 63;
        if (this.index == 0) {
            advanceCounter();
            generateKeyStream(this.keyStream);
        }
        return b2;
    }

    public long seekTo(long j) {
        reset();
        return skip(j);
    }

    /* access modifiers changed from: protected */
    public void setKey(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        int i = 16;
        if (bArr != null) {
            if (bArr.length == 16 || bArr.length == 32) {
                this.engineState[1] = Pack.littleEndianToInt(bArr, 0);
                this.engineState[2] = Pack.littleEndianToInt(bArr, 4);
                this.engineState[3] = Pack.littleEndianToInt(bArr, 8);
                this.engineState[4] = Pack.littleEndianToInt(bArr, 12);
                if (bArr.length == 32) {
                    bArr3 = sigma;
                } else {
                    bArr3 = tau;
                    i = 0;
                }
                this.engineState[11] = Pack.littleEndianToInt(bArr, i);
                this.engineState[12] = Pack.littleEndianToInt(bArr, i + 4);
                this.engineState[13] = Pack.littleEndianToInt(bArr, i + 8);
                this.engineState[14] = Pack.littleEndianToInt(bArr, i + 12);
                this.engineState[0] = Pack.littleEndianToInt(bArr3, 0);
                this.engineState[5] = Pack.littleEndianToInt(bArr3, 4);
                this.engineState[10] = Pack.littleEndianToInt(bArr3, 8);
                this.engineState[15] = Pack.littleEndianToInt(bArr3, 12);
            } else {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
        }
        this.engineState[6] = Pack.littleEndianToInt(bArr2, 0);
        this.engineState[7] = Pack.littleEndianToInt(bArr2, 4);
    }

    public long skip(long j) {
        long j2;
        if (j >= 0) {
            if (j >= 64) {
                long j3 = j / 64;
                advanceCounter(j3);
                j2 = j - (j3 * 64);
            } else {
                j2 = j;
            }
            int i = this.index;
            this.index = (((int) j2) + this.index) & 63;
            if (this.index < i) {
                advanceCounter();
            }
        } else {
            long j4 = -j;
            if (j4 >= 64) {
                long j5 = j4 / 64;
                retreatCounter(j5);
                j4 -= j5 * 64;
            }
            for (long j6 = 0; j6 < j4; j6++) {
                if (this.index == 0) {
                    retreatCounter();
                }
                this.index = (this.index - 1) & 63;
            }
        }
        generateKeyStream(this.keyStream);
        return j;
    }
}
