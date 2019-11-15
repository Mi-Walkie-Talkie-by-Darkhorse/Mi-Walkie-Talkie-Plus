package org.jboss.netty.util.internal.jzlib;

import android.support.v4.internal.view.SupportMenu;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.mi.milinkforgame.sdk.data.Error;

final class InfBlocks {
    private static final int BAD = 9;
    private static final int BTREE = 4;
    private static final int CODES = 6;
    private static final int DONE = 8;
    private static final int DRY = 7;
    private static final int DTREE = 5;
    private static final int LENS = 1;
    private static final int STORED = 2;
    private static final int TABLE = 3;
    private static final int TYPE = 0;
    private static final int[] border = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    private static final int[] inflate_mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, Error.E_WTSDK_IS_BUSY, GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW, 2047, 4095, 8191, 16383, 32767, SupportMenu.USER_MASK};
    private final int[] bb = new int[1];
    int bitb;
    int bitk;
    private int[] blens;
    private long check;
    private final Object checkfn;
    private final InfCodes codes = new InfCodes();
    final int end;
    private int[] hufts = new int[4320];
    private int index;
    private final InfTree inftree = new InfTree();
    private int last;
    private int left;
    private int mode;
    int read;
    private int table;
    private final int[] tb = new int[1];
    byte[] window;
    int write;

    InfBlocks(ZStream zStream, Object obj, int i) {
        this.window = new byte[i];
        this.end = i;
        this.checkfn = obj;
        this.mode = 0;
        reset(zStream, null);
    }

    /* access modifiers changed from: 0000 */
    public void reset(ZStream zStream, long[] jArr) {
        if (jArr != null) {
            jArr[0] = this.check;
        }
        this.mode = 0;
        this.bitk = 0;
        this.bitb = 0;
        this.write = 0;
        this.read = 0;
        if (this.checkfn != null) {
            long adler32 = Adler32.adler32(0, null, 0, 0);
            this.check = adler32;
            zStream.adler = adler32;
        }
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:100:0x03cd, code lost:
        r21 = 0;
        r4 = r4 - 1;
        r11 = r5 + 1;
        r13 = r13 | ((r20.next_in[r5] & 255) << r12);
        r12 = r12 + 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x03e1, code lost:
        r6 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x03e2, code lost:
        if (r6 >= r7) goto L_0x03a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x03e4, code lost:
        r19.blens[r6] = 0;
        r6 = r6 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x03ee, code lost:
        r19.bitb = r13;
        r19.bitk = r12;
        r20.avail_in = r4;
        r20.total_in += (long) (r5 - r20.next_in_index);
        r20.next_in_index = r5;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:105:0x0418, code lost:
        r6 = r19.blens;
        r7 = border;
        r8 = r19.index;
        r19.index = r8 + 1;
        r6[r7[r8]] = r13 & 7;
        r9 = r13 >>> 3;
        r8 = r12 - 3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x043d, code lost:
        if (r19.index >= 19) goto L_0x0455;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x043f, code lost:
        r4 = r19.blens;
        r5 = border;
        r6 = r19.index;
        r19.index = r6 + 1;
        r4[r5[r6]] = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x0455, code lost:
        r19.bb[0] = 7;
        r4 = r19.inftree.inflate_trees_bits(r19.blens, r19.bb, r19.tb, r19.hufts, r20);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x0477, code lost:
        if (r4 == 0) goto L_0x04b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x047a, code lost:
        if (r4 != -3) goto L_0x0487;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:0x047c, code lost:
        r19.blens = null;
        r19.mode = 9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x0487, code lost:
        r19.bitb = r13;
        r19.bitk = r12;
        r20.avail_in = r10;
        r20.total_in += (long) (r11 - r20.next_in_index);
        r20.next_in_index = r11;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:0x04b5, code lost:
        r19.index = 0;
        r19.mode = 5;
        r15 = r10;
        r16 = r11;
        r17 = r12;
        r18 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x04c6, code lost:
        r4 = r19.table;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x04d7, code lost:
        if (r19.index < (((r4 >> 5) & 31) + ((r4 & 31) + 258))) goto L_0x055a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x04d9, code lost:
        r19.tb[0] = -1;
        r10 = new int[1];
        r11 = new int[1];
        r8 = new int[]{9};
        r9 = new int[]{6};
        r6 = r19.table;
        r4 = r19.inftree.inflate_trees_dynamic((r6 & 31) + 257, ((r6 >> 5) & 31) + 1, r19.blens, r8, r9, r10, r11, r19.hufts, r20);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x0516, code lost:
        if (r4 == 0) goto L_0x06e4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x0519, code lost:
        if (r4 != -3) goto L_0x0526;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x051b, code lost:
        r19.blens = null;
        r19.mode = 9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x0526, code lost:
        r19.bitb = r18;
        r19.bitk = r17;
        r20.avail_in = r15;
        r20.total_in += (long) (r16 - r20.next_in_index);
        r20.next_in_index = r16;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x055a, code lost:
        r4 = r19.bb[0];
        r10 = r15;
        r11 = r16;
        r5 = r17;
        r6 = r18;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:0x0568, code lost:
        if (r5 >= r4) goto L_0x05ab;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x056a, code lost:
        if (r10 == 0) goto L_0x0581;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:127:0x056c, code lost:
        r21 = 0;
        r10 = r10 - 1;
        r6 = r6 | ((r20.next_in[r11] & 255) << r5);
        r5 = r5 + 8;
        r11 = r11 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:0x0581, code lost:
        r19.bitb = r6;
        r19.bitk = r5;
        r20.avail_in = r10;
        r20.total_in += (long) (r11 - r20.next_in_index);
        r20.next_in_index = r11;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x05b3, code lost:
        if (r19.tb[0] != -1) goto L_0x05b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x05b5, code lost:
        r9 = r19.hufts[(((inflate_mask[r4] & r6) + r19.tb[0]) * 3) + 1];
        r15 = r19.hufts[((r19.tb[0] + (inflate_mask[r9] & r6)) * 3) + 2];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x05e5, code lost:
        if (r15 >= 16) goto L_0x0604;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x05e7, code lost:
        r13 = r6 >>> r9;
        r12 = r5 - r9;
        r4 = r19.blens;
        r5 = r19.index;
        r19.index = r5 + 1;
        r4[r5] = r15;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x05fb, code lost:
        r15 = r10;
        r16 = r11;
        r17 = r12;
        r18 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x0606, code lost:
        if (r15 != 18) goto L_0x062c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x0608, code lost:
        r8 = 7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x060c, code lost:
        if (r15 != 18) goto L_0x0630;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x060e, code lost:
        r4 = 11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x0610, code lost:
        r7 = r6;
        r6 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x0614, code lost:
        if (r6 >= (r9 + r8)) goto L_0x065c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:144:0x0616, code lost:
        if (r10 == 0) goto L_0x0632;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x0618, code lost:
        r21 = 0;
        r10 = r10 - 1;
        r7 = r7 | ((r20.next_in[r11] & 255) << r6);
        r6 = r6 + 8;
        r11 = r11 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x062c, code lost:
        r8 = r15 - 14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0630, code lost:
        r4 = 3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:148:0x0632, code lost:
        r19.bitb = r7;
        r19.bitk = r6;
        r20.avail_in = r10;
        r20.total_in += (long) (r11 - r20.next_in_index);
        r20.next_in_index = r11;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x065c, code lost:
        r7 = r7 >>> r9;
        r5 = (inflate_mask[r8] & r7) + r4;
        r13 = r7 >>> r8;
        r12 = (r6 - r9) - r8;
        r6 = r19.index;
        r4 = r19.table;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:150:0x067b, code lost:
        if ((r6 + r5) > (((r4 >> 5) & 31) + ((r4 & 31) + 258))) goto L_0x0684;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x067f, code lost:
        if (r15 != 16) goto L_0x06c4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x0682, code lost:
        if (r6 >= 1) goto L_0x06c4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x06c6, code lost:
        if (r15 != 16) goto L_0x06e2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x06c8, code lost:
        r4 = r19.blens[r6 - 1];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x06d0, code lost:
        r7 = r6 + 1;
        r19.blens[r6] = r4;
        r5 = r5 - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x06da, code lost:
        if (r5 != 0) goto L_0x0830;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x06dc, code lost:
        r19.index = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:0x06e2, code lost:
        r4 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:163:0x06e4, code lost:
        r19.codes.init(r8[0], r9[0], r19.hufts, r10[0], r19.hufts, r11[0]);
        r19.mode = 6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:164:0x0704, code lost:
        r19.bitb = r18;
        r19.bitk = r17;
        r20.avail_in = r15;
        r20.total_in += (long) (r16 - r20.next_in_index);
        r20.next_in_index = r16;
        r19.write = r14;
        r4 = r19.codes.proc(r19, r20, r21);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:165:0x073d, code lost:
        if (r4 == 1) goto L_0x0749;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:167:0x0749, code lost:
        r21 = 0;
        r7 = r20.next_in_index;
        r6 = r20.avail_in;
        r9 = r19.bitb;
        r8 = r19.bitk;
        r5 = r19.write;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:168:0x0763, code lost:
        if (r5 >= r19.read) goto L_0x077d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:169:0x0765, code lost:
        r4 = (r19.read - r5) - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:171:0x0770, code lost:
        if (r19.last != 0) goto L_0x0783;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x0772, code lost:
        r19.mode = 0;
        r11 = r4;
        r14 = r5;
        r4 = r6;
        r5 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:173:0x077d, code lost:
        r4 = r19.end - r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:174:0x0783, code lost:
        r19.mode = 7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:175:0x0788, code lost:
        r19.write = r5;
        r4 = inflate_flush(r20, r21);
        r14 = r19.write;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x079c, code lost:
        if (r19.read == r19.write) goto L_0x07cc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:177:0x079e, code lost:
        r19.bitb = r9;
        r19.bitk = r8;
        r20.avail_in = r6;
        r20.total_in += (long) (r7 - r20.next_in_index);
        r20.next_in_index = r7;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:0x07cc, code lost:
        r19.mode = 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:179:0x07d2, code lost:
        r19.bitb = r9;
        r19.bitk = r8;
        r20.avail_in = r6;
        r20.total_in += (long) (r7 - r20.next_in_index);
        r20.next_in_index = r7;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:0x0830, code lost:
        r6 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:237:?, code lost:
        return inflate_flush(r20, -3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:241:?, code lost:
        return inflate_flush(r20, -3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:242:?, code lost:
        return inflate_flush(r20, r21);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:243:?, code lost:
        return inflate_flush(r20, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:244:?, code lost:
        return inflate_flush(r20, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:245:?, code lost:
        return inflate_flush(r20, r21);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:246:?, code lost:
        return inflate_flush(r20, r21);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:248:?, code lost:
        return inflate_flush(r20, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:249:?, code lost:
        return inflate_flush(r20, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:250:?, code lost:
        return inflate_flush(r20, 1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0192, code lost:
        if ((((r9 ^ -1) >>> 16) & android.support.v4.internal.view.SupportMenu.USER_MASK) == (65535 & r9)) goto L_0x01cf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0194, code lost:
        r19.mode = 9;
        r20.msg = "invalid stored block lengths";
        r19.bitb = r9;
        r19.bitk = r8;
        r20.avail_in = r4;
        r20.total_in += (long) (r5 - r20.next_in_index);
        r20.next_in_index = r5;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x01cf, code lost:
        r19.left = 65535 & r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x01dc, code lost:
        if (r19.left == 0) goto L_0x01e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x01de, code lost:
        r7 = 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x01df, code lost:
        r19.mode = r7;
        r8 = 0;
        r9 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x01eb, code lost:
        if (r19.last == 0) goto L_0x01ef;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x01ed, code lost:
        r7 = 7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x01ef, code lost:
        r7 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x033b, code lost:
        r6 = r9 & 16383;
        r19.table = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x0345, code lost:
        if ((r6 & 31) > 29) goto L_0x034f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x034d, code lost:
        if (((r6 >> 5) & 31) <= 29) goto L_0x038a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x034f, code lost:
        r19.mode = 9;
        r20.msg = "too many length or distance symbols";
        r19.bitb = r9;
        r19.bitk = r8;
        r20.avail_in = r4;
        r20.total_in += (long) (r5 - r20.next_in_index);
        r20.next_in_index = r5;
        r19.write = r14;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x038a, code lost:
        r7 = ((r6 & 31) + 258) + ((r6 >> 5) & 31);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x0397, code lost:
        if (r19.blens == null) goto L_0x03a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x039e, code lost:
        if (r19.blens.length >= r7) goto L_0x03e1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x03a0, code lost:
        r19.blens = new int[r7];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:93:0x03a6, code lost:
        r9 = r9 >>> 14;
        r8 = r8 - 14;
        r19.index = 0;
        r19.mode = 4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x03b8, code lost:
        r10 = r4;
        r11 = r5;
        r12 = r8;
        r13 = r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x03c4, code lost:
        if (r19.index >= ((r19.table >>> 10) + 4)) goto L_0x0437;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x03c6, code lost:
        r4 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x03c8, code lost:
        r5 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x03c9, code lost:
        if (r12 >= 3) goto L_0x0418;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x03cb, code lost:
        if (r4 == 0) goto L_0x03ee;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int proc(org.jboss.netty.util.internal.jzlib.ZStream r20, int r21) {
        /*
            r19 = this;
            r0 = r20
            int r7 = r0.next_in_index
            r0 = r20
            int r6 = r0.avail_in
            r0 = r19
            int r9 = r0.bitb
            r0 = r19
            int r8 = r0.bitk
            r0 = r19
            int r5 = r0.write
            r0 = r19
            int r4 = r0.read
            if (r5 >= r4) goto L_0x005a
            r0 = r19
            int r4 = r0.read
            int r4 = r4 - r5
            int r4 = r4 + -1
        L_0x0021:
            r11 = r4
            r14 = r5
            r4 = r6
            r5 = r7
        L_0x0025:
            r0 = r19
            int r6 = r0.mode
            switch(r6) {
                case 0: goto L_0x0853;
                case 1: goto L_0x0142;
                case 2: goto L_0x01f1;
                case 3: goto L_0x02f7;
                case 4: goto L_0x03b4;
                case 5: goto L_0x0839;
                case 6: goto L_0x0842;
                case 7: goto L_0x084b;
                case 8: goto L_0x0850;
                case 9: goto L_0x0801;
                default: goto L_0x002c;
            }
        L_0x002c:
            r6 = -2
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r8 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r10 = (long) r4
            long r8 = r8 + r10
            r0 = r20
            r0.total_in = r8
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r6)
        L_0x0059:
            return r4
        L_0x005a:
            r0 = r19
            int r4 = r0.end
            int r4 = r4 - r5
            goto L_0x0021
        L_0x0060:
            r4 = 3
            if (r15 >= r4) goto L_0x00a5
            if (r12 == 0) goto L_0x007a
            r21 = 0
            int r12 = r12 + -1
            r0 = r20
            byte[] r4 = r0.next_in
            int r5 = r13 + 1
            byte r4 = r4[r13]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << r15
            r16 = r16 | r4
            int r15 = r15 + 8
            r13 = r5
            goto L_0x0060
        L_0x007a:
            r0 = r16
            r1 = r19
            r1.bitb = r0
            r0 = r19
            r0.bitk = r15
            r0 = r20
            r0.avail_in = r12
            r0 = r20
            long r4 = r0.total_in
            r0 = r20
            int r6 = r0.next_in_index
            int r6 = r13 - r6
            long r6 = (long) r6
            long r4 = r4 + r6
            r0 = r20
            r0.total_in = r4
            r0 = r20
            r0.next_in_index = r13
            r0 = r19
            r0.write = r14
            int r4 = r19.inflate_flush(r20, r21)
            goto L_0x0059
        L_0x00a5:
            r4 = r16 & 7
            r5 = r4 & 1
            r0 = r19
            r0.last = r5
            int r4 = r4 >>> 1
            switch(r4) {
                case 0: goto L_0x00bb;
                case 1: goto L_0x00cb;
                case 2: goto L_0x00f9;
                case 3: goto L_0x0103;
                default: goto L_0x00b2;
            }
        L_0x00b2:
            r4 = r15
            r6 = r16
        L_0x00b5:
            r5 = r13
            r8 = r4
            r9 = r6
            r4 = r12
            goto L_0x0025
        L_0x00bb:
            int r4 = r16 >>> 3
            int r5 = r15 + -3
            r7 = r5 & 7
            int r6 = r4 >>> r7
            int r4 = r5 - r7
            r5 = 1
            r0 = r19
            r0.mode = r5
            goto L_0x00b5
        L_0x00cb:
            r4 = 1
            int[] r5 = new int[r4]
            r4 = 1
            int[] r6 = new int[r4]
            r4 = 1
            int[][] r7 = new int[r4][]
            r4 = 1
            int[][] r9 = new int[r4][]
            org.jboss.netty.util.internal.jzlib.InfTree.inflate_trees_fixed(r5, r6, r7, r9)
            r0 = r19
            org.jboss.netty.util.internal.jzlib.InfCodes r4 = r0.codes
            r8 = 0
            r5 = r5[r8]
            r8 = 0
            r6 = r6[r8]
            r8 = 0
            r7 = r7[r8]
            r8 = 0
            r10 = 0
            r9 = r9[r10]
            r10 = 0
            r4.init(r5, r6, r7, r8, r9, r10)
            int r6 = r16 >>> 3
            int r4 = r15 + -3
            r5 = 6
            r0 = r19
            r0.mode = r5
            goto L_0x00b5
        L_0x00f9:
            int r6 = r16 >>> 3
            int r4 = r15 + -3
            r5 = 3
            r0 = r19
            r0.mode = r5
            goto L_0x00b5
        L_0x0103:
            int r4 = r16 >>> 3
            int r5 = r15 + -3
            r6 = 9
            r0 = r19
            r0.mode = r6
            java.lang.String r6 = "invalid block type"
            r0 = r20
            r0.msg = r6
            r6 = -3
            r0 = r19
            r0.bitb = r4
            r0 = r19
            r0.bitk = r5
            r0 = r20
            r0.avail_in = r12
            r0 = r20
            long r4 = r0.total_in
            r0 = r20
            int r7 = r0.next_in_index
            int r7 = r13 - r7
            long r8 = (long) r7
            long r4 = r4 + r8
            r0 = r20
            r0.total_in = r4
            r0 = r20
            r0.next_in_index = r13
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r6)
            goto L_0x0059
        L_0x0142:
            r6 = 32
            if (r8 >= r6) goto L_0x0186
            if (r4 == 0) goto L_0x015c
            r21 = 0
            int r4 = r4 + -1
            r0 = r20
            byte[] r7 = r0.next_in
            int r6 = r5 + 1
            byte r5 = r7[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r5 = r5 << r8
            r9 = r9 | r5
            int r8 = r8 + 8
            r5 = r6
            goto L_0x0142
        L_0x015c:
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r6 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r8 = (long) r4
            long r6 = r6 + r8
            r0 = r20
            r0.total_in = r6
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            int r4 = r19.inflate_flush(r20, r21)
            goto L_0x0059
        L_0x0186:
            r6 = r9 ^ -1
            int r6 = r6 >>> 16
            r7 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r7
            r7 = 65535(0xffff, float:9.1834E-41)
            r7 = r7 & r9
            if (r6 == r7) goto L_0x01cf
            r6 = 9
            r0 = r19
            r0.mode = r6
            java.lang.String r6 = "invalid stored block lengths"
            r0 = r20
            r0.msg = r6
            r6 = -3
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r8 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r10 = (long) r4
            long r8 = r8 + r10
            r0 = r20
            r0.total_in = r8
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r6)
            goto L_0x0059
        L_0x01cf:
            r6 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r9
            r0 = r19
            r0.left = r6
            r6 = 0
            r0 = r19
            int r7 = r0.left
            if (r7 == 0) goto L_0x01e7
            r7 = 2
        L_0x01df:
            r0 = r19
            r0.mode = r7
            r8 = r6
            r9 = r6
            goto L_0x0025
        L_0x01e7:
            r0 = r19
            int r7 = r0.last
            if (r7 == 0) goto L_0x01ef
            r7 = 7
            goto L_0x01df
        L_0x01ef:
            r7 = 0
            goto L_0x01df
        L_0x01f1:
            if (r4 != 0) goto L_0x021e
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r4 = 0
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r6 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r8 = (long) r4
            long r6 = r6 + r8
            r0 = r20
            r0.total_in = r6
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            int r4 = r19.inflate_flush(r20, r21)
            goto L_0x0059
        L_0x021e:
            if (r11 != 0) goto L_0x02b3
            r0 = r19
            int r6 = r0.end
            if (r14 != r6) goto L_0x023b
            r0 = r19
            int r6 = r0.read
            if (r6 == 0) goto L_0x023b
            r14 = 0
            r0 = r19
            int r6 = r0.read
            if (r14 >= r6) goto L_0x02a1
            r0 = r19
            int r6 = r0.read
            int r6 = r6 - r14
            int r6 = r6 + -1
        L_0x023a:
            r11 = r6
        L_0x023b:
            if (r11 != 0) goto L_0x02b3
            r0 = r19
            r0.write = r14
            int r7 = r19.inflate_flush(r20, r21)
            r0 = r19
            int r14 = r0.write
            r0 = r19
            int r6 = r0.read
            if (r14 >= r6) goto L_0x02a7
            r0 = r19
            int r6 = r0.read
            int r6 = r6 - r14
            int r6 = r6 + -1
        L_0x0256:
            r0 = r19
            int r10 = r0.end
            if (r14 != r10) goto L_0x0836
            r0 = r19
            int r10 = r0.read
            if (r10 == 0) goto L_0x0836
            r14 = 0
            r0 = r19
            int r6 = r0.read
            if (r14 >= r6) goto L_0x02ad
            r0 = r19
            int r6 = r0.read
            int r6 = r6 - r14
            int r6 = r6 + -1
        L_0x0270:
            r11 = r6
        L_0x0271:
            if (r11 != 0) goto L_0x02b3
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r8 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r10 = (long) r4
            long r8 = r8 + r10
            r0 = r20
            r0.total_in = r8
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r7)
            goto L_0x0059
        L_0x02a1:
            r0 = r19
            int r6 = r0.end
            int r6 = r6 - r14
            goto L_0x023a
        L_0x02a7:
            r0 = r19
            int r6 = r0.end
            int r6 = r6 - r14
            goto L_0x0256
        L_0x02ad:
            r0 = r19
            int r6 = r0.end
            int r6 = r6 - r14
            goto L_0x0270
        L_0x02b3:
            r21 = 0
            r0 = r19
            int r6 = r0.left
            if (r6 <= r4) goto L_0x02bc
            r6 = r4
        L_0x02bc:
            if (r6 <= r11) goto L_0x0833
            r10 = r11
        L_0x02bf:
            r0 = r20
            byte[] r6 = r0.next_in
            r0 = r19
            byte[] r7 = r0.window
            java.lang.System.arraycopy(r6, r5, r7, r14, r10)
            int r7 = r5 + r10
            int r6 = r4 - r10
            int r5 = r14 + r10
            int r4 = r11 - r10
            r0 = r19
            int r11 = r0.left
            int r10 = r11 - r10
            r0 = r19
            r0.left = r10
            if (r10 == 0) goto L_0x02e4
            r11 = r4
            r14 = r5
            r4 = r6
            r5 = r7
            goto L_0x0025
        L_0x02e4:
            r0 = r19
            int r10 = r0.last
            if (r10 == 0) goto L_0x02f5
            r10 = 7
        L_0x02eb:
            r0 = r19
            r0.mode = r10
            r11 = r4
            r14 = r5
            r4 = r6
            r5 = r7
            goto L_0x0025
        L_0x02f5:
            r10 = 0
            goto L_0x02eb
        L_0x02f7:
            r6 = 14
            if (r8 >= r6) goto L_0x033b
            if (r4 == 0) goto L_0x0311
            r21 = 0
            int r4 = r4 + -1
            r0 = r20
            byte[] r7 = r0.next_in
            int r6 = r5 + 1
            byte r5 = r7[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r5 = r5 << r8
            r9 = r9 | r5
            int r8 = r8 + 8
            r5 = r6
            goto L_0x02f7
        L_0x0311:
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r6 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r8 = (long) r4
            long r6 = r6 + r8
            r0 = r20
            r0.total_in = r6
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            int r4 = r19.inflate_flush(r20, r21)
            goto L_0x0059
        L_0x033b:
            r6 = r9 & 16383(0x3fff, float:2.2957E-41)
            r0 = r19
            r0.table = r6
            r7 = r6 & 31
            r10 = 29
            if (r7 > r10) goto L_0x034f
            int r7 = r6 >> 5
            r7 = r7 & 31
            r10 = 29
            if (r7 <= r10) goto L_0x038a
        L_0x034f:
            r6 = 9
            r0 = r19
            r0.mode = r6
            java.lang.String r6 = "too many length or distance symbols"
            r0 = r20
            r0.msg = r6
            r6 = -3
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r8 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r10 = (long) r4
            long r8 = r8 + r10
            r0 = r20
            r0.total_in = r8
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r6)
            goto L_0x0059
        L_0x038a:
            r7 = r6 & 31
            int r7 = r7 + 258
            int r6 = r6 >> 5
            r6 = r6 & 31
            int r7 = r7 + r6
            r0 = r19
            int[] r6 = r0.blens
            if (r6 == 0) goto L_0x03a0
            r0 = r19
            int[] r6 = r0.blens
            int r6 = r6.length
            if (r6 >= r7) goto L_0x03e1
        L_0x03a0:
            int[] r6 = new int[r7]
            r0 = r19
            r0.blens = r6
        L_0x03a6:
            int r9 = r9 >>> 14
            int r8 = r8 + -14
            r6 = 0
            r0 = r19
            r0.index = r6
            r6 = 4
            r0 = r19
            r0.mode = r6
        L_0x03b4:
            r10 = r4
            r11 = r5
            r12 = r8
            r13 = r9
        L_0x03b8:
            r0 = r19
            int r4 = r0.index
            r0 = r19
            int r5 = r0.table
            int r5 = r5 >>> 10
            int r5 = r5 + 4
            if (r4 >= r5) goto L_0x0437
            r4 = r10
            r5 = r11
        L_0x03c8:
            r6 = 3
            if (r12 >= r6) goto L_0x0418
            if (r4 == 0) goto L_0x03ee
            r21 = 0
            int r4 = r4 + -1
            r0 = r20
            byte[] r6 = r0.next_in
            int r11 = r5 + 1
            byte r5 = r6[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r5 = r5 << r12
            r13 = r13 | r5
            int r12 = r12 + 8
            r5 = r11
            goto L_0x03c8
        L_0x03e1:
            r6 = 0
        L_0x03e2:
            if (r6 >= r7) goto L_0x03a6
            r0 = r19
            int[] r10 = r0.blens
            r11 = 0
            r10[r6] = r11
            int r6 = r6 + 1
            goto L_0x03e2
        L_0x03ee:
            r0 = r19
            r0.bitb = r13
            r0 = r19
            r0.bitk = r12
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r6 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r8 = (long) r4
            long r6 = r6 + r8
            r0 = r20
            r0.total_in = r6
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            int r4 = r19.inflate_flush(r20, r21)
            goto L_0x0059
        L_0x0418:
            r0 = r19
            int[] r6 = r0.blens
            int[] r7 = border
            r0 = r19
            int r8 = r0.index
            int r9 = r8 + 1
            r0 = r19
            r0.index = r9
            r7 = r7[r8]
            r8 = r13 & 7
            r6[r7] = r8
            int r9 = r13 >>> 3
            int r8 = r12 + -3
            r10 = r4
            r11 = r5
            r12 = r8
            r13 = r9
            goto L_0x03b8
        L_0x0437:
            r0 = r19
            int r4 = r0.index
            r5 = 19
            if (r4 >= r5) goto L_0x0455
            r0 = r19
            int[] r4 = r0.blens
            int[] r5 = border
            r0 = r19
            int r6 = r0.index
            int r7 = r6 + 1
            r0 = r19
            r0.index = r7
            r5 = r5[r6]
            r6 = 0
            r4[r5] = r6
            goto L_0x0437
        L_0x0455:
            r0 = r19
            int[] r4 = r0.bb
            r5 = 0
            r6 = 7
            r4[r5] = r6
            r0 = r19
            org.jboss.netty.util.internal.jzlib.InfTree r4 = r0.inftree
            r0 = r19
            int[] r5 = r0.blens
            r0 = r19
            int[] r6 = r0.bb
            r0 = r19
            int[] r7 = r0.tb
            r0 = r19
            int[] r8 = r0.hufts
            r9 = r20
            int r4 = r4.inflate_trees_bits(r5, r6, r7, r8, r9)
            if (r4 == 0) goto L_0x04b5
            r5 = -3
            if (r4 != r5) goto L_0x0487
            r5 = 0
            r0 = r19
            r0.blens = r5
            r5 = 9
            r0 = r19
            r0.mode = r5
        L_0x0487:
            r0 = r19
            r0.bitb = r13
            r0 = r19
            r0.bitk = r12
            r0 = r20
            r0.avail_in = r10
            r0 = r20
            long r6 = r0.total_in
            r0 = r20
            int r5 = r0.next_in_index
            int r5 = r11 - r5
            long r8 = (long) r5
            long r6 = r6 + r8
            r0 = r20
            r0.total_in = r6
            r0 = r20
            r0.next_in_index = r11
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r4)
            goto L_0x0059
        L_0x04b5:
            r4 = 0
            r0 = r19
            r0.index = r4
            r4 = 5
            r0 = r19
            r0.mode = r4
            r15 = r10
            r16 = r11
            r17 = r12
            r18 = r13
        L_0x04c6:
            r0 = r19
            int r4 = r0.table
            r0 = r19
            int r5 = r0.index
            r6 = r4 & 31
            int r6 = r6 + 258
            int r4 = r4 >> 5
            r4 = r4 & 31
            int r4 = r4 + r6
            if (r5 < r4) goto L_0x055a
            r0 = r19
            int[] r4 = r0.tb
            r5 = 0
            r6 = -1
            r4[r5] = r6
            r4 = 1
            int[] r8 = new int[r4]
            r4 = 1
            int[] r9 = new int[r4]
            r4 = 1
            int[] r10 = new int[r4]
            r4 = 1
            int[] r11 = new int[r4]
            r4 = 0
            r5 = 9
            r8[r4] = r5
            r4 = 0
            r5 = 6
            r9[r4] = r5
            r0 = r19
            int r6 = r0.table
            r0 = r19
            org.jboss.netty.util.internal.jzlib.InfTree r4 = r0.inftree
            r5 = r6 & 31
            int r5 = r5 + 257
            int r6 = r6 >> 5
            r6 = r6 & 31
            int r6 = r6 + 1
            r0 = r19
            int[] r7 = r0.blens
            r0 = r19
            int[] r12 = r0.hufts
            r13 = r20
            int r4 = r4.inflate_trees_dynamic(r5, r6, r7, r8, r9, r10, r11, r12, r13)
            if (r4 == 0) goto L_0x06e4
            r5 = -3
            if (r4 != r5) goto L_0x0526
            r5 = 0
            r0 = r19
            r0.blens = r5
            r5 = 9
            r0 = r19
            r0.mode = r5
        L_0x0526:
            r0 = r18
            r1 = r19
            r1.bitb = r0
            r0 = r17
            r1 = r19
            r1.bitk = r0
            r0 = r20
            r0.avail_in = r15
            r0 = r20
            long r6 = r0.total_in
            r0 = r20
            int r5 = r0.next_in_index
            int r5 = r16 - r5
            long r8 = (long) r5
            long r6 = r6 + r8
            r0 = r20
            r0.total_in = r6
            r0 = r16
            r1 = r20
            r1.next_in_index = r0
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r4)
            goto L_0x0059
        L_0x055a:
            r0 = r19
            int[] r4 = r0.bb
            r5 = 0
            r4 = r4[r5]
            r10 = r15
            r11 = r16
            r5 = r17
            r6 = r18
        L_0x0568:
            if (r5 >= r4) goto L_0x05ab
            if (r10 == 0) goto L_0x0581
            r21 = 0
            int r10 = r10 + -1
            r0 = r20
            byte[] r7 = r0.next_in
            int r16 = r11 + 1
            byte r7 = r7[r11]
            r7 = r7 & 255(0xff, float:3.57E-43)
            int r7 = r7 << r5
            r6 = r6 | r7
            int r5 = r5 + 8
            r11 = r16
            goto L_0x0568
        L_0x0581:
            r0 = r19
            r0.bitb = r6
            r0 = r19
            r0.bitk = r5
            r0 = r20
            r0.avail_in = r10
            r0 = r20
            long r4 = r0.total_in
            r0 = r20
            int r6 = r0.next_in_index
            int r6 = r11 - r6
            long r6 = (long) r6
            long r4 = r4 + r6
            r0 = r20
            r0.total_in = r4
            r0 = r20
            r0.next_in_index = r11
            r0 = r19
            r0.write = r14
            int r4 = r19.inflate_flush(r20, r21)
            goto L_0x0059
        L_0x05ab:
            r0 = r19
            int[] r7 = r0.tb
            r8 = 0
            r7 = r7[r8]
            r8 = -1
            if (r7 != r8) goto L_0x05b5
        L_0x05b5:
            r0 = r19
            int[] r7 = r0.hufts
            r0 = r19
            int[] r8 = r0.tb
            r9 = 0
            r8 = r8[r9]
            int[] r9 = inflate_mask
            r4 = r9[r4]
            r4 = r4 & r6
            int r4 = r4 + r8
            int r4 = r4 * 3
            int r4 = r4 + 1
            r9 = r7[r4]
            r0 = r19
            int[] r4 = r0.hufts
            r0 = r19
            int[] r7 = r0.tb
            r8 = 0
            r7 = r7[r8]
            int[] r8 = inflate_mask
            r8 = r8[r9]
            r8 = r8 & r6
            int r7 = r7 + r8
            int r7 = r7 * 3
            int r7 = r7 + 2
            r15 = r4[r7]
            r4 = 16
            if (r15 >= r4) goto L_0x0604
            int r13 = r6 >>> r9
            int r12 = r5 - r9
            r0 = r19
            int[] r4 = r0.blens
            r0 = r19
            int r5 = r0.index
            int r6 = r5 + 1
            r0 = r19
            r0.index = r6
            r4[r5] = r15
        L_0x05fb:
            r15 = r10
            r16 = r11
            r17 = r12
            r18 = r13
            goto L_0x04c6
        L_0x0604:
            r4 = 18
            if (r15 != r4) goto L_0x062c
            r4 = 7
            r8 = r4
        L_0x060a:
            r4 = 18
            if (r15 != r4) goto L_0x0630
            r4 = 11
        L_0x0610:
            r7 = r6
            r6 = r5
        L_0x0612:
            int r5 = r9 + r8
            if (r6 >= r5) goto L_0x065c
            if (r10 == 0) goto L_0x0632
            r21 = 0
            int r10 = r10 + -1
            r0 = r20
            byte[] r12 = r0.next_in
            int r5 = r11 + 1
            byte r11 = r12[r11]
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r11 = r11 << r6
            r7 = r7 | r11
            int r6 = r6 + 8
            r11 = r5
            goto L_0x0612
        L_0x062c:
            int r4 = r15 + -14
            r8 = r4
            goto L_0x060a
        L_0x0630:
            r4 = 3
            goto L_0x0610
        L_0x0632:
            r0 = r19
            r0.bitb = r7
            r0 = r19
            r0.bitk = r6
            r0 = r20
            r0.avail_in = r10
            r0 = r20
            long r4 = r0.total_in
            r0 = r20
            int r6 = r0.next_in_index
            int r6 = r11 - r6
            long r6 = (long) r6
            long r4 = r4 + r6
            r0 = r20
            r0.total_in = r4
            r0 = r20
            r0.next_in_index = r11
            r0 = r19
            r0.write = r14
            int r4 = r19.inflate_flush(r20, r21)
            goto L_0x0059
        L_0x065c:
            int r7 = r7 >>> r9
            int r6 = r6 - r9
            int[] r5 = inflate_mask
            r5 = r5[r8]
            r5 = r5 & r7
            int r5 = r5 + r4
            int r13 = r7 >>> r8
            int r12 = r6 - r8
            r0 = r19
            int r6 = r0.index
            r0 = r19
            int r4 = r0.table
            int r7 = r6 + r5
            r8 = r4 & 31
            int r8 = r8 + 258
            int r4 = r4 >> 5
            r4 = r4 & 31
            int r4 = r4 + r8
            if (r7 > r4) goto L_0x0684
            r4 = 16
            if (r15 != r4) goto L_0x06c4
            r4 = 1
            if (r6 >= r4) goto L_0x06c4
        L_0x0684:
            r4 = 0
            r0 = r19
            r0.blens = r4
            r4 = 9
            r0 = r19
            r0.mode = r4
            java.lang.String r4 = "invalid bit length repeat"
            r0 = r20
            r0.msg = r4
            r4 = -3
            r0 = r19
            r0.bitb = r13
            r0 = r19
            r0.bitk = r12
            r0 = r20
            r0.avail_in = r10
            r0 = r20
            long r6 = r0.total_in
            r0 = r20
            int r5 = r0.next_in_index
            int r5 = r11 - r5
            long r8 = (long) r5
            long r6 = r6 + r8
            r0 = r20
            r0.total_in = r6
            r0 = r20
            r0.next_in_index = r11
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r4)
            goto L_0x0059
        L_0x06c4:
            r4 = 16
            if (r15 != r4) goto L_0x06e2
            r0 = r19
            int[] r4 = r0.blens
            int r7 = r6 + -1
            r4 = r4[r7]
        L_0x06d0:
            r0 = r19
            int[] r8 = r0.blens
            int r7 = r6 + 1
            r8[r6] = r4
            int r5 = r5 + -1
            if (r5 != 0) goto L_0x0830
            r0 = r19
            r0.index = r7
            goto L_0x05fb
        L_0x06e2:
            r4 = 0
            goto L_0x06d0
        L_0x06e4:
            r0 = r19
            org.jboss.netty.util.internal.jzlib.InfCodes r4 = r0.codes
            r5 = 0
            r5 = r8[r5]
            r6 = 0
            r6 = r9[r6]
            r0 = r19
            int[] r7 = r0.hufts
            r8 = 0
            r8 = r10[r8]
            r0 = r19
            int[] r9 = r0.hufts
            r10 = 0
            r10 = r11[r10]
            r4.init(r5, r6, r7, r8, r9, r10)
            r4 = 6
            r0 = r19
            r0.mode = r4
        L_0x0704:
            r0 = r18
            r1 = r19
            r1.bitb = r0
            r0 = r17
            r1 = r19
            r1.bitk = r0
            r0 = r20
            r0.avail_in = r15
            r0 = r20
            long r4 = r0.total_in
            r0 = r20
            int r6 = r0.next_in_index
            int r6 = r16 - r6
            long r6 = (long) r6
            long r4 = r4 + r6
            r0 = r20
            r0.total_in = r4
            r0 = r16
            r1 = r20
            r1.next_in_index = r0
            r0 = r19
            r0.write = r14
            r0 = r19
            org.jboss.netty.util.internal.jzlib.InfCodes r4 = r0.codes
            r0 = r19
            r1 = r20
            r2 = r21
            int r4 = r4.proc(r0, r1, r2)
            r5 = 1
            if (r4 == r5) goto L_0x0749
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r4)
            goto L_0x0059
        L_0x0749:
            r21 = 0
            r0 = r20
            int r7 = r0.next_in_index
            r0 = r20
            int r6 = r0.avail_in
            r0 = r19
            int r9 = r0.bitb
            r0 = r19
            int r8 = r0.bitk
            r0 = r19
            int r5 = r0.write
            r0 = r19
            int r4 = r0.read
            if (r5 >= r4) goto L_0x077d
            r0 = r19
            int r4 = r0.read
            int r4 = r4 - r5
            int r4 = r4 + -1
        L_0x076c:
            r0 = r19
            int r10 = r0.last
            if (r10 != 0) goto L_0x0783
            r10 = 0
            r0 = r19
            r0.mode = r10
            r11 = r4
            r14 = r5
            r4 = r6
            r5 = r7
            goto L_0x0025
        L_0x077d:
            r0 = r19
            int r4 = r0.end
            int r4 = r4 - r5
            goto L_0x076c
        L_0x0783:
            r4 = 7
            r0 = r19
            r0.mode = r4
        L_0x0788:
            r0 = r19
            r0.write = r5
            int r4 = r19.inflate_flush(r20, r21)
            r0 = r19
            int r14 = r0.write
            r0 = r19
            int r5 = r0.read
            r0 = r19
            int r10 = r0.write
            if (r5 == r10) goto L_0x07cc
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r6
            r0 = r20
            long r8 = r0.total_in
            r0 = r20
            int r5 = r0.next_in_index
            int r5 = r7 - r5
            long r10 = (long) r5
            long r8 = r8 + r10
            r0 = r20
            r0.total_in = r8
            r0 = r20
            r0.next_in_index = r7
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r4)
            goto L_0x0059
        L_0x07cc:
            r4 = 8
            r0 = r19
            r0.mode = r4
        L_0x07d2:
            r4 = 1
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r6
            r0 = r20
            long r8 = r0.total_in
            r0 = r20
            int r5 = r0.next_in_index
            int r5 = r7 - r5
            long r10 = (long) r5
            long r8 = r8 + r10
            r0 = r20
            r0.total_in = r8
            r0 = r20
            r0.next_in_index = r7
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r4)
            goto L_0x0059
        L_0x0801:
            r6 = -3
            r0 = r19
            r0.bitb = r9
            r0 = r19
            r0.bitk = r8
            r0 = r20
            r0.avail_in = r4
            r0 = r20
            long r8 = r0.total_in
            r0 = r20
            int r4 = r0.next_in_index
            int r4 = r5 - r4
            long r10 = (long) r4
            long r8 = r8 + r10
            r0 = r20
            r0.total_in = r8
            r0 = r20
            r0.next_in_index = r5
            r0 = r19
            r0.write = r14
            r0 = r19
            r1 = r20
            int r4 = r0.inflate_flush(r1, r6)
            goto L_0x0059
        L_0x0830:
            r6 = r7
            goto L_0x06d0
        L_0x0833:
            r10 = r6
            goto L_0x02bf
        L_0x0836:
            r11 = r6
            goto L_0x0271
        L_0x0839:
            r15 = r4
            r16 = r5
            r17 = r8
            r18 = r9
            goto L_0x04c6
        L_0x0842:
            r15 = r4
            r16 = r5
            r17 = r8
            r18 = r9
            goto L_0x0704
        L_0x084b:
            r6 = r4
            r7 = r5
            r5 = r14
            goto L_0x0788
        L_0x0850:
            r6 = r4
            r7 = r5
            goto L_0x07d2
        L_0x0853:
            r12 = r4
            r13 = r5
            r15 = r8
            r16 = r9
            goto L_0x0060
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.InfBlocks.proc(org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }

    /* access modifiers changed from: 0000 */
    public void free(ZStream zStream) {
        reset(zStream, null);
        this.window = null;
        this.hufts = null;
    }

    /* access modifiers changed from: 0000 */
    public void set_dictionary(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.window, 0, i2);
        this.write = i2;
        this.read = i2;
    }

    /* access modifiers changed from: 0000 */
    public int sync_point() {
        return this.mode == 1 ? 1 : 0;
    }

    /* access modifiers changed from: 0000 */
    public int inflate_flush(ZStream zStream, int i) {
        int i2;
        int i3 = zStream.next_out_index;
        int i4 = this.read;
        int i5 = (i4 <= this.write ? this.write : this.end) - i4;
        if (i5 > zStream.avail_out) {
            i5 = zStream.avail_out;
        }
        if (i5 != 0 && i == -5) {
            i = 0;
        }
        zStream.avail_out -= i5;
        zStream.total_out += (long) i5;
        if (this.checkfn != null) {
            long adler32 = Adler32.adler32(this.check, this.window, i4, i5);
            this.check = adler32;
            zStream.adler = adler32;
        }
        System.arraycopy(this.window, i4, zStream.next_out, i3, i5);
        int i6 = i3 + i5;
        int i7 = i5 + i4;
        if (i7 == this.end) {
            if (this.write == this.end) {
                this.write = 0;
            }
            int i8 = this.write - 0;
            if (i8 > zStream.avail_out) {
                i8 = zStream.avail_out;
            }
            if (i8 != 0 && i == -5) {
                i = 0;
            }
            zStream.avail_out -= i8;
            zStream.total_out += (long) i8;
            if (this.checkfn != null) {
                long adler322 = Adler32.adler32(this.check, this.window, 0, i8);
                this.check = adler322;
                zStream.adler = adler322;
            }
            System.arraycopy(this.window, 0, zStream.next_out, i6, i8);
            int i9 = i6 + i8;
            i7 = i8 + 0;
            i2 = i9;
        } else {
            i2 = i6;
        }
        zStream.next_out_index = i2;
        this.read = i7;
        return i;
    }
}
