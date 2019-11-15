package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.util.Arrays;

public class KeccakDigest implements ExtendedDigest {
    private static int[] KeccakRhoOffsets = keccakInitializeRhoOffsets();
    private static long[] KeccakRoundConstants = keccakInitializeRoundConstants();
    long[] C;
    protected int bitsAvailableForSqueezing;
    protected int bitsInQueue;
    long[] chiC;
    protected byte[] chunk;
    protected byte[] dataQueue;
    protected int fixedOutputLength;
    protected byte[] oneByte;
    protected int rate;
    protected boolean squeezing;
    protected byte[] state;
    long[] tempA;

    public KeccakDigest() {
        this(288);
    }

    public KeccakDigest(int i) {
        this.state = new byte[200];
        this.dataQueue = new byte[192];
        this.C = new long[5];
        this.tempA = new long[25];
        this.chiC = new long[5];
        init(i);
    }

    public KeccakDigest(KeccakDigest keccakDigest) {
        this.state = new byte[200];
        this.dataQueue = new byte[192];
        this.C = new long[5];
        this.tempA = new long[25];
        this.chiC = new long[5];
        System.arraycopy(keccakDigest.state, 0, this.state, 0, keccakDigest.state.length);
        System.arraycopy(keccakDigest.dataQueue, 0, this.dataQueue, 0, keccakDigest.dataQueue.length);
        this.rate = keccakDigest.rate;
        this.bitsInQueue = keccakDigest.bitsInQueue;
        this.fixedOutputLength = keccakDigest.fixedOutputLength;
        this.squeezing = keccakDigest.squeezing;
        this.bitsAvailableForSqueezing = keccakDigest.bitsAvailableForSqueezing;
        this.chunk = Arrays.clone(keccakDigest.chunk);
        this.oneByte = Arrays.clone(keccakDigest.oneByte);
    }

    private void KeccakAbsorb(byte[] bArr, byte[] bArr2, int i) {
        keccakPermutationAfterXor(bArr, bArr2, i);
    }

    private void KeccakExtract(byte[] bArr, byte[] bArr2, int i) {
        System.arraycopy(bArr, 0, bArr2, 0, i * 8);
    }

    private void KeccakExtract1024bits(byte[] bArr, byte[] bArr2) {
        System.arraycopy(bArr, 0, bArr2, 0, 128);
    }

    private static boolean LFSR86540(byte[] bArr) {
        boolean z = (bArr[0] & 1) != 0;
        if ((bArr[0] & 128) != 0) {
            bArr[0] = (byte) ((bArr[0] << 1) ^ 113);
        } else {
            bArr[0] = (byte) (bArr[0] << 1);
        }
        return z;
    }

    private void absorbQueue() {
        KeccakAbsorb(this.state, this.dataQueue, this.rate / 8);
        this.bitsInQueue = 0;
    }

    private void chi(long[] jArr) {
        for (int i = 0; i < 5; i++) {
            for (int i2 = 0; i2 < 5; i2++) {
                this.chiC[i2] = jArr[(i * 5) + i2] ^ ((jArr[((i2 + 1) % 5) + (i * 5)] ^ -1) & jArr[((i2 + 2) % 5) + (i * 5)]);
            }
            for (int i3 = 0; i3 < 5; i3++) {
                jArr[(i * 5) + i3] = this.chiC[i3];
            }
        }
    }

    private void clearDataQueueSection(int i, int i2) {
        for (int i3 = i; i3 != i + i2; i3++) {
            this.dataQueue[i3] = 0;
        }
    }

    private void fromBytesToWords(long[] jArr, byte[] bArr) {
        for (int i = 0; i < 25; i++) {
            jArr[i] = 0;
            int i2 = i * 8;
            for (int i3 = 0; i3 < 8; i3++) {
                jArr[i] = jArr[i] | ((((long) bArr[i2 + i3]) & 255) << (i3 * 8));
            }
        }
    }

    private void fromWordsToBytes(byte[] bArr, long[] jArr) {
        for (int i = 0; i < 25; i++) {
            int i2 = i * 8;
            for (int i3 = 0; i3 < 8; i3++) {
                bArr[i2 + i3] = (byte) ((int) ((jArr[i] >>> (i3 * 8)) & 255));
            }
        }
    }

    private void init(int i) {
        switch (i) {
            case 128:
                initSponge(1344, 256);
                return;
            case 224:
                initSponge(1152, 448);
                return;
            case 256:
                initSponge(1088, 512);
                return;
            case 288:
                initSponge(1024, 576);
                return;
            case 384:
                initSponge(832, 768);
                return;
            case 512:
                initSponge(576, 1024);
                return;
            default:
                throw new IllegalArgumentException("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
        }
    }

    private void initSponge(int i, int i2) {
        if (i + i2 != 1600) {
            throw new IllegalStateException("rate + capacity != 1600");
        } else if (i <= 0 || i >= 1600 || i % 64 != 0) {
            throw new IllegalStateException("invalid rate value");
        } else {
            this.rate = i;
            Arrays.fill(this.state, 0);
            Arrays.fill(this.dataQueue, 0);
            this.bitsInQueue = 0;
            this.squeezing = false;
            this.bitsAvailableForSqueezing = 0;
            this.fixedOutputLength = i2 / 2;
            this.chunk = new byte[(i / 8)];
            this.oneByte = new byte[1];
        }
    }

    private void iota(long[] jArr, int i) {
        jArr[0] = jArr[0] ^ KeccakRoundConstants[i];
    }

    private static int[] keccakInitializeRhoOffsets() {
        int i = 0;
        int[] iArr = new int[25];
        iArr[0] = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < 24) {
            iArr[(i2 % 5) + ((i3 % 5) * 5)] = (((i + 1) * (i + 2)) / 2) % 64;
            i3 = ((i3 * 3) + (i2 * 2)) % 5;
            i++;
            i2 = ((i2 * 0) + (i3 * 1)) % 5;
        }
        return iArr;
    }

    private static long[] keccakInitializeRoundConstants() {
        long[] jArr = new long[24];
        byte[] bArr = {1};
        for (int i = 0; i < 24; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 7; i2++) {
                int i3 = (1 << i2) - 1;
                if (LFSR86540(bArr)) {
                    jArr[i] = jArr[i] ^ (1 << i3);
                }
            }
        }
        return jArr;
    }

    private void keccakPermutation(byte[] bArr) {
        long[] jArr = new long[(bArr.length / 8)];
        fromBytesToWords(jArr, bArr);
        keccakPermutationOnWords(jArr);
        fromWordsToBytes(bArr, jArr);
    }

    private void keccakPermutationAfterXor(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
        keccakPermutation(bArr);
    }

    private void keccakPermutationOnWords(long[] jArr) {
        for (int i = 0; i < 24; i++) {
            theta(jArr);
            rho(jArr);
            pi(jArr);
            chi(jArr);
            iota(jArr, i);
        }
    }

    private void padAndSwitchToSqueezingPhase() {
        if (this.bitsInQueue + 1 == this.rate) {
            byte[] bArr = this.dataQueue;
            int i = this.bitsInQueue / 8;
            bArr[i] = (byte) (bArr[i] | (1 << (this.bitsInQueue % 8)));
            absorbQueue();
            clearDataQueueSection(0, this.rate / 8);
        } else {
            clearDataQueueSection((this.bitsInQueue + 7) / 8, (this.rate / 8) - ((this.bitsInQueue + 7) / 8));
            byte[] bArr2 = this.dataQueue;
            int i2 = this.bitsInQueue / 8;
            bArr2[i2] = (byte) (bArr2[i2] | (1 << (this.bitsInQueue % 8)));
        }
        byte[] bArr3 = this.dataQueue;
        int i3 = (this.rate - 1) / 8;
        bArr3[i3] = (byte) (bArr3[i3] | (1 << ((this.rate - 1) % 8)));
        absorbQueue();
        if (this.rate == 1024) {
            KeccakExtract1024bits(this.state, this.dataQueue);
            this.bitsAvailableForSqueezing = 1024;
        } else {
            KeccakExtract(this.state, this.dataQueue, this.rate / 64);
            this.bitsAvailableForSqueezing = this.rate;
        }
        this.squeezing = true;
    }

    private void pi(long[] jArr) {
        System.arraycopy(jArr, 0, this.tempA, 0, this.tempA.length);
        for (int i = 0; i < 5; i++) {
            for (int i2 = 0; i2 < 5; i2++) {
                jArr[((((i * 2) + (i2 * 3)) % 5) * 5) + i2] = this.tempA[(i2 * 5) + i];
            }
        }
    }

    private void rho(long[] jArr) {
        for (int i = 0; i < 5; i++) {
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = i + (i2 * 5);
                jArr[i3] = KeccakRhoOffsets[i3] != 0 ? (jArr[i3] << KeccakRhoOffsets[i3]) ^ (jArr[i3] >>> (64 - KeccakRhoOffsets[i3])) : jArr[i3];
            }
        }
    }

    private void theta(long[] jArr) {
        for (int i = 0; i < 5; i++) {
            this.C[i] = 0;
            for (int i2 = 0; i2 < 5; i2++) {
                long[] jArr2 = this.C;
                jArr2[i] = jArr2[i] ^ jArr[(i2 * 5) + i];
            }
        }
        for (int i3 = 0; i3 < 5; i3++) {
            long j = ((this.C[(i3 + 1) % 5] << 1) ^ (this.C[(i3 + 1) % 5] >>> 63)) ^ this.C[(i3 + 4) % 5];
            for (int i4 = 0; i4 < 5; i4++) {
                int i5 = (i4 * 5) + i3;
                jArr[i5] = jArr[i5] ^ j;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void absorb(byte[] bArr, int i, long j) {
        if (this.bitsInQueue % 8 != 0) {
            throw new IllegalStateException("attempt to absorb with odd length queue.");
        } else if (this.squeezing) {
            throw new IllegalStateException("attempt to absorb while squeezing.");
        } else {
            long j2 = 0;
            while (true) {
                long j3 = j2;
                if (j3 >= j) {
                    return;
                }
                if (this.bitsInQueue != 0 || j < ((long) this.rate) || j3 > j - ((long) this.rate)) {
                    int i2 = (int) (j - j3);
                    if (this.bitsInQueue + i2 > this.rate) {
                        i2 = this.rate - this.bitsInQueue;
                    }
                    int i3 = i2 % 8;
                    int i4 = i2 - i3;
                    System.arraycopy(bArr, ((int) (j3 / 8)) + i, this.dataQueue, this.bitsInQueue / 8, i4 / 8);
                    this.bitsInQueue += i4;
                    j2 = ((long) i4) + j3;
                    if (this.bitsInQueue == this.rate) {
                        absorbQueue();
                    }
                    if (i3 > 0) {
                        this.dataQueue[this.bitsInQueue / 8] = (byte) (((1 << i3) - 1) & bArr[((int) (j2 / 8)) + i]);
                        this.bitsInQueue += i3;
                        j2 += (long) i3;
                    }
                } else {
                    long j4 = (j - j3) / ((long) this.rate);
                    for (long j5 = 0; j5 < j4; j5++) {
                        System.arraycopy(bArr, (int) (((long) i) + (j3 / 8) + (((long) this.chunk.length) * j5)), this.chunk, 0, this.chunk.length);
                        KeccakAbsorb(this.state, this.chunk, this.chunk.length);
                    }
                    j2 = (((long) this.rate) * j4) + j3;
                }
            }
        }
    }

    public int doFinal(byte[] bArr, int i) {
        squeeze(bArr, i, (long) this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    /* access modifiers changed from: protected */
    public int doFinal(byte[] bArr, int i, byte b, int i2) {
        if (i2 > 0) {
            this.oneByte[0] = b;
            absorb(this.oneByte, 0, (long) i2);
        }
        squeeze(bArr, i, (long) this.fixedOutputLength);
        reset();
        return getDigestSize();
    }

    public String getAlgorithmName() {
        return "Keccak-" + this.fixedOutputLength;
    }

    public int getByteLength() {
        return this.rate / 8;
    }

    public int getDigestSize() {
        return this.fixedOutputLength / 8;
    }

    public void reset() {
        init(this.fixedOutputLength);
    }

    /* access modifiers changed from: protected */
    public void squeeze(byte[] bArr, int i, long j) {
        if (!this.squeezing) {
            padAndSwitchToSqueezingPhase();
        }
        if (j % 8 != 0) {
            throw new IllegalStateException("outputLength not a multiple of 8");
        }
        long j2 = 0;
        while (true) {
            long j3 = j2;
            if (j3 < j) {
                if (this.bitsAvailableForSqueezing == 0) {
                    keccakPermutation(this.state);
                    if (this.rate == 1024) {
                        KeccakExtract1024bits(this.state, this.dataQueue);
                        this.bitsAvailableForSqueezing = 1024;
                    } else {
                        KeccakExtract(this.state, this.dataQueue, this.rate / 64);
                        this.bitsAvailableForSqueezing = this.rate;
                    }
                }
                int i2 = this.bitsAvailableForSqueezing;
                if (((long) i2) > j - j3) {
                    i2 = (int) (j - j3);
                }
                System.arraycopy(this.dataQueue, (this.rate - this.bitsAvailableForSqueezing) / 8, bArr, ((int) (j3 / 8)) + i, i2 / 8);
                this.bitsAvailableForSqueezing -= i2;
                j2 = ((long) i2) + j3;
            } else {
                return;
            }
        }
    }

    public void update(byte b) {
        this.oneByte[0] = b;
        absorb(this.oneByte, 0, 8);
    }

    public void update(byte[] bArr, int i, int i2) {
        absorb(bArr, i, ((long) i2) * 8);
    }
}
