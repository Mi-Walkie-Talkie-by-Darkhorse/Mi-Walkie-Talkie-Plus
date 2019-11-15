package org.jboss.netty.util.internal.jzlib;

import android.support.v4.internal.view.SupportMenu;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.mi.milinkforgame.sdk.data.Error;

final class InfCodes {
    private static final int BADCODE = 9;
    private static final int COPY = 5;
    private static final int DIST = 3;
    private static final int DISTEXT = 4;
    private static final int END = 8;
    private static final int LEN = 1;
    private static final int LENEXT = 2;
    private static final int LIT = 6;
    private static final int START = 0;
    private static final int WASH = 7;
    private static final int[] inflate_mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, Error.E_WTSDK_IS_BUSY, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW, 2047, 4095, 8191, 16383, 32767, SupportMenu.USER_MASK};
    private byte dbits;
    private int dist;
    private int[] dtree;
    private int dtree_index;
    private int get;
    private byte lbits;
    private int len;
    private int lit;
    private int[] ltree;
    private int ltree_index;
    private int mode;
    private int need;
    private int[] tree;
    private int tree_index;

    InfCodes() {
    }

    /* access modifiers changed from: 0000 */
    public void init(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        this.mode = 0;
        this.lbits = (byte) i;
        this.dbits = (byte) i2;
        this.ltree = iArr;
        this.ltree_index = i3;
        this.dtree = iArr2;
        this.dtree_index = i4;
        this.tree = null;
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x03e4, code lost:
        r0 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:168:?, code lost:
        return r12.inflate_flush(r13, r14);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:169:?, code lost:
        return r12.inflate_flush(r13, -3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:171:?, code lost:
        return r12.inflate_flush(r13, r14);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0198, code lost:
        r7 = r11.need;
        r6 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x019b, code lost:
        if (r6 >= r7) goto L_0x01cb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x019d, code lost:
        if (r2 == 0) goto L_0x01b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x019f, code lost:
        r14 = 0;
        r2 = r2 - 1;
        r5 = r5 | ((r13.next_in[r3] & 255) << r6);
        r6 = r6 + 8;
        r3 = r3 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x01b1, code lost:
        r12.bitb = r5;
        r12.bitk = r6;
        r13.avail_in = r2;
        r13.total_in += (long) (r3 - r13.next_in_index);
        r13.next_in_index = r3;
        r12.write = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x01cb, code lost:
        r7 = (r11.tree_index + (inflate_mask[r7] & r5)) * 3;
        r5 = r5 >> r11.tree[r7 + 1];
        r4 = r6 - r11.tree[r7 + 1];
        r6 = r11.tree[r7];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x01ea, code lost:
        if ((r6 & 16) == 0) goto L_0x01fd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x01ec, code lost:
        r11.get = r6 & 15;
        r11.dist = r11.tree[r7 + 2];
        r11.mode = 4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x01ff, code lost:
        if ((r6 & 64) != 0) goto L_0x0210;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0201, code lost:
        r11.need = r6;
        r11.tree_index = (r7 / 3) + r11.tree[r7 + 2];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x0210, code lost:
        r11.mode = 9;
        r13.msg = "invalid distance code";
        r12.bitb = r5;
        r12.bitk = r4;
        r13.avail_in = r2;
        r13.total_in += (long) (r3 - r13.next_in_index);
        r13.next_in_index = r3;
        r12.write = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0276, code lost:
        r6 = r1 - r11.dist;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x027a, code lost:
        if (r6 >= 0) goto L_0x029c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x027c, code lost:
        r6 = r6 + r12.end;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0280, code lost:
        r7 = r1 + 1;
        r8 = r6 + 1;
        r12.window[r1] = r12.window[r6];
        r1 = r0 - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0290, code lost:
        if (r8 != r12.end) goto L_0x03e4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0292, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0293, code lost:
        r11.len--;
        r6 = r0;
        r0 = r1;
        r1 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x029e, code lost:
        if (r11.len == 0) goto L_0x0301;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x02a0, code lost:
        if (r0 != 0) goto L_0x0280;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x02a4, code lost:
        if (r1 != r12.end) goto L_0x02b4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x02a8, code lost:
        if (r12.read == 0) goto L_0x02b4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x02aa, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x02ad, code lost:
        if (0 >= r12.read) goto L_0x02f5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x02af, code lost:
        r0 = (r12.read - 0) - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x02b4, code lost:
        if (r0 != 0) goto L_0x0280;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x02b6, code lost:
        r12.write = r1;
        r14 = r12.inflate_flush(r13, r14);
        r1 = r12.write;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x02c0, code lost:
        if (r1 >= r12.read) goto L_0x02f9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x02c2, code lost:
        r0 = (r12.read - r1) - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x02c9, code lost:
        if (r1 != r12.end) goto L_0x02d9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x02cd, code lost:
        if (r12.read == 0) goto L_0x02d9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x02cf, code lost:
        r1 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x02d2, code lost:
        if (0 >= r12.read) goto L_0x02fd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x02d4, code lost:
        r0 = (r12.read - 0) - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x02d9, code lost:
        if (r0 != 0) goto L_0x0280;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x02db, code lost:
        r12.bitb = r5;
        r12.bitk = r4;
        r13.avail_in = r2;
        r13.total_in += (long) (r3 - r13.next_in_index);
        r13.next_in_index = r3;
        r12.write = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x02f5, code lost:
        r0 = r12.end - 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x02f9, code lost:
        r0 = r12.end - r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x02fd, code lost:
        r0 = r12.end - 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0301, code lost:
        r11.mode = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int proc(org.jboss.netty.util.internal.jzlib.InfBlocks r12, org.jboss.netty.util.internal.jzlib.ZStream r13, int r14) {
        /*
            r11 = this;
            int r3 = r13.next_in_index
            int r2 = r13.avail_in
            int r5 = r12.bitb
            int r4 = r12.bitk
            int r1 = r12.write
            int r0 = r12.read
            if (r1 >= r0) goto L_0x0032
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x0013:
            int r6 = r11.mode
            switch(r6) {
                case 0: goto L_0x0036;
                case 1: goto L_0x0096;
                case 2: goto L_0x0149;
                case 3: goto L_0x0198;
                case 4: goto L_0x0233;
                case 5: goto L_0x0276;
                case 6: goto L_0x0306;
                case 7: goto L_0x0379;
                case 8: goto L_0x03ae;
                case 9: goto L_0x03c9;
                default: goto L_0x0018;
            }
        L_0x0018:
            r0 = -2
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r2 = r13.next_in_index
            int r2 = r3 - r2
            long r6 = (long) r2
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r0)
        L_0x0031:
            return r0
        L_0x0032:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x0013
        L_0x0036:
            r6 = 258(0x102, float:3.62E-43)
            if (r0 < r6) goto L_0x0087
            r6 = 10
            if (r2 < r6) goto L_0x0087
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r0 = r13.next_in_index
            int r0 = r3 - r0
            long r6 = (long) r0
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            byte r0 = r11.lbits
            byte r1 = r11.dbits
            int[] r2 = r11.ltree
            int r3 = r11.ltree_index
            int[] r4 = r11.dtree
            int r5 = r11.dtree_index
            r6 = r12
            r7 = r13
            int r14 = inflate_fast(r0, r1, r2, r3, r4, r5, r6, r7)
            int r3 = r13.next_in_index
            int r2 = r13.avail_in
            int r5 = r12.bitb
            int r4 = r12.bitk
            int r1 = r12.write
            int r0 = r12.read
            if (r1 >= r0) goto L_0x0080
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x0077:
            if (r14 == 0) goto L_0x0087
            r6 = 1
            if (r14 != r6) goto L_0x0084
            r6 = 7
        L_0x007d:
            r11.mode = r6
            goto L_0x0013
        L_0x0080:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x0077
        L_0x0084:
            r6 = 9
            goto L_0x007d
        L_0x0087:
            byte r6 = r11.lbits
            r11.need = r6
            int[] r6 = r11.ltree
            r11.tree = r6
            int r6 = r11.ltree_index
            r11.tree_index = r6
            r6 = 1
            r11.mode = r6
        L_0x0096:
            int r7 = r11.need
            r6 = r4
        L_0x0099:
            if (r6 >= r7) goto L_0x00c9
            if (r2 == 0) goto L_0x00af
            r14 = 0
            int r2 = r2 + -1
            byte[] r8 = r13.next_in
            int r4 = r3 + 1
            byte r3 = r8[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << r6
            r5 = r5 | r3
            int r3 = r6 + 8
            r6 = r3
            r3 = r4
            goto L_0x0099
        L_0x00af:
            r12.bitb = r5
            r12.bitk = r6
            r13.avail_in = r2
            long r4 = r13.total_in
            int r0 = r13.next_in_index
            int r0 = r3 - r0
            long r6 = (long) r0
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r14)
            goto L_0x0031
        L_0x00c9:
            int r4 = r11.tree_index
            int[] r8 = inflate_mask
            r7 = r8[r7]
            r7 = r7 & r5
            int r4 = r4 + r7
            int r7 = r4 * 3
            int[] r4 = r11.tree
            int r8 = r7 + 1
            r4 = r4[r8]
            int r5 = r5 >>> r4
            int[] r4 = r11.tree
            int r8 = r7 + 1
            r4 = r4[r8]
            int r4 = r6 - r4
            int[] r6 = r11.tree
            r6 = r6[r7]
            if (r6 != 0) goto L_0x00f5
            int[] r6 = r11.tree
            int r7 = r7 + 2
            r6 = r6[r7]
            r11.lit = r6
            r6 = 6
            r11.mode = r6
            goto L_0x0013
        L_0x00f5:
            r8 = r6 & 16
            if (r8 == 0) goto L_0x010a
            r6 = r6 & 15
            r11.get = r6
            int[] r6 = r11.tree
            int r7 = r7 + 2
            r6 = r6[r7]
            r11.len = r6
            r6 = 2
            r11.mode = r6
            goto L_0x0013
        L_0x010a:
            r8 = r6 & 64
            if (r8 != 0) goto L_0x011d
            r11.need = r6
            int r6 = r7 / 3
            int[] r8 = r11.tree
            int r7 = r7 + 2
            r7 = r8[r7]
            int r6 = r6 + r7
            r11.tree_index = r6
            goto L_0x0013
        L_0x011d:
            r6 = r6 & 32
            if (r6 == 0) goto L_0x0126
            r6 = 7
            r11.mode = r6
            goto L_0x0013
        L_0x0126:
            r0 = 9
            r11.mode = r0
            java.lang.String r0 = "invalid literal/length code"
            r13.msg = r0
            r0 = -3
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r2 = r13.next_in_index
            int r2 = r3 - r2
            long r6 = (long) r2
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r0)
            goto L_0x0031
        L_0x0149:
            int r7 = r11.get
            r6 = r4
        L_0x014c:
            if (r6 >= r7) goto L_0x017c
            if (r2 == 0) goto L_0x0162
            r14 = 0
            int r2 = r2 + -1
            byte[] r8 = r13.next_in
            int r4 = r3 + 1
            byte r3 = r8[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << r6
            r5 = r5 | r3
            int r3 = r6 + 8
            r6 = r3
            r3 = r4
            goto L_0x014c
        L_0x0162:
            r12.bitb = r5
            r12.bitk = r6
            r13.avail_in = r2
            long r4 = r13.total_in
            int r0 = r13.next_in_index
            int r0 = r3 - r0
            long r6 = (long) r0
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r14)
            goto L_0x0031
        L_0x017c:
            int r4 = r11.len
            int[] r8 = inflate_mask
            r8 = r8[r7]
            r8 = r8 & r5
            int r4 = r4 + r8
            r11.len = r4
            int r5 = r5 >> r7
            int r4 = r6 - r7
            byte r6 = r11.dbits
            r11.need = r6
            int[] r6 = r11.dtree
            r11.tree = r6
            int r6 = r11.dtree_index
            r11.tree_index = r6
            r6 = 3
            r11.mode = r6
        L_0x0198:
            int r7 = r11.need
            r6 = r4
        L_0x019b:
            if (r6 >= r7) goto L_0x01cb
            if (r2 == 0) goto L_0x01b1
            r14 = 0
            int r2 = r2 + -1
            byte[] r8 = r13.next_in
            int r4 = r3 + 1
            byte r3 = r8[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << r6
            r5 = r5 | r3
            int r3 = r6 + 8
            r6 = r3
            r3 = r4
            goto L_0x019b
        L_0x01b1:
            r12.bitb = r5
            r12.bitk = r6
            r13.avail_in = r2
            long r4 = r13.total_in
            int r0 = r13.next_in_index
            int r0 = r3 - r0
            long r6 = (long) r0
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r14)
            goto L_0x0031
        L_0x01cb:
            int r4 = r11.tree_index
            int[] r8 = inflate_mask
            r7 = r8[r7]
            r7 = r7 & r5
            int r4 = r4 + r7
            int r7 = r4 * 3
            int[] r4 = r11.tree
            int r8 = r7 + 1
            r4 = r4[r8]
            int r5 = r5 >> r4
            int[] r4 = r11.tree
            int r8 = r7 + 1
            r4 = r4[r8]
            int r4 = r6 - r4
            int[] r6 = r11.tree
            r6 = r6[r7]
            r8 = r6 & 16
            if (r8 == 0) goto L_0x01fd
            r6 = r6 & 15
            r11.get = r6
            int[] r6 = r11.tree
            int r7 = r7 + 2
            r6 = r6[r7]
            r11.dist = r6
            r6 = 4
            r11.mode = r6
            goto L_0x0013
        L_0x01fd:
            r8 = r6 & 64
            if (r8 != 0) goto L_0x0210
            r11.need = r6
            int r6 = r7 / 3
            int[] r8 = r11.tree
            int r7 = r7 + 2
            r7 = r8[r7]
            int r6 = r6 + r7
            r11.tree_index = r6
            goto L_0x0013
        L_0x0210:
            r0 = 9
            r11.mode = r0
            java.lang.String r0 = "invalid distance code"
            r13.msg = r0
            r0 = -3
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r2 = r13.next_in_index
            int r2 = r3 - r2
            long r6 = (long) r2
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r0)
            goto L_0x0031
        L_0x0233:
            int r7 = r11.get
            r6 = r4
        L_0x0236:
            if (r6 >= r7) goto L_0x0266
            if (r2 == 0) goto L_0x024c
            r14 = 0
            int r2 = r2 + -1
            byte[] r8 = r13.next_in
            int r4 = r3 + 1
            byte r3 = r8[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << r6
            r5 = r5 | r3
            int r3 = r6 + 8
            r6 = r3
            r3 = r4
            goto L_0x0236
        L_0x024c:
            r12.bitb = r5
            r12.bitk = r6
            r13.avail_in = r2
            long r4 = r13.total_in
            int r0 = r13.next_in_index
            int r0 = r3 - r0
            long r6 = (long) r0
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r14)
            goto L_0x0031
        L_0x0266:
            int r4 = r11.dist
            int[] r8 = inflate_mask
            r8 = r8[r7]
            r8 = r8 & r5
            int r4 = r4 + r8
            r11.dist = r4
            int r5 = r5 >> r7
            int r4 = r6 - r7
            r6 = 5
            r11.mode = r6
        L_0x0276:
            int r6 = r11.dist
            int r6 = r1 - r6
        L_0x027a:
            if (r6 >= 0) goto L_0x029c
            int r7 = r12.end
            int r6 = r6 + r7
            goto L_0x027a
        L_0x0280:
            byte[] r9 = r12.window
            int r7 = r1 + 1
            byte[] r10 = r12.window
            int r8 = r6 + 1
            byte r6 = r10[r6]
            r9[r1] = r6
            int r1 = r0 + -1
            int r0 = r12.end
            if (r8 != r0) goto L_0x03e4
            r0 = 0
        L_0x0293:
            int r6 = r11.len
            int r6 = r6 + -1
            r11.len = r6
            r6 = r0
            r0 = r1
            r1 = r7
        L_0x029c:
            int r7 = r11.len
            if (r7 == 0) goto L_0x0301
            if (r0 != 0) goto L_0x0280
            int r7 = r12.end
            if (r1 != r7) goto L_0x02b4
            int r7 = r12.read
            if (r7 == 0) goto L_0x02b4
            r1 = 0
            int r0 = r12.read
            if (r1 >= r0) goto L_0x02f5
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x02b4:
            if (r0 != 0) goto L_0x0280
            r12.write = r1
            int r14 = r12.inflate_flush(r13, r14)
            int r1 = r12.write
            int r0 = r12.read
            if (r1 >= r0) goto L_0x02f9
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x02c7:
            int r7 = r12.end
            if (r1 != r7) goto L_0x02d9
            int r7 = r12.read
            if (r7 == 0) goto L_0x02d9
            r1 = 0
            int r0 = r12.read
            if (r1 >= r0) goto L_0x02fd
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x02d9:
            if (r0 != 0) goto L_0x0280
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r0 = r13.next_in_index
            int r0 = r3 - r0
            long r6 = (long) r0
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r14)
            goto L_0x0031
        L_0x02f5:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x02b4
        L_0x02f9:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x02c7
        L_0x02fd:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x02d9
        L_0x0301:
            r6 = 0
            r11.mode = r6
            goto L_0x0013
        L_0x0306:
            if (r0 != 0) goto L_0x0367
            int r6 = r12.end
            if (r1 != r6) goto L_0x031a
            int r6 = r12.read
            if (r6 == 0) goto L_0x031a
            r1 = 0
            int r0 = r12.read
            if (r1 >= r0) goto L_0x035b
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x031a:
            if (r0 != 0) goto L_0x0367
            r12.write = r1
            int r6 = r12.inflate_flush(r13, r14)
            int r1 = r12.write
            int r0 = r12.read
            if (r1 >= r0) goto L_0x035f
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x032d:
            int r7 = r12.end
            if (r1 != r7) goto L_0x033f
            int r7 = r12.read
            if (r7 == 0) goto L_0x033f
            r1 = 0
            int r0 = r12.read
            if (r1 >= r0) goto L_0x0363
            int r0 = r12.read
            int r0 = r0 - r1
            int r0 = r0 + -1
        L_0x033f:
            if (r0 != 0) goto L_0x0367
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r0 = r13.next_in_index
            int r0 = r3 - r0
            long r8 = (long) r0
            long r4 = r4 + r8
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r6)
            goto L_0x0031
        L_0x035b:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x031a
        L_0x035f:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x032d
        L_0x0363:
            int r0 = r12.end
            int r0 = r0 - r1
            goto L_0x033f
        L_0x0367:
            r6 = r1
            r14 = 0
            byte[] r7 = r12.window
            int r1 = r6 + 1
            int r8 = r11.lit
            byte r8 = (byte) r8
            r7[r6] = r8
            int r0 = r0 + -1
            r6 = 0
            r11.mode = r6
            goto L_0x0013
        L_0x0379:
            r0 = 7
            if (r4 <= r0) goto L_0x0382
            int r4 = r4 + -8
            int r2 = r2 + 1
            int r3 = r3 + -1
        L_0x0382:
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r14)
            int r1 = r12.write
            int r6 = r12.read
            int r7 = r12.write
            if (r6 == r7) goto L_0x03aa
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r2 = r13.next_in_index
            int r2 = r3 - r2
            long r6 = (long) r2
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r0)
            goto L_0x0031
        L_0x03aa:
            r0 = 8
            r11.mode = r0
        L_0x03ae:
            r0 = 1
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r2 = r13.next_in_index
            int r2 = r3 - r2
            long r6 = (long) r2
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r0)
            goto L_0x0031
        L_0x03c9:
            r0 = -3
            r12.bitb = r5
            r12.bitk = r4
            r13.avail_in = r2
            long r4 = r13.total_in
            int r2 = r13.next_in_index
            int r2 = r3 - r2
            long r6 = (long) r2
            long r4 = r4 + r6
            r13.total_in = r4
            r13.next_in_index = r3
            r12.write = r1
            int r0 = r12.inflate_flush(r13, r0)
            goto L_0x0031
        L_0x03e4:
            r0 = r8
            goto L_0x0293
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.InfCodes.proc(org.jboss.netty.util.internal.jzlib.InfBlocks, org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }

    static int inflate_fast(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4, InfBlocks infBlocks, ZStream zStream) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = zStream.next_in_index;
        int i17 = zStream.avail_in;
        int i18 = infBlocks.bitb;
        int i19 = infBlocks.bitk;
        int i20 = infBlocks.write;
        if (i20 < infBlocks.read) {
            i5 = (infBlocks.read - i20) - 1;
        } else {
            i5 = infBlocks.end - i20;
        }
        int i21 = inflate_mask[i];
        int i22 = inflate_mask[i2];
        int i23 = i5;
        while (true) {
            if (i19 < 20) {
                i17--;
                i18 |= (zStream.next_in[i16] & 255) << i19;
                i19 += 8;
                i16++;
            } else {
                int i24 = i18 & i21;
                int i25 = (i3 + i24) * 3;
                int i26 = iArr[i25];
                if (i26 == 0) {
                    int i27 = i18 >> iArr[i25 + 1];
                    int i28 = i19 - iArr[i25 + 1];
                    i10 = i20 + 1;
                    infBlocks.window[i20] = (byte) iArr[i25 + 2];
                    i11 = i23 - 1;
                    i14 = i28;
                    i15 = i27;
                    i12 = i17;
                    i13 = i16;
                } else {
                    while (true) {
                        i18 >>= iArr[i25 + 1];
                        i19 -= iArr[i25 + 1];
                        if ((i26 & 16) != 0) {
                            int i29 = i26 & 15;
                            int i30 = iArr[i25 + 2] + (inflate_mask[i29] & i18);
                            int i31 = i18 >> i29;
                            int i32 = i19 - i29;
                            int i33 = i16;
                            int i34 = i17;
                            while (i32 < 15) {
                                i34--;
                                i31 |= (zStream.next_in[i33] & 255) << i32;
                                i32 += 8;
                                i33++;
                            }
                            int i35 = i31 & i22;
                            int i36 = (i4 + i35) * 3;
                            int i37 = iArr2[i36];
                            while (true) {
                                i31 >>= iArr2[i36 + 1];
                                i32 -= iArr2[i36 + 1];
                                if ((i37 & 16) != 0) {
                                    int i38 = i37 & 15;
                                    int i39 = i31;
                                    int i40 = i32;
                                    while (i40 < i38) {
                                        i34--;
                                        i39 |= (zStream.next_in[i33] & 255) << i40;
                                        i40 += 8;
                                        i33++;
                                    }
                                    int i41 = iArr2[i36 + 2] + (inflate_mask[i38] & i39);
                                    int i42 = i39 >> i38;
                                    int i43 = i40 - i38;
                                    int i44 = i23 - i30;
                                    if (i20 >= i41) {
                                        int i45 = i20 - i41;
                                        if (i20 - i45 <= 0 || 2 <= i20 - i45) {
                                            System.arraycopy(infBlocks.window, i45, infBlocks.window, i20, 2);
                                            i8 = i20 + 2;
                                            i6 = i45 + 2;
                                            i7 = i30 - 2;
                                        } else {
                                            int i46 = i20 + 1;
                                            int i47 = i45 + 1;
                                            infBlocks.window[i20] = infBlocks.window[i45];
                                            i8 = i46 + 1;
                                            i6 = i47 + 1;
                                            infBlocks.window[i46] = infBlocks.window[i47];
                                            i7 = i30 - 2;
                                        }
                                    } else {
                                        i6 = i20 - i41;
                                        do {
                                            i6 += infBlocks.end;
                                        } while (i6 < 0);
                                        int i48 = infBlocks.end - i6;
                                        if (i30 > i48) {
                                            int i49 = i30 - i48;
                                            if (i20 - i6 <= 0 || i48 <= i20 - i6) {
                                                System.arraycopy(infBlocks.window, i6, infBlocks.window, i20, i48);
                                                i9 = i20 + i48;
                                                int i50 = i6 + i48;
                                            } else {
                                                int i51 = i20;
                                                int i52 = i48;
                                                while (true) {
                                                    i9 = i51 + 1;
                                                    int i53 = i6 + 1;
                                                    infBlocks.window[i51] = infBlocks.window[i6];
                                                    int i54 = i52 - 1;
                                                    if (i54 == 0) {
                                                        break;
                                                    }
                                                    i51 = i9;
                                                    i52 = i54;
                                                    i6 = i53;
                                                }
                                            }
                                            i6 = 0;
                                            i7 = i49;
                                            i8 = i9;
                                        } else {
                                            i7 = i30;
                                            i8 = i20;
                                        }
                                    }
                                    if (i8 - i6 <= 0 || i7 <= i8 - i6) {
                                        System.arraycopy(infBlocks.window, i6, infBlocks.window, i8, i7);
                                        i10 = i8 + i7;
                                        int i55 = i6 + i7;
                                        i11 = i44;
                                        i12 = i34;
                                        i13 = i33;
                                        i14 = i43;
                                        i15 = i42;
                                    } else {
                                        int i56 = i8;
                                        int i57 = i7;
                                        while (true) {
                                            i10 = i56 + 1;
                                            int i58 = i6 + 1;
                                            infBlocks.window[i56] = infBlocks.window[i6];
                                            int i59 = i57 - 1;
                                            if (i59 == 0) {
                                                break;
                                            }
                                            i57 = i59;
                                            i56 = i10;
                                            i6 = i58;
                                        }
                                        i11 = i44;
                                        i12 = i34;
                                        i13 = i33;
                                        i14 = i43;
                                        i15 = i42;
                                    }
                                } else if (i37 == false || !true) {
                                    i35 = iArr2[i36 + 2] + i35 + (inflate_mask[i37] & i31);
                                    i36 = (i4 + i35) * 3;
                                    i37 = iArr2[i36];
                                } else {
                                    zStream.msg = "invalid distance code";
                                    int i60 = zStream.avail_in - i34;
                                    if ((i32 >> 3) < i60) {
                                        i60 = i32 >> 3;
                                    }
                                    int i61 = i34 + i60;
                                    int i62 = i33 - i60;
                                    int i63 = i32 - (i60 << 3);
                                    infBlocks.bitb = i31;
                                    infBlocks.bitk = i63;
                                    zStream.avail_in = i61;
                                    zStream.total_in += (long) (i62 - zStream.next_in_index);
                                    zStream.next_in_index = i62;
                                    infBlocks.write = i20;
                                    return -3;
                                }
                            }
                        } else if ((i26 & 64) == 0) {
                            i24 = iArr[i25 + 2] + i24 + (inflate_mask[i26] & i18);
                            i25 = (i3 + i24) * 3;
                            i26 = iArr[i25];
                            if (i26 == 0) {
                                int i64 = i18 >> iArr[i25 + 1];
                                int i65 = i19 - iArr[i25 + 1];
                                i10 = i20 + 1;
                                infBlocks.window[i20] = (byte) iArr[i25 + 2];
                                i11 = i23 - 1;
                                i14 = i65;
                                i15 = i64;
                                i12 = i17;
                                i13 = i16;
                                break;
                            }
                        } else if ((i26 & 32) != 0) {
                            int i66 = zStream.avail_in - i17;
                            if ((i19 >> 3) < i66) {
                                i66 = i19 >> 3;
                            }
                            int i67 = i17 + i66;
                            int i68 = i16 - i66;
                            int i69 = i19 - (i66 << 3);
                            infBlocks.bitb = i18;
                            infBlocks.bitk = i69;
                            zStream.avail_in = i67;
                            zStream.total_in += (long) (i68 - zStream.next_in_index);
                            zStream.next_in_index = i68;
                            infBlocks.write = i20;
                            return 1;
                        } else {
                            zStream.msg = "invalid literal/length code";
                            int i70 = zStream.avail_in - i17;
                            if ((i19 >> 3) < i70) {
                                i70 = i19 >> 3;
                            }
                            int i71 = i17 + i70;
                            int i72 = i16 - i70;
                            int i73 = i19 - (i70 << 3);
                            infBlocks.bitb = i18;
                            infBlocks.bitk = i73;
                            zStream.avail_in = i71;
                            zStream.total_in += (long) (i72 - zStream.next_in_index);
                            zStream.next_in_index = i72;
                            infBlocks.write = i20;
                            return -3;
                        }
                    }
                }
                if (i11 < 258 || i12 < 10) {
                    int i74 = zStream.avail_in - i12;
                } else {
                    i23 = i11;
                    i17 = i12;
                    i16 = i13;
                    i19 = i14;
                    i18 = i15;
                    i20 = i10;
                }
            }
        }
        int i742 = zStream.avail_in - i12;
        if ((i14 >> 3) < i742) {
            i742 = i14 >> 3;
        }
        int i75 = i12 + i742;
        int i76 = i13 - i742;
        int i77 = i14 - (i742 << 3);
        infBlocks.bitb = i15;
        infBlocks.bitk = i77;
        zStream.avail_in = i75;
        zStream.total_in += (long) (i76 - zStream.next_in_index);
        zStream.next_in_index = i76;
        infBlocks.write = i10;
        return 0;
    }
}
