package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class Blake2bDigest implements ExtendedDigest {
    private static final int BLOCK_LENGTH_BYTES = 128;
    private static final long[] blake2b_IV = {7640891576956012808L, -4942790177534073029L, 4354685564936845355L, -6534734903238641935L, 5840696475078001361L, -7276294671716946913L, 2270897969802886507L, 6620516959819538809L};
    private static final byte[][] blake2b_sigma = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, HttpConstants.CR, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, HttpConstants.CR, 6, 1, 12, 0, 2, 11, 7, 5, 3}, new byte[]{11, 8, 12, 0, 5, 2, 15, HttpConstants.CR, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, HttpConstants.CR, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, HttpConstants.CR}, new byte[]{2, 12, 6, 10, 0, 11, 8, 3, 4, HttpConstants.CR, 7, 5, 15, 14, 1, 9}, new byte[]{12, 5, 1, 15, 14, HttpConstants.CR, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11}, new byte[]{HttpConstants.CR, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10}, new byte[]{6, 15, 14, 9, 11, 3, 0, 8, 12, 2, HttpConstants.CR, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, HttpConstants.CR, 0}, new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, HttpConstants.CR, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, HttpConstants.CR, 6, 1, 12, 0, 2, 11, 7, 5, 3}};
    private static int rOUNDS = 12;
    private byte[] buffer;
    private int bufferPos;
    private long[] chainValue;
    private int digestLength;
    private long f0;
    private long[] internalState;
    private byte[] key;
    private int keyLength;
    private byte[] personalization;
    private byte[] salt;
    private long t0;
    private long t1;

    public Blake2bDigest() {
        this(512);
    }

    public Blake2bDigest(int i) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.t0 = 0;
        this.t1 = 0;
        this.f0 = 0;
        if (i == 160 || i == 256 || i == 384 || i == 512) {
            this.buffer = new byte[128];
            this.keyLength = 0;
            this.digestLength = i / 8;
            init();
            return;
        }
        throw new IllegalArgumentException("Blake2b digest restricted to one of [160, 256, 384, 512]");
    }

    public Blake2bDigest(Blake2bDigest blake2bDigest) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.t0 = 0;
        this.t1 = 0;
        this.f0 = 0;
        this.bufferPos = blake2bDigest.bufferPos;
        this.buffer = Arrays.clone(blake2bDigest.buffer);
        this.keyLength = blake2bDigest.keyLength;
        this.key = Arrays.clone(blake2bDigest.key);
        this.digestLength = blake2bDigest.digestLength;
        this.chainValue = Arrays.clone(blake2bDigest.chainValue);
        this.personalization = Arrays.clone(this.personalization);
    }

    public Blake2bDigest(byte[] bArr) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.t0 = 0;
        this.t1 = 0;
        this.f0 = 0;
        this.buffer = new byte[128];
        if (bArr != null) {
            this.key = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.key, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.keyLength = bArr.length;
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        this.digestLength = 64;
        init();
    }

    public Blake2bDigest(byte[] bArr, int i, byte[] bArr2, byte[] bArr3) {
        this.digestLength = 64;
        this.keyLength = 0;
        this.salt = null;
        this.personalization = null;
        this.key = null;
        this.buffer = null;
        this.bufferPos = 0;
        this.internalState = new long[16];
        this.chainValue = null;
        this.t0 = 0;
        this.t1 = 0;
        this.f0 = 0;
        this.buffer = new byte[128];
        if (i < 1 || i > 64) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 64)");
        }
        this.digestLength = i;
        if (bArr2 != null) {
            if (bArr2.length != 16) {
                throw new IllegalArgumentException("salt length must be exactly 16 bytes");
            }
            this.salt = new byte[16];
            System.arraycopy(bArr2, 0, this.salt, 0, bArr2.length);
        }
        if (bArr3 != null) {
            if (bArr3.length != 16) {
                throw new IllegalArgumentException("personalization length must be exactly 16 bytes");
            }
            this.personalization = new byte[16];
            System.arraycopy(bArr3, 0, this.personalization, 0, bArr3.length);
        }
        if (bArr != null) {
            this.key = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.key, 0, bArr.length);
            if (bArr.length > 64) {
                throw new IllegalArgumentException("Keys > 64 are not supported");
            }
            this.keyLength = bArr.length;
            System.arraycopy(bArr, 0, this.buffer, 0, bArr.length);
            this.bufferPos = 128;
        }
        init();
    }

    private void G(long j, long j2, int i, int i2, int i3, int i4) {
        this.internalState[i] = this.internalState[i] + this.internalState[i2] + j;
        this.internalState[i4] = rotr64(this.internalState[i4] ^ this.internalState[i], 32);
        this.internalState[i3] = this.internalState[i3] + this.internalState[i4];
        this.internalState[i2] = rotr64(this.internalState[i2] ^ this.internalState[i3], 24);
        this.internalState[i] = this.internalState[i] + this.internalState[i2] + j2;
        this.internalState[i4] = rotr64(this.internalState[i4] ^ this.internalState[i], 16);
        this.internalState[i3] = this.internalState[i3] + this.internalState[i4];
        this.internalState[i2] = rotr64(this.internalState[i2] ^ this.internalState[i3], 63);
    }

    private final long bytes2long(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    private void compress(byte[] bArr, int i) {
        initializeInternalState();
        long[] jArr = new long[16];
        for (int i2 = 0; i2 < 16; i2++) {
            jArr[i2] = bytes2long(bArr, (i2 * 8) + i);
        }
        for (int i3 = 0; i3 < rOUNDS; i3++) {
            G(jArr[blake2b_sigma[i3][0]], jArr[blake2b_sigma[i3][1]], 0, 4, 8, 12);
            G(jArr[blake2b_sigma[i3][2]], jArr[blake2b_sigma[i3][3]], 1, 5, 9, 13);
            G(jArr[blake2b_sigma[i3][4]], jArr[blake2b_sigma[i3][5]], 2, 6, 10, 14);
            G(jArr[blake2b_sigma[i3][6]], jArr[blake2b_sigma[i3][7]], 3, 7, 11, 15);
            G(jArr[blake2b_sigma[i3][8]], jArr[blake2b_sigma[i3][9]], 0, 5, 10, 15);
            G(jArr[blake2b_sigma[i3][10]], jArr[blake2b_sigma[i3][11]], 1, 6, 11, 12);
            G(jArr[blake2b_sigma[i3][12]], jArr[blake2b_sigma[i3][13]], 2, 7, 8, 13);
            G(jArr[blake2b_sigma[i3][14]], jArr[blake2b_sigma[i3][15]], 3, 4, 9, 14);
        }
        for (int i4 = 0; i4 < this.chainValue.length; i4++) {
            this.chainValue[i4] = (this.chainValue[i4] ^ this.internalState[i4]) ^ this.internalState[i4 + 8];
        }
    }

    private void init() {
        if (this.chainValue == null) {
            this.chainValue = new long[8];
            this.chainValue[0] = blake2b_IV[0] ^ ((long) ((this.digestLength | (this.keyLength << 8)) | 16842752));
            this.chainValue[1] = blake2b_IV[1];
            this.chainValue[2] = blake2b_IV[2];
            this.chainValue[3] = blake2b_IV[3];
            this.chainValue[4] = blake2b_IV[4];
            this.chainValue[5] = blake2b_IV[5];
            if (this.salt != null) {
                long[] jArr = this.chainValue;
                jArr[4] = jArr[4] ^ bytes2long(this.salt, 0);
                long[] jArr2 = this.chainValue;
                jArr2[5] = jArr2[5] ^ bytes2long(this.salt, 8);
            }
            this.chainValue[6] = blake2b_IV[6];
            this.chainValue[7] = blake2b_IV[7];
            if (this.personalization != null) {
                long[] jArr3 = this.chainValue;
                jArr3[6] = jArr3[6] ^ bytes2long(this.personalization, 0);
                long[] jArr4 = this.chainValue;
                jArr4[7] = jArr4[7] ^ bytes2long(this.personalization, 8);
            }
        }
    }

    private void initializeInternalState() {
        System.arraycopy(this.chainValue, 0, this.internalState, 0, this.chainValue.length);
        System.arraycopy(blake2b_IV, 0, this.internalState, this.chainValue.length, 4);
        this.internalState[12] = this.t0 ^ blake2b_IV[4];
        this.internalState[13] = this.t1 ^ blake2b_IV[5];
        this.internalState[14] = this.f0 ^ blake2b_IV[6];
        this.internalState[15] = blake2b_IV[7];
    }

    private final byte[] long2bytes(long j) {
        return new byte[]{(byte) ((int) j), (byte) ((int) (j >> 8)), (byte) ((int) (j >> 16)), (byte) ((int) (j >> 24)), (byte) ((int) (j >> 32)), (byte) ((int) (j >> 40)), (byte) ((int) (j >> 48)), (byte) ((int) (j >> 56))};
    }

    private long rotr64(long j, int i) {
        return (j >>> i) | (j << (64 - i));
    }

    public void clearKey() {
        if (this.key != null) {
            Arrays.fill(this.key, 0);
            Arrays.fill(this.buffer, 0);
        }
    }

    public void clearSalt() {
        if (this.salt != null) {
            Arrays.fill(this.salt, 0);
        }
    }

    public int doFinal(byte[] bArr, int i) {
        this.f0 = -1;
        this.t0 += (long) this.bufferPos;
        if (this.t0 < 0 && ((long) this.bufferPos) > (-this.t0)) {
            this.t1++;
        }
        compress(this.buffer, 0);
        Arrays.fill(this.buffer, 0);
        Arrays.fill(this.internalState, 0);
        int i2 = 0;
        while (i2 < this.chainValue.length && i2 * 8 < this.digestLength) {
            byte[] long2bytes = long2bytes(this.chainValue[i2]);
            if (i2 * 8 < this.digestLength - 8) {
                System.arraycopy(long2bytes, 0, bArr, (i2 * 8) + i, 8);
            } else {
                System.arraycopy(long2bytes, 0, bArr, (i2 * 8) + i, this.digestLength - (i2 * 8));
            }
            i2++;
        }
        Arrays.fill(this.chainValue, 0);
        reset();
        return this.digestLength;
    }

    public String getAlgorithmName() {
        return "Blake2b";
    }

    public int getByteLength() {
        return 128;
    }

    public int getDigestSize() {
        return this.digestLength;
    }

    public void reset() {
        this.bufferPos = 0;
        this.f0 = 0;
        this.t0 = 0;
        this.t1 = 0;
        this.chainValue = null;
        if (this.key != null) {
            System.arraycopy(this.key, 0, this.buffer, 0, this.key.length);
            this.bufferPos = 128;
        }
        init();
    }

    public void update(byte b) {
        if (128 - this.bufferPos == 0) {
            this.t0 += 128;
            if (this.t0 == 0) {
                this.t1++;
            }
            compress(this.buffer, 0);
            Arrays.fill(this.buffer, 0);
            this.buffer[0] = b;
            this.bufferPos = 1;
            return;
        }
        this.buffer[this.bufferPos] = b;
        this.bufferPos++;
    }

    public void update(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr != null && i2 != 0) {
            if (this.bufferPos != 0) {
                i3 = 128 - this.bufferPos;
                if (i3 < i2) {
                    System.arraycopy(bArr, i, this.buffer, this.bufferPos, i3);
                    this.t0 += 128;
                    if (this.t0 == 0) {
                        this.t1++;
                    }
                    compress(this.buffer, 0);
                    this.bufferPos = 0;
                    Arrays.fill(this.buffer, 0);
                } else {
                    System.arraycopy(bArr, i, this.buffer, this.bufferPos, i2);
                    this.bufferPos += i2;
                    return;
                }
            } else {
                i3 = 0;
            }
            int i4 = (i + i2) - 128;
            int i5 = i3 + i;
            while (i5 < i4) {
                this.t0 += 128;
                if (this.t0 == 0) {
                    this.t1++;
                }
                compress(bArr, i5);
                i5 += 128;
            }
            System.arraycopy(bArr, i5, this.buffer, 0, (i + i2) - i5);
            this.bufferPos = ((i + i2) - i5) + this.bufferPos;
        }
    }
}
