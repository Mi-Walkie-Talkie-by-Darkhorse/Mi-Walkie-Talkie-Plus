package org.jboss.netty.util.internal.jzlib;

import org.jboss.netty.handler.codec.http.HttpConstants;

final class Tree {
    static final byte[] _dist_code = {0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, Tnaf.POW_2_WIDTH, 17, 18, 18, 19, 19, 20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29};
    static final byte[] _length_code = {0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, HttpConstants.CR, 14, 14, 14, 14, 15, 15, 15, 15, Tnaf.POW_2_WIDTH, Tnaf.POW_2_WIDTH, Tnaf.POW_2_WIDTH, Tnaf.POW_2_WIDTH, Tnaf.POW_2_WIDTH, Tnaf.POW_2_WIDTH, Tnaf.POW_2_WIDTH, Tnaf.POW_2_WIDTH, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28};
    static final int[] base_dist = {0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024, 1536, 2048, 3072, 4096, 6144, 8192, 12288, 16384, 24576};
    static final int[] base_length = {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 0};
    static final byte[] bl_order = {Tnaf.POW_2_WIDTH, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, HttpConstants.CR, 2, 14, 1, 15};
    static final int[] extra_blbits = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 7};
    static final int[] extra_dbits = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    static final int[] extra_lbits = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0};
    short[] dyn_tree;
    int max_code;
    StaticTree stat_desc;

    Tree() {
    }

    static int d_code(int i) {
        return i < 256 ? _dist_code[i] : _dist_code[(i >>> 7) + 256];
    }

    /* JADX WARNING: type inference failed for: r0v15, types: [short[]] */
    /* JADX WARNING: type inference failed for: r0v16, types: [short] */
    /* JADX WARNING: type inference failed for: r0v17, types: [int] */
    /* JADX WARNING: type inference failed for: r0v18 */
    /* JADX WARNING: type inference failed for: r0v19, types: [int] */
    /* JADX WARNING: type inference failed for: r0v23 */
    /* JADX WARNING: type inference failed for: r0v24 */
    /* JADX WARNING: type inference failed for: r0v25 */
    /* JADX WARNING: type inference failed for: r0v26 */
    /* JADX WARNING: Incorrect type for immutable var: ssa=short, code=null, for r0v16, types: [short] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=short[], code=null, for r0v15, types: [short[]] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r0v18
  assigns: []
  uses: []
  mth insns count: 133
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 5 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void gen_bitlen(org.jboss.netty.util.internal.jzlib.Deflate r14) {
        /*
            r13 = this;
            r4 = 0
            short[] r6 = r13.dyn_tree
            org.jboss.netty.util.internal.jzlib.StaticTree r0 = r13.stat_desc
            short[] r7 = r0.static_tree
            org.jboss.netty.util.internal.jzlib.StaticTree r0 = r13.stat_desc
            int[] r8 = r0.extra_bits
            org.jboss.netty.util.internal.jzlib.StaticTree r0 = r13.stat_desc
            int r9 = r0.extra_base
            org.jboss.netty.util.internal.jzlib.StaticTree r0 = r13.stat_desc
            int r2 = r0.max_length
            r0 = r4
        L_0x0014:
            r1 = 15
            if (r0 > r1) goto L_0x001f
            short[] r1 = r14.bl_count
            r1[r0] = r4
            int r0 = r0 + 1
            goto L_0x0014
        L_0x001f:
            int[] r0 = r14.heap
            int r1 = r14.heap_max
            r0 = r0[r1]
            int r0 = r0 * 2
            int r0 = r0 + 1
            r6[r0] = r4
            int r0 = r14.heap_max
            int r5 = r0 + 1
            r0 = r4
        L_0x0030:
            r1 = 573(0x23d, float:8.03E-43)
            if (r5 >= r1) goto L_0x0083
            int[] r1 = r14.heap
            r10 = r1[r5]
            int r1 = r10 * 2
            int r1 = r1 + 1
            short r1 = r6[r1]
            int r1 = r1 * 2
            int r1 = r1 + 1
            short r1 = r6[r1]
            int r1 = r1 + 1
            if (r1 <= r2) goto L_0x004b
            int r0 = r0 + 1
            r1 = r2
        L_0x004b:
            int r3 = r10 * 2
            int r3 = r3 + 1
            short r11 = (short) r1
            r6[r3] = r11
            int r3 = r13.max_code
            if (r10 <= r3) goto L_0x0059
        L_0x0056:
            int r5 = r5 + 1
            goto L_0x0030
        L_0x0059:
            short[] r3 = r14.bl_count
            short r11 = r3[r1]
            int r11 = r11 + 1
            short r11 = (short) r11
            r3[r1] = r11
            if (r10 < r9) goto L_0x00f0
            int r3 = r10 - r9
            r3 = r8[r3]
        L_0x0068:
            int r11 = r10 * 2
            short r11 = r6[r11]
            int r12 = r14.opt_len
            int r1 = r1 + r3
            int r1 = r1 * r11
            int r1 = r1 + r12
            r14.opt_len = r1
            if (r7 == 0) goto L_0x0056
            int r1 = r14.static_len
            int r10 = r10 * 2
            int r10 = r10 + 1
            short r10 = r7[r10]
            int r3 = r3 + r10
            int r3 = r3 * r11
            int r1 = r1 + r3
            r14.static_len = r1
            goto L_0x0056
        L_0x0083:
            if (r0 != 0) goto L_0x0086
        L_0x0085:
            return
        L_0x0086:
            int r1 = r2 + -1
        L_0x0088:
            short[] r3 = r14.bl_count
            short r3 = r3[r1]
            if (r3 != 0) goto L_0x0091
            int r1 = r1 + -1
            goto L_0x0088
        L_0x0091:
            short[] r3 = r14.bl_count
            short r4 = r3[r1]
            int r4 = r4 + -1
            short r4 = (short) r4
            r3[r1] = r4
            short[] r3 = r14.bl_count
            int r1 = r1 + 1
            short r4 = r3[r1]
            int r4 = r4 + 2
            short r4 = (short) r4
            r3[r1] = r4
            short[] r1 = r14.bl_count
            short r3 = r1[r2]
            int r3 = r3 + -1
            short r3 = (short) r3
            r1[r2] = r3
            int r0 = r0 + -2
            if (r0 > 0) goto L_0x0086
            r1 = r5
        L_0x00b3:
            if (r2 == 0) goto L_0x0085
            short[] r0 = r14.bl_count
            short r0 = r0[r2]
        L_0x00b9:
            if (r0 == 0) goto L_0x00ed
            int[] r3 = r14.heap
            int r1 = r1 + -1
            r3 = r3[r1]
            int r4 = r13.max_code
            if (r3 > r4) goto L_0x00b9
            int r4 = r3 * 2
            int r4 = r4 + 1
            short r4 = r6[r4]
            if (r4 == r2) goto L_0x00ea
            int r4 = r14.opt_len
            long r4 = (long) r4
            long r8 = (long) r2
            int r7 = r3 * 2
            int r7 = r7 + 1
            short r7 = r6[r7]
            long r10 = (long) r7
            long r8 = r8 - r10
            int r7 = r3 * 2
            short r7 = r6[r7]
            long r10 = (long) r7
            long r8 = r8 * r10
            long r4 = r4 + r8
            int r4 = (int) r4
            r14.opt_len = r4
            int r3 = r3 * 2
            int r3 = r3 + 1
            short r4 = (short) r2
            r6[r3] = r4
        L_0x00ea:
            int r0 = r0 + -1
            goto L_0x00b9
        L_0x00ed:
            int r2 = r2 + -1
            goto L_0x00b3
        L_0x00f0:
            r3 = r4
            goto L_0x0068
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.Tree.gen_bitlen(org.jboss.netty.util.internal.jzlib.Deflate):void");
    }

    /* access modifiers changed from: 0000 */
    public void build_tree(Deflate deflate) {
        int i;
        short[] sArr = this.dyn_tree;
        short[] sArr2 = this.stat_desc.static_tree;
        int i2 = this.stat_desc.elems;
        int i3 = -1;
        deflate.heap_len = 0;
        deflate.heap_max = 573;
        for (int i4 = 0; i4 < i2; i4++) {
            if (sArr[i4 * 2] != 0) {
                int[] iArr = deflate.heap;
                int i5 = deflate.heap_len + 1;
                deflate.heap_len = i5;
                iArr[i5] = i4;
                deflate.depth[i4] = 0;
                i3 = i4;
            } else {
                sArr[(i4 * 2) + 1] = 0;
            }
        }
        while (deflate.heap_len < 2) {
            int[] iArr2 = deflate.heap;
            int i6 = deflate.heap_len + 1;
            deflate.heap_len = i6;
            if (i3 < 2) {
                i3++;
                i = i3;
            } else {
                i = 0;
            }
            iArr2[i6] = i;
            sArr[i * 2] = 1;
            deflate.depth[i] = 0;
            deflate.opt_len--;
            if (sArr2 != null) {
                deflate.static_len -= sArr2[(i * 2) + 1];
            }
        }
        this.max_code = i3;
        for (int i7 = deflate.heap_len / 2; i7 >= 1; i7--) {
            deflate.pqdownheap(sArr, i7);
        }
        int i8 = i2;
        while (true) {
            int i9 = deflate.heap[1];
            int[] iArr3 = deflate.heap;
            int[] iArr4 = deflate.heap;
            int i10 = deflate.heap_len;
            deflate.heap_len = i10 - 1;
            iArr3[1] = iArr4[i10];
            deflate.pqdownheap(sArr, 1);
            int i11 = deflate.heap[1];
            int[] iArr5 = deflate.heap;
            int i12 = deflate.heap_max - 1;
            deflate.heap_max = i12;
            iArr5[i12] = i9;
            int[] iArr6 = deflate.heap;
            int i13 = deflate.heap_max - 1;
            deflate.heap_max = i13;
            iArr6[i13] = i11;
            sArr[i8 * 2] = (short) (sArr[i9 * 2] + sArr[i11 * 2]);
            deflate.depth[i8] = (byte) (Math.max(deflate.depth[i9], deflate.depth[i11]) + 1);
            int i14 = (i9 * 2) + 1;
            short s = (short) i8;
            sArr[(i11 * 2) + 1] = s;
            sArr[i14] = s;
            int i15 = i8 + 1;
            deflate.heap[1] = i8;
            deflate.pqdownheap(sArr, 1);
            if (deflate.heap_len < 2) {
                int[] iArr7 = deflate.heap;
                int i16 = deflate.heap_max - 1;
                deflate.heap_max = i16;
                iArr7[i16] = deflate.heap[1];
                gen_bitlen(deflate);
                gen_codes(sArr, i3, deflate.bl_count);
                return;
            }
            i8 = i15;
        }
    }

    private static void gen_codes(short[] sArr, int i, short[] sArr2) {
        short[] sArr3 = new short[16];
        short s = 0;
        for (int i2 = 1; i2 <= 15; i2++) {
            s = (short) ((s + sArr2[i2 - 1]) << 1);
            sArr3[i2] = s;
        }
        for (int i3 = 0; i3 <= i; i3++) {
            short s2 = sArr[(i3 * 2) + 1];
            if (s2 != 0) {
                int i4 = i3 * 2;
                short s3 = sArr3[s2];
                sArr3[s2] = (short) (s3 + 1);
                sArr[i4] = (short) bi_reverse(s3, s2);
            }
        }
    }

    private static int bi_reverse(int i, int i2) {
        int i3 = 0;
        do {
            i >>>= 1;
            i3 = (i3 | (i & 1)) << 1;
            i2--;
        } while (i2 > 0);
        return i3 >>> 1;
    }
}
