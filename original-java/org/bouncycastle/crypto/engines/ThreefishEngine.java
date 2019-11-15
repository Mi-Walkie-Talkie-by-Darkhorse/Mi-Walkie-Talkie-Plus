package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.TweakableBlockCipherParameters;

public class ThreefishEngine implements BlockCipher {
    public static final int BLOCKSIZE_1024 = 1024;
    public static final int BLOCKSIZE_256 = 256;
    public static final int BLOCKSIZE_512 = 512;
    private static final long C_240 = 2004413935125273122L;
    private static final int MAX_ROUNDS = 80;
    /* access modifiers changed from: private */
    public static int[] MOD17 = new int[MOD9.length];
    /* access modifiers changed from: private */
    public static int[] MOD3 = new int[MOD9.length];
    /* access modifiers changed from: private */
    public static int[] MOD5 = new int[MOD9.length];
    /* access modifiers changed from: private */
    public static int[] MOD9 = new int[80];
    private static final int ROUNDS_1024 = 80;
    private static final int ROUNDS_256 = 72;
    private static final int ROUNDS_512 = 72;
    private static final int TWEAK_SIZE_BYTES = 16;
    private static final int TWEAK_SIZE_WORDS = 2;
    private int blocksizeBytes;
    private int blocksizeWords;
    private ThreefishCipher cipher;
    private long[] currentBlock;
    private boolean forEncryption;
    private long[] kw;
    private long[] t = new long[5];

    private static final class Threefish1024Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 24;
        private static final int ROTATION_0_1 = 13;
        private static final int ROTATION_0_2 = 8;
        private static final int ROTATION_0_3 = 47;
        private static final int ROTATION_0_4 = 8;
        private static final int ROTATION_0_5 = 17;
        private static final int ROTATION_0_6 = 22;
        private static final int ROTATION_0_7 = 37;
        private static final int ROTATION_1_0 = 38;
        private static final int ROTATION_1_1 = 19;
        private static final int ROTATION_1_2 = 10;
        private static final int ROTATION_1_3 = 55;
        private static final int ROTATION_1_4 = 49;
        private static final int ROTATION_1_5 = 18;
        private static final int ROTATION_1_6 = 23;
        private static final int ROTATION_1_7 = 52;
        private static final int ROTATION_2_0 = 33;
        private static final int ROTATION_2_1 = 4;
        private static final int ROTATION_2_2 = 51;
        private static final int ROTATION_2_3 = 13;
        private static final int ROTATION_2_4 = 34;
        private static final int ROTATION_2_5 = 41;
        private static final int ROTATION_2_6 = 59;
        private static final int ROTATION_2_7 = 17;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 20;
        private static final int ROTATION_3_2 = 48;
        private static final int ROTATION_3_3 = 41;
        private static final int ROTATION_3_4 = 47;
        private static final int ROTATION_3_5 = 28;
        private static final int ROTATION_3_6 = 16;
        private static final int ROTATION_3_7 = 25;
        private static final int ROTATION_4_0 = 41;
        private static final int ROTATION_4_1 = 9;
        private static final int ROTATION_4_2 = 37;
        private static final int ROTATION_4_3 = 31;
        private static final int ROTATION_4_4 = 12;
        private static final int ROTATION_4_5 = 47;
        private static final int ROTATION_4_6 = 44;
        private static final int ROTATION_4_7 = 30;
        private static final int ROTATION_5_0 = 16;
        private static final int ROTATION_5_1 = 34;
        private static final int ROTATION_5_2 = 56;
        private static final int ROTATION_5_3 = 51;
        private static final int ROTATION_5_4 = 4;
        private static final int ROTATION_5_5 = 53;
        private static final int ROTATION_5_6 = 42;
        private static final int ROTATION_5_7 = 41;
        private static final int ROTATION_6_0 = 31;
        private static final int ROTATION_6_1 = 44;
        private static final int ROTATION_6_2 = 47;
        private static final int ROTATION_6_3 = 46;
        private static final int ROTATION_6_4 = 19;
        private static final int ROTATION_6_5 = 42;
        private static final int ROTATION_6_6 = 44;
        private static final int ROTATION_6_7 = 25;
        private static final int ROTATION_7_0 = 9;
        private static final int ROTATION_7_1 = 48;
        private static final int ROTATION_7_2 = 35;
        private static final int ROTATION_7_3 = 52;
        private static final int ROTATION_7_4 = 23;
        private static final int ROTATION_7_5 = 31;
        private static final int ROTATION_7_6 = 37;
        private static final int ROTATION_7_7 = 20;

        public Threefish1024Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        /* JADX WARNING: type inference failed for: r52v0, types: [long[]] */
        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Incorrect type for immutable var: ssa=long[], code=null, for r52v0, types: [long[]] */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void decryptBlock(long[] r51, long[] r52) {
            /*
                r50 = this;
                r0 = r50
                long[] r7 = r0.kw
                r0 = r50
                long[] r0 = r0.t
                r40 = r0
                int[] r41 = org.bouncycastle.crypto.engines.ThreefishEngine.MOD17
                int[] r42 = org.bouncycastle.crypto.engines.ThreefishEngine.MOD3
                int r6 = r7.length
                r8 = 33
                if (r6 == r8) goto L_0x001d
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>()
                throw r6
            L_0x001d:
                r0 = r40
                int r6 = r0.length
                r8 = 5
                if (r6 == r8) goto L_0x0029
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>()
                throw r6
            L_0x0029:
                r6 = 0
                r38 = r51[r6]
                r6 = 1
                r36 = r51[r6]
                r6 = 2
                r34 = r51[r6]
                r6 = 3
                r32 = r51[r6]
                r6 = 4
                r30 = r51[r6]
                r6 = 5
                r28 = r51[r6]
                r6 = 6
                r26 = r51[r6]
                r6 = 7
                r24 = r51[r6]
                r6 = 8
                r22 = r51[r6]
                r6 = 9
                r20 = r51[r6]
                r6 = 10
                r18 = r51[r6]
                r6 = 11
                r16 = r51[r6]
                r6 = 12
                r14 = r51[r6]
                r6 = 13
                r12 = r51[r6]
                r6 = 14
                r10 = r51[r6]
                r6 = 15
                r8 = r51[r6]
                r6 = 19
            L_0x0063:
                r43 = 1
                r0 = r43
                if (r6 < r0) goto L_0x048b
                r43 = r41[r6]
                r44 = r42[r6]
                int r45 = r43 + 1
                r46 = r7[r45]
                long r38 = r38 - r46
                int r45 = r43 + 2
                r46 = r7[r45]
                long r36 = r36 - r46
                int r45 = r43 + 3
                r46 = r7[r45]
                long r34 = r34 - r46
                int r45 = r43 + 4
                r46 = r7[r45]
                long r32 = r32 - r46
                int r45 = r43 + 5
                r46 = r7[r45]
                long r30 = r30 - r46
                int r45 = r43 + 6
                r46 = r7[r45]
                long r28 = r28 - r46
                int r45 = r43 + 7
                r46 = r7[r45]
                long r26 = r26 - r46
                int r45 = r43 + 8
                r46 = r7[r45]
                long r24 = r24 - r46
                int r45 = r43 + 9
                r46 = r7[r45]
                long r22 = r22 - r46
                int r45 = r43 + 10
                r46 = r7[r45]
                long r20 = r20 - r46
                int r45 = r43 + 11
                r46 = r7[r45]
                long r18 = r18 - r46
                int r45 = r43 + 12
                r46 = r7[r45]
                long r16 = r16 - r46
                int r45 = r43 + 13
                r46 = r7[r45]
                long r14 = r14 - r46
                int r45 = r43 + 14
                r46 = r7[r45]
                int r45 = r44 + 1
                r48 = r40[r45]
                long r46 = r46 + r48
                long r12 = r12 - r46
                int r45 = r43 + 15
                r46 = r7[r45]
                int r45 = r44 + 2
                r48 = r40[r45]
                long r46 = r46 + r48
                long r10 = r10 - r46
                int r45 = r43 + 16
                r46 = r7[r45]
                long r0 = (long) r6
                r48 = r0
                long r46 = r46 + r48
                r48 = 1
                long r46 = r46 + r48
                long r8 = r8 - r46
                r45 = 9
                r0 = r45
                r1 = r38
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r1)
                long r38 = r38 - r8
                r45 = 48
                r0 = r16
                r2 = r45
                r3 = r34
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r34 = r34 - r16
                r45 = 35
                r0 = r45
                r1 = r26
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r1)
                long r26 = r26 - r12
                r45 = 52
                r0 = r20
                r2 = r45
                r3 = r30
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r30 = r30 - r20
                r45 = 23
                r0 = r36
                r2 = r45
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r10)
                long r10 = r10 - r36
                r45 = 31
                r0 = r28
                r2 = r45
                r3 = r22
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r28
                r45 = 37
                r0 = r32
                r2 = r45
                r3 = r18
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r32
                r45 = 20
                r0 = r24
                r2 = r45
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r14)
                long r14 = r14 - r24
                r45 = 31
                r0 = r24
                r2 = r45
                r3 = r38
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r38 = r38 - r24
                r45 = 44
                r0 = r28
                r2 = r45
                r3 = r34
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r34 = r34 - r28
                r45 = 47
                r0 = r32
                r2 = r45
                r3 = r30
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r30 = r30 - r32
                r45 = 46
                r0 = r36
                r2 = r45
                r3 = r26
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r26 = r26 - r36
                r45 = 19
                r0 = r45
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r14)
                long r14 = r14 - r8
                r45 = 42
                r0 = r45
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r10)
                long r10 = r10 - r12
                r45 = 44
                r0 = r16
                r2 = r45
                r3 = r22
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r16
                r45 = 25
                r0 = r20
                r2 = r45
                r3 = r18
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r20
                r45 = 16
                r0 = r20
                r2 = r45
                r3 = r38
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r38 = r38 - r20
                r45 = 34
                r0 = r45
                r1 = r34
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r1)
                long r34 = r34 - r12
                r45 = 56
                r0 = r16
                r2 = r45
                r3 = r26
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r26 = r26 - r16
                r45 = 51
                r0 = r45
                r1 = r30
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r1)
                long r30 = r30 - r8
                r45 = 4
                r0 = r24
                r2 = r45
                r3 = r18
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r24
                r45 = 53
                r0 = r32
                r2 = r45
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r14)
                long r14 = r14 - r32
                r45 = 42
                r0 = r28
                r2 = r45
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r10)
                long r10 = r10 - r28
                r45 = 41
                r0 = r36
                r2 = r45
                r3 = r22
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r36
                r45 = 41
                r0 = r36
                r2 = r45
                r3 = r38
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r38 = r38 - r36
                r45 = 9
                r0 = r32
                r2 = r45
                r3 = r34
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r34 = r34 - r32
                r45 = 37
                r0 = r28
                r2 = r45
                r3 = r30
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r30 = r30 - r28
                r45 = 31
                r0 = r24
                r2 = r45
                r3 = r26
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r26 = r26 - r24
                r45 = 12
                r0 = r20
                r2 = r45
                r3 = r22
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r20
                r45 = 47
                r0 = r16
                r2 = r45
                r3 = r18
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r16
                r45 = 44
                r0 = r45
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r14)
                long r14 = r14 - r12
                r45 = 30
                r0 = r45
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r10)
                long r10 = r10 - r8
                r46 = r7[r43]
                long r38 = r38 - r46
                int r45 = r43 + 1
                r46 = r7[r45]
                long r36 = r36 - r46
                int r45 = r43 + 2
                r46 = r7[r45]
                long r34 = r34 - r46
                int r45 = r43 + 3
                r46 = r7[r45]
                long r32 = r32 - r46
                int r45 = r43 + 4
                r46 = r7[r45]
                long r30 = r30 - r46
                int r45 = r43 + 5
                r46 = r7[r45]
                long r28 = r28 - r46
                int r45 = r43 + 6
                r46 = r7[r45]
                long r26 = r26 - r46
                int r45 = r43 + 7
                r46 = r7[r45]
                long r24 = r24 - r46
                int r45 = r43 + 8
                r46 = r7[r45]
                long r22 = r22 - r46
                int r45 = r43 + 9
                r46 = r7[r45]
                long r20 = r20 - r46
                int r45 = r43 + 10
                r46 = r7[r45]
                long r18 = r18 - r46
                int r45 = r43 + 11
                r46 = r7[r45]
                long r16 = r16 - r46
                int r45 = r43 + 12
                r46 = r7[r45]
                long r14 = r14 - r46
                int r45 = r43 + 13
                r46 = r7[r45]
                r48 = r40[r44]
                long r46 = r46 + r48
                long r12 = r12 - r46
                int r45 = r43 + 14
                r46 = r7[r45]
                int r44 = r44 + 1
                r44 = r40[r44]
                long r44 = r44 + r46
                long r10 = r10 - r44
                int r43 = r43 + 15
                r44 = r7[r43]
                long r0 = (long) r6
                r46 = r0
                long r44 = r44 + r46
                long r8 = r8 - r44
                r43 = 5
                r0 = r43
                r1 = r38
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r1)
                long r38 = r38 - r8
                r43 = 20
                r0 = r16
                r2 = r43
                r3 = r34
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r34 = r34 - r16
                r43 = 48
                r0 = r43
                r1 = r26
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r1)
                long r26 = r26 - r12
                r43 = 41
                r0 = r20
                r2 = r43
                r3 = r30
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r30 = r30 - r20
                r43 = 47
                r0 = r36
                r2 = r43
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r10)
                long r10 = r10 - r36
                r43 = 28
                r0 = r28
                r2 = r43
                r3 = r22
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r28
                r43 = 16
                r0 = r32
                r2 = r43
                r3 = r18
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r32
                r43 = 25
                r0 = r24
                r2 = r43
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r14)
                long r14 = r14 - r24
                r43 = 33
                r0 = r24
                r2 = r43
                r3 = r38
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r38 = r38 - r24
                r43 = 4
                r0 = r28
                r2 = r43
                r3 = r34
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r34 = r34 - r28
                r43 = 51
                r0 = r32
                r2 = r43
                r3 = r30
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r30 = r30 - r32
                r43 = 13
                r0 = r36
                r2 = r43
                r3 = r26
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r26 = r26 - r36
                r43 = 34
                r0 = r43
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r14)
                long r14 = r14 - r8
                r43 = 41
                r0 = r43
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r10)
                long r10 = r10 - r12
                r43 = 59
                r0 = r16
                r2 = r43
                r3 = r22
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r16
                r43 = 17
                r0 = r20
                r2 = r43
                r3 = r18
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r20
                r43 = 38
                r0 = r20
                r2 = r43
                r3 = r38
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r38 = r38 - r20
                r43 = 19
                r0 = r43
                r1 = r34
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r1)
                long r34 = r34 - r12
                r43 = 10
                r0 = r16
                r2 = r43
                r3 = r26
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r26 = r26 - r16
                r43 = 55
                r0 = r43
                r1 = r30
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r1)
                long r30 = r30 - r8
                r43 = 49
                r0 = r24
                r2 = r43
                r3 = r18
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r24
                r43 = 18
                r0 = r32
                r2 = r43
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r14)
                long r14 = r14 - r32
                r43 = 23
                r0 = r28
                r2 = r43
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r10)
                long r10 = r10 - r28
                r43 = 52
                r0 = r36
                r2 = r43
                r3 = r22
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r36
                r43 = 24
                r0 = r36
                r2 = r43
                r3 = r38
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r38 = r38 - r36
                r43 = 13
                r0 = r32
                r2 = r43
                r3 = r34
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r34 = r34 - r32
                r43 = 8
                r0 = r28
                r2 = r43
                r3 = r30
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r30 = r30 - r28
                r43 = 47
                r0 = r24
                r2 = r43
                r3 = r26
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r26 = r26 - r24
                r43 = 8
                r0 = r20
                r2 = r43
                r3 = r22
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r22 = r22 - r20
                r43 = 17
                r0 = r16
                r2 = r43
                r3 = r18
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r0, r2, r3)
                long r18 = r18 - r16
                r43 = 22
                r0 = r43
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r12, r0, r14)
                long r14 = r14 - r12
                r43 = 37
                r0 = r43
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.xorRotr(r8, r0, r10)
                long r10 = r10 - r8
                int r6 = r6 + -2
                goto L_0x0063
            L_0x048b:
                r6 = 0
                r42 = r7[r6]
                long r38 = r38 - r42
                r6 = 1
                r42 = r7[r6]
                long r36 = r36 - r42
                r6 = 2
                r42 = r7[r6]
                long r34 = r34 - r42
                r6 = 3
                r42 = r7[r6]
                long r32 = r32 - r42
                r6 = 4
                r42 = r7[r6]
                long r30 = r30 - r42
                r6 = 5
                r42 = r7[r6]
                long r28 = r28 - r42
                r6 = 6
                r42 = r7[r6]
                long r26 = r26 - r42
                r6 = 7
                r42 = r7[r6]
                long r24 = r24 - r42
                r6 = 8
                r42 = r7[r6]
                long r22 = r22 - r42
                r6 = 9
                r42 = r7[r6]
                long r20 = r20 - r42
                r6 = 10
                r42 = r7[r6]
                long r18 = r18 - r42
                r6 = 11
                r42 = r7[r6]
                long r16 = r16 - r42
                r6 = 12
                r42 = r7[r6]
                long r14 = r14 - r42
                r6 = 13
                r42 = r7[r6]
                r6 = 0
                r44 = r40[r6]
                long r42 = r42 + r44
                long r12 = r12 - r42
                r6 = 14
                r42 = r7[r6]
                r6 = 1
                r40 = r40[r6]
                long r40 = r40 + r42
                long r10 = r10 - r40
                r6 = 15
                r6 = r7[r6]
                long r6 = r8 - r6
                r8 = 0
                r52[r8] = r38
                r8 = 1
                r52[r8] = r36
                r8 = 2
                r52[r8] = r34
                r8 = 3
                r52[r8] = r32
                r8 = 4
                r52[r8] = r30
                r8 = 5
                r52[r8] = r28
                r8 = 6
                r52[r8] = r26
                r8 = 7
                r52[r8] = r24
                r8 = 8
                r52[r8] = r22
                r8 = 9
                r52[r8] = r20
                r8 = 10
                r52[r8] = r18
                r8 = 11
                r52[r8] = r16
                r8 = 12
                r52[r8] = r14
                r8 = 13
                r52[r8] = r12
                r8 = 14
                r52[r8] = r10
                r8 = 15
                r52[r8] = r6
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.ThreefishEngine.Threefish1024Cipher.decryptBlock(long[], long[]):void");
        }

        /* JADX WARNING: type inference failed for: r62v0, types: [long[]] */
        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Incorrect type for immutable var: ssa=long[], code=null, for r62v0, types: [long[]] */
        /* JADX WARNING: Unknown variable types count: 1 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void encryptBlock(long[] r61, long[] r62) {
            /*
                r60 = this;
                r0 = r60
                long[] r7 = r0.kw
                r0 = r60
                long[] r0 = r0.t
                r40 = r0
                int[] r41 = org.bouncycastle.crypto.engines.ThreefishEngine.MOD17
                int[] r42 = org.bouncycastle.crypto.engines.ThreefishEngine.MOD3
                int r6 = r7.length
                r8 = 33
                if (r6 == r8) goto L_0x001d
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>()
                throw r6
            L_0x001d:
                r0 = r40
                int r6 = r0.length
                r8 = 5
                if (r6 == r8) goto L_0x0029
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                r6.<init>()
                throw r6
            L_0x0029:
                r6 = 0
                r8 = r61[r6]
                r6 = 1
                r10 = r61[r6]
                r6 = 2
                r12 = r61[r6]
                r6 = 3
                r14 = r61[r6]
                r6 = 4
                r16 = r61[r6]
                r6 = 5
                r18 = r61[r6]
                r6 = 6
                r20 = r61[r6]
                r6 = 7
                r22 = r61[r6]
                r6 = 8
                r44 = r61[r6]
                r6 = 9
                r46 = r61[r6]
                r6 = 10
                r48 = r61[r6]
                r6 = 11
                r50 = r61[r6]
                r6 = 12
                r52 = r61[r6]
                r6 = 13
                r54 = r61[r6]
                r6 = 14
                r56 = r61[r6]
                r6 = 15
                r58 = r61[r6]
                r6 = 0
                r24 = r7[r6]
                long r38 = r8 + r24
                r6 = 1
                r8 = r7[r6]
                long r36 = r10 + r8
                r6 = 2
                r8 = r7[r6]
                long r34 = r12 + r8
                r6 = 3
                r8 = r7[r6]
                long r32 = r14 + r8
                r6 = 4
                r8 = r7[r6]
                long r30 = r16 + r8
                r6 = 5
                r8 = r7[r6]
                long r28 = r18 + r8
                r6 = 6
                r8 = r7[r6]
                long r26 = r20 + r8
                r6 = 7
                r8 = r7[r6]
                long r24 = r22 + r8
                r6 = 8
                r8 = r7[r6]
                long r22 = r44 + r8
                r6 = 9
                r8 = r7[r6]
                long r20 = r46 + r8
                r6 = 10
                r8 = r7[r6]
                long r18 = r48 + r8
                r6 = 11
                r8 = r7[r6]
                long r16 = r50 + r8
                r6 = 12
                r8 = r7[r6]
                long r14 = r52 + r8
                r6 = 13
                r8 = r7[r6]
                r6 = 0
                r10 = r40[r6]
                long r8 = r8 + r10
                long r12 = r54 + r8
                r6 = 14
                r8 = r7[r6]
                r6 = 1
                r10 = r40[r6]
                long r8 = r8 + r10
                long r10 = r56 + r8
                r6 = 15
                r8 = r7[r6]
                long r8 = r8 + r58
                r6 = 1
            L_0x00c2:
                r43 = 20
                r0 = r43
                if (r6 >= r0) goto L_0x04ea
                r43 = r41[r6]
                r44 = r42[r6]
                r45 = 24
                long r38 = r38 + r36
                r0 = r36
                r2 = r45
                r3 = r38
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 13
                long r34 = r34 + r32
                r0 = r32
                r2 = r45
                r3 = r34
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 8
                long r30 = r30 + r28
                r0 = r28
                r2 = r45
                r3 = r30
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 47
                long r26 = r26 + r24
                r0 = r24
                r2 = r45
                r3 = r26
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 8
                long r22 = r22 + r20
                r0 = r20
                r2 = r45
                r3 = r22
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 17
                long r18 = r18 + r16
                r0 = r16
                r2 = r45
                r3 = r18
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 22
                long r14 = r14 + r12
                r0 = r45
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r14)
                r45 = 37
                long r10 = r10 + r8
                r0 = r45
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r10)
                r45 = 38
                long r38 = r38 + r20
                r0 = r20
                r2 = r45
                r3 = r38
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 19
                long r34 = r34 + r12
                r0 = r45
                r1 = r34
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r1)
                r45 = 10
                long r26 = r26 + r16
                r0 = r16
                r2 = r45
                r3 = r26
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 55
                long r30 = r30 + r8
                r0 = r45
                r1 = r30
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r1)
                r45 = 49
                long r18 = r18 + r24
                r0 = r24
                r2 = r45
                r3 = r18
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 18
                long r14 = r14 + r32
                r0 = r32
                r2 = r45
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r14)
                r45 = 23
                long r10 = r10 + r28
                r0 = r28
                r2 = r45
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r10)
                r45 = 52
                long r22 = r22 + r36
                r0 = r36
                r2 = r45
                r3 = r22
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 33
                long r38 = r38 + r24
                r0 = r24
                r2 = r45
                r3 = r38
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 4
                long r34 = r34 + r28
                r0 = r28
                r2 = r45
                r3 = r34
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 51
                long r30 = r30 + r32
                r0 = r32
                r2 = r45
                r3 = r30
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 13
                long r26 = r26 + r36
                r0 = r36
                r2 = r45
                r3 = r26
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 34
                long r14 = r14 + r8
                r0 = r45
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r14)
                r45 = 41
                long r10 = r10 + r12
                r0 = r45
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r10)
                r45 = 59
                long r22 = r22 + r16
                r0 = r16
                r2 = r45
                r3 = r22
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 17
                long r18 = r18 + r20
                r0 = r20
                r2 = r45
                r3 = r18
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 5
                long r38 = r38 + r8
                r0 = r45
                r1 = r38
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r1)
                r45 = 20
                long r34 = r34 + r16
                r0 = r16
                r2 = r45
                r3 = r34
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 48
                long r26 = r26 + r12
                r0 = r45
                r1 = r26
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r1)
                r45 = 41
                long r30 = r30 + r20
                r0 = r20
                r2 = r45
                r3 = r30
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 47
                long r10 = r10 + r36
                r0 = r36
                r2 = r45
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r10)
                r45 = 28
                long r22 = r22 + r28
                r0 = r28
                r2 = r45
                r3 = r22
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 16
                long r18 = r18 + r32
                r0 = r32
                r2 = r45
                r3 = r18
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 25
                long r14 = r14 + r24
                r0 = r24
                r2 = r45
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r14)
                r46 = r7[r43]
                long r38 = r38 + r46
                int r45 = r43 + 1
                r46 = r7[r45]
                long r36 = r36 + r46
                int r45 = r43 + 2
                r46 = r7[r45]
                long r34 = r34 + r46
                int r45 = r43 + 3
                r46 = r7[r45]
                long r32 = r32 + r46
                int r45 = r43 + 4
                r46 = r7[r45]
                long r30 = r30 + r46
                int r45 = r43 + 5
                r46 = r7[r45]
                long r28 = r28 + r46
                int r45 = r43 + 6
                r46 = r7[r45]
                long r26 = r26 + r46
                int r45 = r43 + 7
                r46 = r7[r45]
                long r24 = r24 + r46
                int r45 = r43 + 8
                r46 = r7[r45]
                long r22 = r22 + r46
                int r45 = r43 + 9
                r46 = r7[r45]
                long r20 = r20 + r46
                int r45 = r43 + 10
                r46 = r7[r45]
                long r18 = r18 + r46
                int r45 = r43 + 11
                r46 = r7[r45]
                long r16 = r16 + r46
                int r45 = r43 + 12
                r46 = r7[r45]
                long r14 = r14 + r46
                int r45 = r43 + 13
                r46 = r7[r45]
                r48 = r40[r44]
                long r46 = r46 + r48
                long r12 = r12 + r46
                int r45 = r43 + 14
                r46 = r7[r45]
                int r45 = r44 + 1
                r48 = r40[r45]
                long r46 = r46 + r48
                long r10 = r10 + r46
                int r45 = r43 + 15
                r46 = r7[r45]
                long r0 = (long) r6
                r48 = r0
                long r46 = r46 + r48
                long r8 = r8 + r46
                r45 = 41
                long r38 = r38 + r36
                r0 = r36
                r2 = r45
                r3 = r38
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 9
                long r34 = r34 + r32
                r0 = r32
                r2 = r45
                r3 = r34
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 37
                long r30 = r30 + r28
                r0 = r28
                r2 = r45
                r3 = r30
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 31
                long r26 = r26 + r24
                r0 = r24
                r2 = r45
                r3 = r26
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 12
                long r22 = r22 + r20
                r0 = r20
                r2 = r45
                r3 = r22
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 47
                long r18 = r18 + r16
                r0 = r16
                r2 = r45
                r3 = r18
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 44
                long r14 = r14 + r12
                r0 = r45
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r14)
                r45 = 30
                long r10 = r10 + r8
                r0 = r45
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r10)
                r45 = 16
                long r38 = r38 + r20
                r0 = r20
                r2 = r45
                r3 = r38
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 34
                long r34 = r34 + r12
                r0 = r45
                r1 = r34
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r1)
                r45 = 56
                long r26 = r26 + r16
                r0 = r16
                r2 = r45
                r3 = r26
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 51
                long r30 = r30 + r8
                r0 = r45
                r1 = r30
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r1)
                r45 = 4
                long r18 = r18 + r24
                r0 = r24
                r2 = r45
                r3 = r18
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 53
                long r14 = r14 + r32
                r0 = r32
                r2 = r45
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r14)
                r45 = 42
                long r10 = r10 + r28
                r0 = r28
                r2 = r45
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r10)
                r45 = 41
                long r22 = r22 + r36
                r0 = r36
                r2 = r45
                r3 = r22
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 31
                long r38 = r38 + r24
                r0 = r24
                r2 = r45
                r3 = r38
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 44
                long r34 = r34 + r28
                r0 = r28
                r2 = r45
                r3 = r34
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 47
                long r30 = r30 + r32
                r0 = r32
                r2 = r45
                r3 = r30
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 46
                long r26 = r26 + r36
                r0 = r36
                r2 = r45
                r3 = r26
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 19
                long r14 = r14 + r8
                r0 = r45
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r14)
                r45 = 42
                long r10 = r10 + r12
                r0 = r45
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r10)
                r45 = 44
                long r22 = r22 + r16
                r0 = r16
                r2 = r45
                r3 = r22
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 25
                long r18 = r18 + r20
                r0 = r20
                r2 = r45
                r3 = r18
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 9
                long r38 = r38 + r8
                r0 = r45
                r1 = r38
                long r8 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r8, r0, r1)
                r45 = 48
                long r34 = r34 + r16
                r0 = r16
                r2 = r45
                r3 = r34
                long r16 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 35
                long r26 = r26 + r12
                r0 = r45
                r1 = r26
                long r12 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r12, r0, r1)
                r45 = 52
                long r30 = r30 + r20
                r0 = r20
                r2 = r45
                r3 = r30
                long r20 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 23
                long r10 = r10 + r36
                r0 = r36
                r2 = r45
                long r36 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r10)
                r45 = 31
                long r22 = r22 + r28
                r0 = r28
                r2 = r45
                r3 = r22
                long r28 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 37
                long r18 = r18 + r32
                r0 = r32
                r2 = r45
                r3 = r18
                long r32 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r3)
                r45 = 20
                long r14 = r14 + r24
                r0 = r24
                r2 = r45
                long r24 = org.bouncycastle.crypto.engines.ThreefishEngine.rotlXor(r0, r2, r14)
                int r45 = r43 + 1
                r46 = r7[r45]
                long r38 = r38 + r46
                int r45 = r43 + 2
                r46 = r7[r45]
                long r36 = r36 + r46
                int r45 = r43 + 3
                r46 = r7[r45]
                long r34 = r34 + r46
                int r45 = r43 + 4
                r46 = r7[r45]
                long r32 = r32 + r46
                int r45 = r43 + 5
                r46 = r7[r45]
                long r30 = r30 + r46
                int r45 = r43 + 6
                r46 = r7[r45]
                long r28 = r28 + r46
                int r45 = r43 + 7
                r46 = r7[r45]
                long r26 = r26 + r46
                int r45 = r43 + 8
                r46 = r7[r45]
                long r24 = r24 + r46
                int r45 = r43 + 9
                r46 = r7[r45]
                long r22 = r22 + r46
                int r45 = r43 + 10
                r46 = r7[r45]
                long r20 = r20 + r46
                int r45 = r43 + 11
                r46 = r7[r45]
                long r18 = r18 + r46
                int r45 = r43 + 12
                r46 = r7[r45]
                long r16 = r16 + r46
                int r45 = r43 + 13
                r46 = r7[r45]
                long r14 = r14 + r46
                int r45 = r43 + 14
                r46 = r7[r45]
                int r45 = r44 + 1
                r48 = r40[r45]
                long r46 = r46 + r48
                long r12 = r12 + r46
                int r45 = r43 + 15
                r46 = r7[r45]
                int r44 = r44 + 2
                r44 = r40[r44]
                long r44 = r44 + r46
                long r10 = r10 + r44
                int r43 = r43 + 16
                r44 = r7[r43]
                long r0 = (long) r6
                r46 = r0
                long r44 = r44 + r46
                r46 = 1
                long r44 = r44 + r46
                long r8 = r8 + r44
                int r6 = r6 + 2
                goto L_0x00c2
            L_0x04ea:
                r6 = 0
                r62[r6] = r38
                r6 = 1
                r62[r6] = r36
                r6 = 2
                r62[r6] = r34
                r6 = 3
                r62[r6] = r32
                r6 = 4
                r62[r6] = r30
                r6 = 5
                r62[r6] = r28
                r6 = 6
                r62[r6] = r26
                r6 = 7
                r62[r6] = r24
                r6 = 8
                r62[r6] = r22
                r6 = 9
                r62[r6] = r20
                r6 = 10
                r62[r6] = r18
                r6 = 11
                r62[r6] = r16
                r6 = 12
                r62[r6] = r14
                r6 = 13
                r62[r6] = r12
                r6 = 14
                r62[r6] = r10
                r6 = 15
                r62[r6] = r8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.ThreefishEngine.Threefish1024Cipher.encryptBlock(long[], long[]):void");
        }
    }

    private static final class Threefish256Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 14;
        private static final int ROTATION_0_1 = 16;
        private static final int ROTATION_1_0 = 52;
        private static final int ROTATION_1_1 = 57;
        private static final int ROTATION_2_0 = 23;
        private static final int ROTATION_2_1 = 40;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 37;
        private static final int ROTATION_4_0 = 25;
        private static final int ROTATION_4_1 = 33;
        private static final int ROTATION_5_0 = 46;
        private static final int ROTATION_5_1 = 12;
        private static final int ROTATION_6_0 = 58;
        private static final int ROTATION_6_1 = 22;
        private static final int ROTATION_7_0 = 32;
        private static final int ROTATION_7_1 = 32;

        public Threefish256Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        /* access modifiers changed from: 0000 */
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] access$000 = ThreefishEngine.MOD5;
            int[] access$100 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                for (int i = 17; i >= 1; i -= 2) {
                    int i2 = access$000[i];
                    int i3 = access$100[i];
                    long j5 = j - jArr3[i2 + 1];
                    long j6 = j2 - (jArr3[i2 + 2] + jArr4[i3 + 1]);
                    long j7 = j3 - (jArr3[i2 + 3] + jArr4[i3 + 2]);
                    long xorRotr = ThreefishEngine.xorRotr(j4 - ((jArr3[i2 + 4] + ((long) i)) + 1), 32, j5);
                    long j8 = j5 - xorRotr;
                    long xorRotr2 = ThreefishEngine.xorRotr(j6, 32, j7);
                    long j9 = j7 - xorRotr2;
                    long xorRotr3 = ThreefishEngine.xorRotr(xorRotr2, 58, j8);
                    long j10 = j8 - xorRotr3;
                    long xorRotr4 = ThreefishEngine.xorRotr(xorRotr, 22, j9);
                    long j11 = j9 - xorRotr4;
                    long xorRotr5 = ThreefishEngine.xorRotr(xorRotr4, 46, j10);
                    long j12 = j10 - xorRotr5;
                    long xorRotr6 = ThreefishEngine.xorRotr(xorRotr3, 12, j11);
                    long j13 = j11 - xorRotr6;
                    long xorRotr7 = ThreefishEngine.xorRotr(xorRotr6, 25, j12);
                    long j14 = j12 - xorRotr7;
                    long xorRotr8 = ThreefishEngine.xorRotr(xorRotr5, 33, j13);
                    long j15 = j14 - jArr3[i2];
                    long j16 = xorRotr7 - (jArr3[i2 + 1] + jArr4[i3]);
                    long j17 = (j13 - xorRotr8) - (jArr4[i3 + 1] + jArr3[i2 + 2]);
                    long xorRotr9 = ThreefishEngine.xorRotr(xorRotr8 - (jArr3[i2 + 3] + ((long) i)), 5, j15);
                    long j18 = j15 - xorRotr9;
                    long xorRotr10 = ThreefishEngine.xorRotr(j16, 37, j17);
                    long j19 = j17 - xorRotr10;
                    long xorRotr11 = ThreefishEngine.xorRotr(xorRotr10, 23, j18);
                    long j20 = j18 - xorRotr11;
                    long xorRotr12 = ThreefishEngine.xorRotr(xorRotr9, 40, j19);
                    long j21 = j19 - xorRotr12;
                    long xorRotr13 = ThreefishEngine.xorRotr(xorRotr12, 52, j20);
                    long j22 = j20 - xorRotr13;
                    long xorRotr14 = ThreefishEngine.xorRotr(xorRotr11, 57, j21);
                    long j23 = j21 - xorRotr14;
                    j2 = ThreefishEngine.xorRotr(xorRotr14, 14, j22);
                    j = j22 - j2;
                    j4 = ThreefishEngine.xorRotr(xorRotr13, 16, j23);
                    j3 = j23 - j4;
                }
                long j24 = j - jArr3[0];
                long j25 = j2 - (jArr3[1] + jArr4[0]);
                long j26 = j3 - (jArr4[1] + jArr3[2]);
                long j27 = j4 - jArr3[3];
                jArr2[0] = j24;
                jArr2[1] = j25;
                jArr2[2] = j26;
                jArr2[3] = j27;
            }
        }

        /* access modifiers changed from: 0000 */
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] access$000 = ThreefishEngine.MOD5;
            int[] access$100 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = j + jArr3[0];
                long j5 = j2 + jArr3[1] + jArr4[0];
                long j6 = j3 + jArr3[2] + jArr4[1];
                long j7 = jArr3[3] + jArr[3];
                for (int i = 1; i < 18; i += 2) {
                    int i2 = access$000[i];
                    int i3 = access$100[i];
                    long j8 = j4 + j5;
                    long rotlXor = ThreefishEngine.rotlXor(j5, 14, j8);
                    long j9 = j6 + j7;
                    long rotlXor2 = ThreefishEngine.rotlXor(j7, 16, j9);
                    long j10 = j8 + rotlXor2;
                    long rotlXor3 = ThreefishEngine.rotlXor(rotlXor2, 52, j10);
                    long j11 = j9 + rotlXor;
                    long rotlXor4 = ThreefishEngine.rotlXor(rotlXor, 57, j11);
                    long j12 = j10 + rotlXor4;
                    long rotlXor5 = ThreefishEngine.rotlXor(rotlXor4, 23, j12);
                    long j13 = j11 + rotlXor3;
                    long rotlXor6 = ThreefishEngine.rotlXor(rotlXor3, 40, j13);
                    long j14 = j12 + rotlXor6;
                    long rotlXor7 = ThreefishEngine.rotlXor(rotlXor6, 5, j14);
                    long j15 = j13 + rotlXor5;
                    long rotlXor8 = ThreefishEngine.rotlXor(rotlXor5, 37, j15) + jArr3[i2 + 1] + jArr4[i3];
                    long j16 = j15 + jArr3[i2 + 2] + jArr4[i3 + 1];
                    long j17 = rotlXor7 + jArr3[i2 + 3] + ((long) i);
                    long j18 = j14 + jArr3[i2] + rotlXor8;
                    long rotlXor9 = ThreefishEngine.rotlXor(rotlXor8, 25, j18);
                    long j19 = j16 + j17;
                    long rotlXor10 = ThreefishEngine.rotlXor(j17, 33, j19);
                    long j20 = j18 + rotlXor10;
                    long rotlXor11 = ThreefishEngine.rotlXor(rotlXor10, 46, j20);
                    long j21 = j19 + rotlXor9;
                    long rotlXor12 = ThreefishEngine.rotlXor(rotlXor9, 12, j21);
                    long j22 = j20 + rotlXor12;
                    long rotlXor13 = ThreefishEngine.rotlXor(rotlXor12, 58, j22);
                    long j23 = j21 + rotlXor11;
                    long rotlXor14 = ThreefishEngine.rotlXor(rotlXor11, 22, j23);
                    long j24 = j22 + rotlXor14;
                    long rotlXor15 = ThreefishEngine.rotlXor(rotlXor14, 32, j24);
                    long j25 = j23 + rotlXor13;
                    j4 = j24 + jArr3[i2 + 1];
                    j5 = ThreefishEngine.rotlXor(rotlXor13, 32, j25) + jArr3[i2 + 2] + jArr4[i3 + 1];
                    j6 = j25 + jArr4[i3 + 2] + jArr3[i2 + 3];
                    j7 = rotlXor15 + jArr3[i2 + 4] + ((long) i) + 1;
                }
                jArr2[0] = j4;
                jArr2[1] = j5;
                jArr2[2] = j6;
                jArr2[3] = j7;
            }
        }
    }

    private static final class Threefish512Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 46;
        private static final int ROTATION_0_1 = 36;
        private static final int ROTATION_0_2 = 19;
        private static final int ROTATION_0_3 = 37;
        private static final int ROTATION_1_0 = 33;
        private static final int ROTATION_1_1 = 27;
        private static final int ROTATION_1_2 = 14;
        private static final int ROTATION_1_3 = 42;
        private static final int ROTATION_2_0 = 17;
        private static final int ROTATION_2_1 = 49;
        private static final int ROTATION_2_2 = 36;
        private static final int ROTATION_2_3 = 39;
        private static final int ROTATION_3_0 = 44;
        private static final int ROTATION_3_1 = 9;
        private static final int ROTATION_3_2 = 54;
        private static final int ROTATION_3_3 = 56;
        private static final int ROTATION_4_0 = 39;
        private static final int ROTATION_4_1 = 30;
        private static final int ROTATION_4_2 = 34;
        private static final int ROTATION_4_3 = 24;
        private static final int ROTATION_5_0 = 13;
        private static final int ROTATION_5_1 = 50;
        private static final int ROTATION_5_2 = 10;
        private static final int ROTATION_5_3 = 17;
        private static final int ROTATION_6_0 = 25;
        private static final int ROTATION_6_1 = 29;
        private static final int ROTATION_6_2 = 39;
        private static final int ROTATION_6_3 = 43;
        private static final int ROTATION_7_0 = 8;
        private static final int ROTATION_7_1 = 35;
        private static final int ROTATION_7_2 = 56;
        private static final int ROTATION_7_3 = 22;

        protected Threefish512Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] access$200 = ThreefishEngine.MOD9;
            int[] access$100 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                long j5 = jArr[4];
                long j6 = jArr[5];
                long j7 = jArr[6];
                long j8 = jArr[7];
                for (int i = 17; i >= 1; i -= 2) {
                    int i2 = access$200[i];
                    int i3 = access$100[i];
                    long j9 = j - jArr3[i2 + 1];
                    long j10 = j3 - jArr3[i2 + 3];
                    long j11 = j4 - jArr3[i2 + 4];
                    long j12 = j5 - jArr3[i2 + 5];
                    long j13 = j6 - (jArr3[i2 + 6] + jArr4[i3 + 1]);
                    long j14 = j7 - (jArr3[i2 + 7] + jArr4[i3 + 2]);
                    long j15 = j8 - ((jArr3[i2 + 8] + ((long) i)) + 1);
                    long xorRotr = ThreefishEngine.xorRotr(j2 - jArr3[i2 + 2], 8, j14);
                    long j16 = j14 - xorRotr;
                    long xorRotr2 = ThreefishEngine.xorRotr(j15, 35, j9);
                    long j17 = j9 - xorRotr2;
                    long xorRotr3 = ThreefishEngine.xorRotr(j13, 56, j10);
                    long j18 = j10 - xorRotr3;
                    long xorRotr4 = ThreefishEngine.xorRotr(j11, 22, j12);
                    long j19 = j12 - xorRotr4;
                    long xorRotr5 = ThreefishEngine.xorRotr(xorRotr, 25, j19);
                    long j20 = j19 - xorRotr5;
                    long xorRotr6 = ThreefishEngine.xorRotr(xorRotr4, 29, j16);
                    long j21 = j16 - xorRotr6;
                    long xorRotr7 = ThreefishEngine.xorRotr(xorRotr3, 39, j17);
                    long j22 = j17 - xorRotr7;
                    long xorRotr8 = ThreefishEngine.xorRotr(xorRotr2, 43, j18);
                    long j23 = j18 - xorRotr8;
                    long xorRotr9 = ThreefishEngine.xorRotr(xorRotr5, 13, j23);
                    long j24 = j23 - xorRotr9;
                    long xorRotr10 = ThreefishEngine.xorRotr(xorRotr8, 50, j20);
                    long j25 = j20 - xorRotr10;
                    long xorRotr11 = ThreefishEngine.xorRotr(xorRotr7, 10, j21);
                    long j26 = j21 - xorRotr11;
                    long xorRotr12 = ThreefishEngine.xorRotr(xorRotr6, 17, j22);
                    long j27 = j22 - xorRotr12;
                    long xorRotr13 = ThreefishEngine.xorRotr(xorRotr9, 39, j27);
                    long j28 = j27 - xorRotr13;
                    long xorRotr14 = ThreefishEngine.xorRotr(xorRotr12, 30, j24);
                    long j29 = j24 - xorRotr14;
                    long xorRotr15 = ThreefishEngine.xorRotr(xorRotr11, 34, j25);
                    long j30 = j25 - xorRotr15;
                    long xorRotr16 = ThreefishEngine.xorRotr(xorRotr10, 24, j26);
                    long j31 = j28 - jArr3[i2];
                    long j32 = xorRotr13 - jArr3[i2 + 1];
                    long j33 = j29 - jArr3[i2 + 2];
                    long j34 = xorRotr14 - jArr3[i2 + 3];
                    long j35 = j30 - jArr3[i2 + 4];
                    long j36 = xorRotr15 - (jArr3[i2 + 5] + jArr4[i3]);
                    long j37 = (j26 - xorRotr16) - (jArr4[i3 + 1] + jArr3[i2 + 6]);
                    long j38 = xorRotr16 - (jArr3[i2 + 7] + ((long) i));
                    long xorRotr17 = ThreefishEngine.xorRotr(j32, 44, j37);
                    long j39 = j37 - xorRotr17;
                    long xorRotr18 = ThreefishEngine.xorRotr(j38, 9, j31);
                    long j40 = j31 - xorRotr18;
                    long xorRotr19 = ThreefishEngine.xorRotr(j36, 54, j33);
                    long j41 = j33 - xorRotr19;
                    long xorRotr20 = ThreefishEngine.xorRotr(j34, 56, j35);
                    long j42 = j35 - xorRotr20;
                    long xorRotr21 = ThreefishEngine.xorRotr(xorRotr17, 17, j42);
                    long j43 = j42 - xorRotr21;
                    long xorRotr22 = ThreefishEngine.xorRotr(xorRotr20, 49, j39);
                    long j44 = j39 - xorRotr22;
                    long xorRotr23 = ThreefishEngine.xorRotr(xorRotr19, 36, j40);
                    long j45 = j40 - xorRotr23;
                    long xorRotr24 = ThreefishEngine.xorRotr(xorRotr18, 39, j41);
                    long j46 = j41 - xorRotr24;
                    long xorRotr25 = ThreefishEngine.xorRotr(xorRotr21, 33, j46);
                    long j47 = j46 - xorRotr25;
                    long xorRotr26 = ThreefishEngine.xorRotr(xorRotr24, 27, j43);
                    long j48 = j43 - xorRotr26;
                    long xorRotr27 = ThreefishEngine.xorRotr(xorRotr23, 14, j44);
                    long j49 = j44 - xorRotr27;
                    long xorRotr28 = ThreefishEngine.xorRotr(xorRotr22, 42, j45);
                    long j50 = j45 - xorRotr28;
                    j2 = ThreefishEngine.xorRotr(xorRotr25, 46, j50);
                    j = j50 - j2;
                    j4 = ThreefishEngine.xorRotr(xorRotr28, 36, j47);
                    j3 = j47 - j4;
                    j6 = ThreefishEngine.xorRotr(xorRotr27, 19, j48);
                    j5 = j48 - j6;
                    j8 = ThreefishEngine.xorRotr(xorRotr26, 37, j49);
                    j7 = j49 - j8;
                }
                long j51 = j - jArr3[0];
                long j52 = j2 - jArr3[1];
                long j53 = j3 - jArr3[2];
                long j54 = j4 - jArr3[3];
                long j55 = j5 - jArr3[4];
                long j56 = j6 - (jArr3[5] + jArr4[0]);
                long j57 = j7 - (jArr4[1] + jArr3[6]);
                long j58 = j8 - jArr3[7];
                jArr2[0] = j51;
                jArr2[1] = j52;
                jArr2[2] = j53;
                jArr2[3] = j54;
                jArr2[4] = j55;
                jArr2[5] = j56;
                jArr2[6] = j57;
                jArr2[7] = j58;
            }
        }

        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.t;
            int[] access$200 = ThreefishEngine.MOD9;
            int[] access$100 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                long j5 = jArr[4];
                long j6 = jArr[5];
                long j7 = jArr[6];
                long j8 = j + jArr3[0];
                long j9 = j2 + jArr3[1];
                long j10 = j3 + jArr3[2];
                long j11 = j4 + jArr3[3];
                long j12 = j5 + jArr3[4];
                long j13 = j6 + jArr3[5] + jArr4[0];
                long j14 = j7 + jArr3[6] + jArr4[1];
                long j15 = jArr3[7] + jArr[7];
                for (int i = 1; i < 18; i += 2) {
                    int i2 = access$200[i];
                    int i3 = access$100[i];
                    long j16 = j8 + j9;
                    long rotlXor = ThreefishEngine.rotlXor(j9, 46, j16);
                    long j17 = j10 + j11;
                    long rotlXor2 = ThreefishEngine.rotlXor(j11, 36, j17);
                    long j18 = j12 + j13;
                    long rotlXor3 = ThreefishEngine.rotlXor(j13, 19, j18);
                    long j19 = j14 + j15;
                    long rotlXor4 = ThreefishEngine.rotlXor(j15, 37, j19);
                    long j20 = j17 + rotlXor;
                    long rotlXor5 = ThreefishEngine.rotlXor(rotlXor, 33, j20);
                    long j21 = j18 + rotlXor4;
                    long rotlXor6 = ThreefishEngine.rotlXor(rotlXor4, 27, j21);
                    long j22 = j19 + rotlXor3;
                    long rotlXor7 = ThreefishEngine.rotlXor(rotlXor3, 14, j22);
                    long j23 = j16 + rotlXor2;
                    long rotlXor8 = ThreefishEngine.rotlXor(rotlXor2, 42, j23);
                    long j24 = j21 + rotlXor5;
                    long rotlXor9 = ThreefishEngine.rotlXor(rotlXor5, 17, j24);
                    long j25 = j22 + rotlXor8;
                    long rotlXor10 = ThreefishEngine.rotlXor(rotlXor8, 49, j25);
                    long j26 = j23 + rotlXor7;
                    long rotlXor11 = ThreefishEngine.rotlXor(rotlXor7, 36, j26);
                    long j27 = j20 + rotlXor6;
                    long rotlXor12 = ThreefishEngine.rotlXor(rotlXor6, 39, j27);
                    long j28 = j25 + rotlXor9;
                    long rotlXor13 = ThreefishEngine.rotlXor(rotlXor9, 44, j28);
                    long j29 = j26 + rotlXor12;
                    long rotlXor14 = ThreefishEngine.rotlXor(rotlXor12, 9, j29);
                    long j30 = j27 + rotlXor11;
                    long rotlXor15 = ThreefishEngine.rotlXor(rotlXor11, 54, j30);
                    long j31 = j24 + rotlXor10;
                    long j32 = rotlXor13 + jArr3[i2 + 1];
                    long j33 = j30 + jArr3[i2 + 2];
                    long rotlXor16 = ThreefishEngine.rotlXor(rotlXor10, 56, j31) + jArr3[i2 + 3];
                    long j34 = j31 + jArr3[i2 + 4];
                    long j35 = rotlXor15 + jArr3[i2 + 5] + jArr4[i3];
                    long j36 = j28 + jArr3[i2 + 6] + jArr4[i3 + 1];
                    long j37 = rotlXor14 + jArr3[i2 + 7] + ((long) i);
                    long j38 = j29 + jArr3[i2] + j32;
                    long rotlXor17 = ThreefishEngine.rotlXor(j32, 39, j38);
                    long j39 = j33 + rotlXor16;
                    long rotlXor18 = ThreefishEngine.rotlXor(rotlXor16, 30, j39);
                    long j40 = j34 + j35;
                    long rotlXor19 = ThreefishEngine.rotlXor(j35, 34, j40);
                    long j41 = j36 + j37;
                    long rotlXor20 = ThreefishEngine.rotlXor(j37, 24, j41);
                    long j42 = j39 + rotlXor17;
                    long rotlXor21 = ThreefishEngine.rotlXor(rotlXor17, 13, j42);
                    long j43 = j40 + rotlXor20;
                    long rotlXor22 = ThreefishEngine.rotlXor(rotlXor20, 50, j43);
                    long j44 = j41 + rotlXor19;
                    long rotlXor23 = ThreefishEngine.rotlXor(rotlXor19, 10, j44);
                    long j45 = j38 + rotlXor18;
                    long rotlXor24 = ThreefishEngine.rotlXor(rotlXor18, 17, j45);
                    long j46 = j43 + rotlXor21;
                    long rotlXor25 = ThreefishEngine.rotlXor(rotlXor21, 25, j46);
                    long j47 = j44 + rotlXor24;
                    long rotlXor26 = ThreefishEngine.rotlXor(rotlXor24, 29, j47);
                    long j48 = j45 + rotlXor23;
                    long rotlXor27 = ThreefishEngine.rotlXor(rotlXor23, 39, j48);
                    long j49 = j42 + rotlXor22;
                    long rotlXor28 = ThreefishEngine.rotlXor(rotlXor22, 43, j49);
                    long j50 = j47 + rotlXor25;
                    long rotlXor29 = ThreefishEngine.rotlXor(rotlXor25, 8, j50);
                    long j51 = j48 + rotlXor28;
                    long rotlXor30 = ThreefishEngine.rotlXor(rotlXor28, 35, j51);
                    long j52 = j49 + rotlXor27;
                    long rotlXor31 = ThreefishEngine.rotlXor(rotlXor27, 56, j52);
                    long j53 = j46 + rotlXor26;
                    j8 = j51 + jArr3[i2 + 1];
                    j9 = rotlXor29 + jArr3[i2 + 2];
                    j10 = j52 + jArr3[i2 + 3];
                    j11 = ThreefishEngine.rotlXor(rotlXor26, 22, j53) + jArr3[i2 + 4];
                    j12 = j53 + jArr3[i2 + 5];
                    j13 = rotlXor31 + jArr3[i2 + 6] + jArr4[i3 + 1];
                    j14 = j50 + jArr4[i3 + 2] + jArr3[i2 + 7];
                    j15 = rotlXor30 + jArr3[i2 + 8] + ((long) i) + 1;
                }
                jArr2[0] = j8;
                jArr2[1] = j9;
                jArr2[2] = j10;
                jArr2[3] = j11;
                jArr2[4] = j12;
                jArr2[5] = j13;
                jArr2[6] = j14;
                jArr2[7] = j15;
            }
        }
    }

    private static abstract class ThreefishCipher {
        protected final long[] kw;
        protected final long[] t;

        protected ThreefishCipher(long[] jArr, long[] jArr2) {
            this.kw = jArr;
            this.t = jArr2;
        }

        /* access modifiers changed from: 0000 */
        public abstract void decryptBlock(long[] jArr, long[] jArr2);

        /* access modifiers changed from: 0000 */
        public abstract void encryptBlock(long[] jArr, long[] jArr2);
    }

    static {
        for (int i = 0; i < MOD9.length; i++) {
            MOD17[i] = i % 17;
            MOD9[i] = i % 9;
            MOD5[i] = i % 5;
            MOD3[i] = i % 3;
        }
    }

    public ThreefishEngine(int i) {
        this.blocksizeBytes = i / 8;
        this.blocksizeWords = this.blocksizeBytes / 8;
        this.currentBlock = new long[this.blocksizeWords];
        this.kw = new long[((this.blocksizeWords * 2) + 1)];
        switch (i) {
            case 256:
                this.cipher = new Threefish256Cipher(this.kw, this.t);
                return;
            case 512:
                this.cipher = new Threefish512Cipher(this.kw, this.t);
                return;
            case 1024:
                this.cipher = new Threefish1024Cipher(this.kw, this.t);
                return;
            default:
                throw new IllegalArgumentException("Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits");
        }
    }

    public static long bytesToWord(byte[] bArr, int i) {
        if (i + 8 > bArr.length) {
            throw new IllegalArgumentException();
        }
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = i4 + 1;
        int i6 = i5 + 1;
        int i7 = i6 + 1;
        int i8 = i7 + 1;
        long j = (((long) bArr[i]) & 255) | ((((long) bArr[i2]) & 255) << 8) | ((((long) bArr[i3]) & 255) << 16) | ((((long) bArr[i4]) & 255) << 24) | ((((long) bArr[i5]) & 255) << 32) | ((((long) bArr[i6]) & 255) << 40) | ((((long) bArr[i7]) & 255) << 48);
        int i9 = i8 + 1;
        return ((((long) bArr[i8]) & 255) << 56) | j;
    }

    static long rotlXor(long j, int i, long j2) {
        return ((j << i) | (j >>> (-i))) ^ j2;
    }

    private void setKey(long[] jArr) {
        if (jArr.length != this.blocksizeWords) {
            throw new IllegalArgumentException("Threefish key must be same size as block (" + this.blocksizeWords + " words)");
        }
        long j = C_240;
        for (int i = 0; i < this.blocksizeWords; i++) {
            this.kw[i] = jArr[i];
            j ^= this.kw[i];
        }
        this.kw[this.blocksizeWords] = j;
        System.arraycopy(this.kw, 0, this.kw, this.blocksizeWords + 1, this.blocksizeWords);
    }

    private void setTweak(long[] jArr) {
        if (jArr.length != 2) {
            throw new IllegalArgumentException("Tweak must be 2 words.");
        }
        this.t[0] = jArr[0];
        this.t[1] = jArr[1];
        this.t[2] = this.t[0] ^ this.t[1];
        this.t[3] = this.t[0];
        this.t[4] = this.t[1];
    }

    public static void wordToBytes(long j, byte[] bArr, int i) {
        if (i + 8 > bArr.length) {
            throw new IllegalArgumentException();
        }
        int i2 = i + 1;
        bArr[i] = (byte) ((int) j);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((int) (j >> 8));
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((int) (j >> 16));
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((int) (j >> 24));
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((int) (j >> 32));
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((int) (j >> 40));
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((int) (j >> 48));
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((int) (j >> 56));
    }

    static long xorRotr(long j, int i, long j2) {
        long j3 = j ^ j2;
        return (j3 << (-i)) | (j3 >>> i);
    }

    public String getAlgorithmName() {
        return "Threefish-" + (this.blocksizeBytes * 8);
    }

    public int getBlockSize() {
        return this.blocksizeBytes;
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] bArr;
        byte[] key;
        long[] jArr;
        long[] jArr2;
        if (cipherParameters instanceof TweakableBlockCipherParameters) {
            TweakableBlockCipherParameters tweakableBlockCipherParameters = (TweakableBlockCipherParameters) cipherParameters;
            byte[] key2 = tweakableBlockCipherParameters.getKey().getKey();
            bArr = tweakableBlockCipherParameters.getTweak();
            key = key2;
        } else if (cipherParameters instanceof KeyParameter) {
            bArr = null;
            key = ((KeyParameter) cipherParameters).getKey();
        } else {
            throw new IllegalArgumentException("Invalid parameter passed to Threefish init - " + cipherParameters.getClass().getName());
        }
        if (key == null) {
            jArr = null;
        } else if (key.length != this.blocksizeBytes) {
            throw new IllegalArgumentException("Threefish key must be same size as block (" + this.blocksizeBytes + " bytes)");
        } else {
            jArr = new long[this.blocksizeWords];
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = bytesToWord(key, i * 8);
            }
        }
        if (bArr == null) {
            jArr2 = null;
        } else if (bArr.length != 16) {
            throw new IllegalArgumentException("Threefish tweak must be 16 bytes");
        } else {
            jArr2 = new long[]{bytesToWord(bArr, 0), bytesToWord(bArr, 8)};
        }
        init(z, jArr, jArr2);
    }

    public void init(boolean z, long[] jArr, long[] jArr2) {
        this.forEncryption = z;
        if (jArr != null) {
            setKey(jArr);
        }
        if (jArr2 != null) {
            setTweak(jArr2);
        }
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.blocksizeBytes + i2 > bArr2.length) {
            throw new DataLengthException("Output buffer too short");
        } else if (this.blocksizeBytes + i > bArr.length) {
            throw new DataLengthException("Input buffer too short");
        } else {
            for (int i3 = 0; i3 < this.blocksizeBytes; i3 += 8) {
                this.currentBlock[i3 >> 3] = bytesToWord(bArr, i + i3);
            }
            processBlock(this.currentBlock, this.currentBlock);
            for (int i4 = 0; i4 < this.blocksizeBytes; i4 += 8) {
                wordToBytes(this.currentBlock[i4 >> 3], bArr2, i2 + i4);
            }
            return this.blocksizeBytes;
        }
    }

    public int processBlock(long[] jArr, long[] jArr2) throws DataLengthException, IllegalStateException {
        if (this.kw[this.blocksizeWords] == 0) {
            throw new IllegalStateException("Threefish engine not initialised");
        } else if (jArr.length != this.blocksizeWords) {
            throw new DataLengthException("Input buffer too short");
        } else if (jArr2.length != this.blocksizeWords) {
            throw new DataLengthException("Output buffer too short");
        } else {
            if (this.forEncryption) {
                this.cipher.encryptBlock(jArr, jArr2);
            } else {
                this.cipher.decryptBlock(jArr, jArr2);
            }
            return this.blocksizeWords;
        }
    }

    public void reset() {
    }
}
