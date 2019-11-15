package org.jboss.netty.util.internal.jzlib;

final class Inflate {
    private static final int BAD = 13;
    private static final int BLOCKS = 7;
    private static final int CHECK1 = 11;
    private static final int CHECK2 = 10;
    private static final int CHECK3 = 9;
    private static final int CHECK4 = 8;
    private static final int DICT0 = 6;
    private static final int DICT1 = 5;
    private static final int DICT2 = 4;
    private static final int DICT3 = 3;
    private static final int DICT4 = 2;
    private static final int DONE = 12;
    private static final int FLAG = 1;
    private static final int GZIP_CM = 16;
    private static final int GZIP_CRC32 = 24;
    private static final int GZIP_FCOMMENT = 22;
    private static final int GZIP_FEXTRA = 20;
    private static final int GZIP_FHCRC = 23;
    private static final int GZIP_FLG = 17;
    private static final int GZIP_FNAME = 21;
    private static final int GZIP_ID1 = 14;
    private static final int GZIP_ID2 = 15;
    private static final int GZIP_ISIZE = 25;
    private static final int GZIP_MTIME_XFL_OS = 18;
    private static final int GZIP_XLEN = 19;
    private static final int METHOD = 0;
    private static final byte[] mark = {0, 0, -1, -1};
    private InfBlocks blocks;
    private int gzipBytesToRead;
    private int gzipCRC32;
    private int gzipFlag;
    private int gzipISize;
    private int gzipUncompressedBytes;
    private int gzipXLen;
    private int marker;
    private int method;
    private int mode;
    private long need;
    private final long[] was = new long[1];
    private int wbits;
    private WrapperType wrapperType;

    Inflate() {
    }

    private int inflateReset(ZStream zStream) {
        if (zStream == null || zStream.istate == null) {
            return -2;
        }
        zStream.total_out = 0;
        zStream.total_in = 0;
        zStream.msg = null;
        switch (this.wrapperType) {
            case NONE:
                zStream.istate.mode = 7;
                break;
            case ZLIB:
            case ZLIB_OR_NONE:
                zStream.istate.mode = 0;
                break;
            case GZIP:
                zStream.istate.mode = 14;
                break;
        }
        zStream.istate.blocks.reset(zStream, null);
        this.gzipUncompressedBytes = 0;
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public int inflateEnd(ZStream zStream) {
        if (this.blocks != null) {
            this.blocks.free(zStream);
        }
        this.blocks = null;
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public int inflateInit(ZStream zStream, int i, WrapperType wrapperType2) {
        Inflate inflate = null;
        zStream.msg = null;
        this.blocks = null;
        this.wrapperType = wrapperType2;
        if (i < 0) {
            throw new IllegalArgumentException("w: " + i);
        } else if (i < 8 || i > 15) {
            inflateEnd(zStream);
            return -2;
        } else {
            this.wbits = i;
            Inflate inflate2 = zStream.istate;
            if (zStream.istate.wrapperType != WrapperType.NONE) {
                inflate = this;
            }
            inflate2.blocks = new InfBlocks(zStream, inflate, 1 << i);
            inflateReset(zStream);
            return 0;
        }
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x0470, code lost:
        if (r8.gzipBytesToRead <= 0) goto L_0x0491;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x0474, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:0x0476, code lost:
        r9.avail_in--;
        r9.total_in++;
        r9.next_in_index++;
        r8.gzipBytesToRead--;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x0491, code lost:
        r9.istate.mode = 19;
        r8.gzipXLen = 0;
        r8.gzipBytesToRead = 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:128:0x04a1, code lost:
        if ((r8.gzipFlag & 4) == 0) goto L_0x0505;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x04a5, code lost:
        if (r8.gzipBytesToRead <= 0) goto L_0x04d8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x04a9, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x04ab, code lost:
        r9.avail_in--;
        r9.total_in++;
        r1 = r8.gzipXLen;
        r2 = r9.next_in;
        r3 = r9.next_in_index;
        r9.next_in_index = r3 + 1;
        r8.gzipXLen = r1 | ((r2[r3] & 255) << ((1 - r8.gzipBytesToRead) * 8));
        r8.gzipBytesToRead--;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x04d8, code lost:
        r8.gzipBytesToRead = r8.gzipXLen;
        r9.istate.mode = 20;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x04e4, code lost:
        if (r8.gzipBytesToRead <= 0) goto L_0x050d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x04e8, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x04ea, code lost:
        r9.avail_in--;
        r9.total_in++;
        r9.next_in_index++;
        r8.gzipBytesToRead--;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x0505, code lost:
        r9.istate.mode = 21;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x050d, code lost:
        r9.istate.mode = 21;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x0517, code lost:
        if ((r8.gzipFlag & 8) == 0) goto L_0x0537;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x051b, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x051d, code lost:
        r9.avail_in--;
        r9.total_in++;
        r1 = r9.next_in;
        r2 = r9.next_in_index;
        r9.next_in_index = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:147:0x0534, code lost:
        if (r1[r2] != 0) goto L_0x064f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:148:0x0536, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x0537, code lost:
        r9.istate.mode = 22;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x0541, code lost:
        if ((r8.gzipFlag & 16) == 0) goto L_0x0561;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x0545, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x0547, code lost:
        r9.avail_in--;
        r9.total_in++;
        r1 = r9.next_in;
        r2 = r9.next_in_index;
        r9.next_in_index = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x055e, code lost:
        if (r1[r2] != 0) goto L_0x064c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x0560, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:157:0x0561, code lost:
        r8.gzipBytesToRead = 2;
        r9.istate.mode = 23;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x056e, code lost:
        if ((r8.gzipFlag & 2) == 0) goto L_0x0593;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x0572, code lost:
        if (r8.gzipBytesToRead <= 0) goto L_0x0593;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:163:0x0576, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:164:0x0578, code lost:
        r9.avail_in--;
        r9.total_in++;
        r9.next_in_index++;
        r8.gzipBytesToRead--;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:165:0x0593, code lost:
        r9.istate.mode = 7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:166:0x059a, code lost:
        r9.avail_in--;
        r9.total_in++;
        r8.gzipBytesToRead--;
        r1 = r9.istate;
        r2 = r1.gzipCRC32;
        r3 = r9.next_in;
        r4 = r9.next_in_index;
        r9.next_in_index = r4 + 1;
        r1.gzipCRC32 = r2 | ((r3[r4] & 255) << ((3 - r8.gzipBytesToRead) * 8));
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:168:0x05ca, code lost:
        if (r8.gzipBytesToRead <= 0) goto L_0x05d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:170:0x05ce, code lost:
        if (r9.avail_in != 0) goto L_0x059a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x05d8, code lost:
        if (r9.crc32 == r9.istate.gzipCRC32) goto L_0x05eb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:173:0x05da, code lost:
        r9.istate.mode = 13;
        r9.msg = "incorrect CRC32 checksum";
        r9.istate.marker = 5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:174:0x05eb, code lost:
        r8.gzipBytesToRead = 4;
        r9.istate.mode = 25;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x05f6, code lost:
        if (r8.gzipBytesToRead <= 0) goto L_0x062b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:0x05fa, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:179:0x05fc, code lost:
        r9.avail_in--;
        r9.total_in++;
        r8.gzipBytesToRead--;
        r1 = r9.istate;
        r2 = r1.gzipISize;
        r3 = r9.next_in;
        r4 = r9.next_in_index;
        r9.next_in_index = r4 + 1;
        r1.gzipISize = r2 | ((r3[r4] & 255) << ((3 - r8.gzipBytesToRead) * 8));
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:0x0631, code lost:
        if (r8.gzipUncompressedBytes == r9.istate.gzipISize) goto L_0x0644;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:182:0x0633, code lost:
        r9.istate.mode = 13;
        r9.msg = "incorrect ISIZE checksum";
        r9.istate.marker = 5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:183:0x0644, code lost:
        r9.istate.mode = 12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:184:0x064c, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:185:0x064f, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:256:?, code lost:
        return 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:258:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:259:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:262:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:263:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:264:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:265:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:267:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:268:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:271:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:272:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:273:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:275:?, code lost:
        return r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x026d, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x026f, code lost:
        r9.avail_in--;
        r9.total_in++;
        r1 = r9.istate;
        r2 = r9.next_in;
        r3 = r9.next_in_index;
        r9.next_in_index = r3 + 1;
        r1.need = ((long) ((r2[r3] & 255) << 24)) & 4278190080L;
        r9.istate.mode = 9;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x029e, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x02a0, code lost:
        r9.avail_in--;
        r9.total_in++;
        r1 = r9.istate;
        r2 = r1.need;
        r4 = r9.next_in;
        r5 = r9.next_in_index;
        r9.next_in_index = r5 + 1;
        r1.need = r2 + (((long) ((r4[r5] & 255) << org.bouncycastle.math.ec.Tnaf.POW_2_WIDTH)) & 16711680);
        r9.istate.mode = 10;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x02d0, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x02d2, code lost:
        r9.avail_in--;
        r9.total_in++;
        r1 = r9.istate;
        r2 = r1.need;
        r4 = r9.next_in;
        r5 = r9.next_in_index;
        r9.next_in_index = r5 + 1;
        r1.need = r2 + (((long) ((r4[r5] & 255) << 8)) & 65280);
        r9.istate.mode = 11;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0302, code lost:
        if (r9.avail_in == 0) goto L_0x000b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0304, code lost:
        r9.avail_in--;
        r9.total_in++;
        r1 = r9.istate;
        r2 = r1.need;
        r4 = r9.next_in;
        r5 = r9.next_in_index;
        r9.next_in_index = r5 + 1;
        r1.need = r2 + (((long) r4[r5]) & 255);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x0333, code lost:
        if (((int) r9.istate.was[0]) == ((int) r9.istate.need)) goto L_0x0373;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x0335, code lost:
        r9.istate.mode = 13;
        r9.msg = "incorrect data check";
        r9.istate.marker = 5;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:94:0x0373, code lost:
        r9.istate.mode = 12;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int inflate(org.jboss.netty.util.internal.jzlib.ZStream r9, int r10) {
        /*
            r8 = this;
            if (r9 == 0) goto L_0x000a
            org.jboss.netty.util.internal.jzlib.Inflate r0 = r9.istate
            if (r0 == 0) goto L_0x000a
            byte[] r0 = r9.next_in
            if (r0 != 0) goto L_0x000c
        L_0x000a:
            r1 = -2
        L_0x000b:
            return r1
        L_0x000c:
            r0 = 4
            if (r10 != r0) goto L_0x001a
            r0 = -5
        L_0x0010:
            r1 = -5
        L_0x0011:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            int r2 = r2.mode
            switch(r2) {
                case 0: goto L_0x001c;
                case 1: goto L_0x00ae;
                case 2: goto L_0x00fa;
                case 3: goto L_0x012a;
                case 4: goto L_0x015b;
                case 5: goto L_0x0652;
                case 6: goto L_0x01c2;
                case 7: goto L_0x01d4;
                case 8: goto L_0x026b;
                case 9: goto L_0x029c;
                case 10: goto L_0x02ce;
                case 11: goto L_0x0300;
                case 12: goto L_0x0379;
                case 13: goto L_0x037c;
                case 14: goto L_0x037f;
                case 15: goto L_0x03b9;
                case 16: goto L_0x03f3;
                case 17: goto L_0x042d;
                case 18: goto L_0x046e;
                case 19: goto L_0x049d;
                case 20: goto L_0x04e2;
                case 21: goto L_0x0513;
                case 22: goto L_0x053d;
                case 23: goto L_0x056a;
                case 24: goto L_0x05c8;
                case 25: goto L_0x05f4;
                default: goto L_0x0018;
            }
        L_0x0018:
            r1 = -2
            goto L_0x000b
        L_0x001a:
            r0 = 0
            goto L_0x0010
        L_0x001c:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r2 = r2.wrapperType
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r3 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.ZLIB_OR_NONE
            if (r2 != r3) goto L_0x0056
            byte[] r2 = r9.next_in
            int r3 = r9.next_in_index
            byte r2 = r2[r3]
            r2 = r2 & 15
            r3 = 8
            if (r2 != r3) goto L_0x0044
            byte[] r2 = r9.next_in
            int r3 = r9.next_in_index
            byte r2 = r2[r3]
            int r2 = r2 >> 4
            int r2 = r2 + 8
            org.jboss.netty.util.internal.jzlib.Inflate r3 = r9.istate
            int r3 = r3.wbits
            if (r2 <= r3) goto L_0x0050
        L_0x0044:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r3 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.NONE
            r2.wrapperType = r3
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 7
            r2.mode = r3
            goto L_0x0011
        L_0x0050:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r2 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.ZLIB
            r1.wrapperType = r2
        L_0x0056:
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            byte[] r2 = r9.next_in
            int r3 = r9.next_in_index
            int r4 = r3 + 1
            r9.next_in_index = r4
            byte r2 = r2[r3]
            r1.method = r2
            r1 = r2 & 15
            r2 = 8
            if (r1 == r2) goto L_0x0088
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "unknown compression method"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x0088:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            int r1 = r1.method
            int r1 = r1 >> 4
            int r1 = r1 + 8
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            int r2 = r2.wbits
            if (r1 <= r2) goto L_0x00a8
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "invalid window size"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x00a8:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 1
            r1.mode = r2
            r1 = r0
        L_0x00ae:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            byte[] r1 = r9.next_in
            int r2 = r9.next_in_index
            int r3 = r2 + 1
            r9.next_in_index = r3
            byte r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            int r2 = r2.method
            int r2 = r2 << 8
            int r2 = r2 + r1
            int r2 = r2 % 31
            if (r2 == 0) goto L_0x00e8
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "incorrect header check"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x00e8:
            r1 = r1 & 32
            if (r1 != 0) goto L_0x00f4
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 7
            r1.mode = r2
            r1 = r0
            goto L_0x0011
        L_0x00f4:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 2
            r1.mode = r2
            r1 = r0
        L_0x00fa:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            byte[] r2 = r9.next_in
            int r3 = r9.next_in_index
            int r4 = r3 + 1
            r9.next_in_index = r4
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 24
            long r2 = (long) r2
            r4 = 4278190080(0xff000000, double:2.113706745E-314)
            long r2 = r2 & r4
            r1.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 3
            r1.mode = r2
            r1 = r0
        L_0x012a:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            long r2 = r1.need
            byte[] r4 = r9.next_in
            int r5 = r9.next_in_index
            int r6 = r5 + 1
            r9.next_in_index = r6
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 16
            long r4 = (long) r4
            r6 = 16711680(0xff0000, double:8.256667E-317)
            long r4 = r4 & r6
            long r2 = r2 + r4
            r1.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 4
            r1.mode = r2
            r1 = r0
        L_0x015b:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            long r2 = r1.need
            byte[] r4 = r9.next_in
            int r5 = r9.next_in_index
            int r6 = r5 + 1
            r9.next_in_index = r6
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 8
            long r4 = (long) r4
            r6 = 65280(0xff00, double:3.22526E-319)
            long r4 = r4 & r6
            long r2 = r2 + r4
            r1.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.mode = r2
        L_0x018b:
            int r1 = r9.avail_in
            if (r1 != 0) goto L_0x0192
            r1 = r0
            goto L_0x000b
        L_0x0192:
            int r0 = r9.avail_in
            int r0 = r0 + -1
            r9.avail_in = r0
            long r0 = r9.total_in
            r2 = 1
            long r0 = r0 + r2
            r9.total_in = r0
            org.jboss.netty.util.internal.jzlib.Inflate r0 = r9.istate
            long r2 = r0.need
            byte[] r1 = r9.next_in
            int r4 = r9.next_in_index
            int r5 = r4 + 1
            r9.next_in_index = r5
            byte r1 = r1[r4]
            long r4 = (long) r1
            r6 = 255(0xff, double:1.26E-321)
            long r4 = r4 & r6
            long r2 = r2 + r4
            r0.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r0 = r9.istate
            long r0 = r0.need
            r9.adler = r0
            org.jboss.netty.util.internal.jzlib.Inflate r0 = r9.istate
            r1 = 6
            r0.mode = r1
            r1 = 2
            goto L_0x000b
        L_0x01c2:
            org.jboss.netty.util.internal.jzlib.Inflate r0 = r9.istate
            r1 = 13
            r0.mode = r1
            java.lang.String r0 = "need dictionary"
            r9.msg = r0
            org.jboss.netty.util.internal.jzlib.Inflate r0 = r9.istate
            r1 = 0
            r0.marker = r1
            r1 = -2
            goto L_0x000b
        L_0x01d4:
            int r2 = r9.next_out_index
            org.jboss.netty.util.internal.jzlib.Inflate r3 = r9.istate     // Catch:{ all -> 0x0248 }
            org.jboss.netty.util.internal.jzlib.InfBlocks r3 = r3.blocks     // Catch:{ all -> 0x0248 }
            int r1 = r3.proc(r9, r1)     // Catch:{ all -> 0x0248 }
            r3 = -3
            if (r1 != r3) goto L_0x0200
            org.jboss.netty.util.internal.jzlib.Inflate r3 = r9.istate     // Catch:{ all -> 0x0248 }
            r4 = 13
            r3.mode = r4     // Catch:{ all -> 0x0248 }
            org.jboss.netty.util.internal.jzlib.Inflate r3 = r9.istate     // Catch:{ all -> 0x0248 }
            r4 = 0
            r3.marker = r4     // Catch:{ all -> 0x0248 }
            int r3 = r9.next_out_index
            int r3 = r3 - r2
            int r4 = r8.gzipUncompressedBytes
            int r4 = r4 + r3
            r8.gzipUncompressedBytes = r4
            int r4 = r9.crc32
            byte[] r5 = r9.next_out
            int r2 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r4, r5, r2, r3)
            r9.crc32 = r2
            goto L_0x0011
        L_0x0200:
            if (r1 != 0) goto L_0x0203
            r1 = r0
        L_0x0203:
            r3 = 1
            if (r1 == r3) goto L_0x021a
            int r0 = r9.next_out_index
            int r0 = r0 - r2
            int r3 = r8.gzipUncompressedBytes
            int r3 = r3 + r0
            r8.gzipUncompressedBytes = r3
            int r3 = r9.crc32
            byte[] r4 = r9.next_out
            int r0 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r3, r4, r2, r0)
            r9.crc32 = r0
            goto L_0x000b
        L_0x021a:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate     // Catch:{ all -> 0x0248 }
            org.jboss.netty.util.internal.jzlib.InfBlocks r1 = r1.blocks     // Catch:{ all -> 0x0248 }
            org.jboss.netty.util.internal.jzlib.Inflate r3 = r9.istate     // Catch:{ all -> 0x0248 }
            long[] r3 = r3.was     // Catch:{ all -> 0x0248 }
            r1.reset(r9, r3)     // Catch:{ all -> 0x0248 }
            int r1 = r9.next_out_index
            int r1 = r1 - r2
            int r3 = r8.gzipUncompressedBytes
            int r3 = r3 + r1
            r8.gzipUncompressedBytes = r3
            int r3 = r9.crc32
            byte[] r4 = r9.next_out
            int r1 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r3, r4, r2, r1)
            r9.crc32 = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r1 = r1.wrapperType
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r2 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.NONE
            if (r1 != r2) goto L_0x025c
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 12
            r1.mode = r2
            r1 = r0
            goto L_0x0011
        L_0x0248:
            r0 = move-exception
            int r1 = r9.next_out_index
            int r1 = r1 - r2
            int r3 = r8.gzipUncompressedBytes
            int r3 = r3 + r1
            r8.gzipUncompressedBytes = r3
            int r3 = r9.crc32
            byte[] r4 = r9.next_out
            int r1 = org.jboss.netty.util.internal.jzlib.CRC32.crc32(r3, r4, r2, r1)
            r9.crc32 = r1
            throw r0
        L_0x025c:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r1 = r1.wrapperType
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r2 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.ZLIB
            if (r1 != r2) goto L_0x0347
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 8
            r1.mode = r2
            r1 = r0
        L_0x026b:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            byte[] r2 = r9.next_in
            int r3 = r9.next_in_index
            int r4 = r3 + 1
            r9.next_in_index = r4
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 24
            long r2 = (long) r2
            r4 = 4278190080(0xff000000, double:2.113706745E-314)
            long r2 = r2 & r4
            r1.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 9
            r1.mode = r2
            r1 = r0
        L_0x029c:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            long r2 = r1.need
            byte[] r4 = r9.next_in
            int r5 = r9.next_in_index
            int r6 = r5 + 1
            r9.next_in_index = r6
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 16
            long r4 = (long) r4
            r6 = 16711680(0xff0000, double:8.256667E-317)
            long r4 = r4 & r6
            long r2 = r2 + r4
            r1.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 10
            r1.mode = r2
            r1 = r0
        L_0x02ce:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            long r2 = r1.need
            byte[] r4 = r9.next_in
            int r5 = r9.next_in_index
            int r6 = r5 + 1
            r9.next_in_index = r6
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 8
            long r4 = (long) r4
            r6 = 65280(0xff00, double:3.22526E-319)
            long r4 = r4 & r6
            long r2 = r2 + r4
            r1.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 11
            r1.mode = r2
            r1 = r0
        L_0x0300:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            long r2 = r1.need
            byte[] r4 = r9.next_in
            int r5 = r9.next_in_index
            int r6 = r5 + 1
            r9.next_in_index = r6
            byte r4 = r4[r5]
            long r4 = (long) r4
            r6 = 255(0xff, double:1.26E-321)
            long r4 = r4 & r6
            long r2 = r2 + r4
            r1.need = r2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            long[] r1 = r1.was
            r2 = 0
            r2 = r1[r2]
            int r1 = (int) r2
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            long r2 = r2.need
            int r2 = (int) r2
            if (r1 == r2) goto L_0x0373
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "incorrect data check"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x0347:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r1 = r1.wrapperType
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r2 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.GZIP
            if (r1 != r2) goto L_0x0361
            r1 = 0
            r8.gzipCRC32 = r1
            r1 = 0
            r8.gzipISize = r1
            r1 = 4
            r8.gzipBytesToRead = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 24
            r1.mode = r2
            r1 = r0
            goto L_0x0011
        L_0x0361:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "unexpected state"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 0
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x0373:
            org.jboss.netty.util.internal.jzlib.Inflate r0 = r9.istate
            r1 = 12
            r0.mode = r1
        L_0x0379:
            r1 = 1
            goto L_0x000b
        L_0x037c:
            r1 = -3
            goto L_0x000b
        L_0x037f:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            byte[] r1 = r9.next_in
            int r2 = r9.next_in_index
            int r3 = r2 + 1
            r9.next_in_index = r3
            byte r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 31
            if (r1 == r2) goto L_0x03b2
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "not a gzip stream"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x03b2:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 15
            r1.mode = r2
            r1 = r0
        L_0x03b9:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            byte[] r1 = r9.next_in
            int r2 = r9.next_in_index
            int r3 = r2 + 1
            r9.next_in_index = r3
            byte r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 139(0x8b, float:1.95E-43)
            if (r1 == r2) goto L_0x03ec
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "not a gzip stream"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x03ec:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 16
            r1.mode = r2
            r1 = r0
        L_0x03f3:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            byte[] r1 = r9.next_in
            int r2 = r9.next_in_index
            int r3 = r2 + 1
            r9.next_in_index = r3
            byte r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 8
            if (r1 == r2) goto L_0x0426
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "unknown compression method"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x0426:
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 17
            r1.mode = r2
            r1 = r0
        L_0x042d:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            byte[] r1 = r9.next_in
            int r2 = r9.next_in_index
            int r3 = r2 + 1
            r9.next_in_index = r3
            byte r1 = r1[r2]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r8.gzipFlag = r1
            int r1 = r8.gzipFlag
            r1 = r1 & 226(0xe2, float:3.17E-43)
            if (r1 == 0) goto L_0x0464
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 13
            r1.mode = r2
            java.lang.String r1 = "unsupported flag"
            r9.msg = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 5
            r1.marker = r2
            r1 = r0
            goto L_0x0011
        L_0x0464:
            r1 = 6
            r8.gzipBytesToRead = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            r2 = 18
            r1.mode = r2
            r1 = r0
        L_0x046e:
            int r2 = r8.gzipBytesToRead
            if (r2 <= 0) goto L_0x0491
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            int r1 = r9.next_in_index
            int r1 = r1 + 1
            r9.next_in_index = r1
            int r1 = r8.gzipBytesToRead
            int r1 = r1 + -1
            r8.gzipBytesToRead = r1
            r1 = r0
            goto L_0x046e
        L_0x0491:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 19
            r2.mode = r3
            r2 = 0
            r8.gzipXLen = r2
            r2 = 2
            r8.gzipBytesToRead = r2
        L_0x049d:
            int r2 = r8.gzipFlag
            r2 = r2 & 4
            if (r2 == 0) goto L_0x0505
        L_0x04a3:
            int r2 = r8.gzipBytesToRead
            if (r2 <= 0) goto L_0x04d8
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            int r1 = r8.gzipXLen
            byte[] r2 = r9.next_in
            int r3 = r9.next_in_index
            int r4 = r3 + 1
            r9.next_in_index = r4
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r8.gzipBytesToRead
            int r3 = 1 - r3
            int r3 = r3 * 8
            int r2 = r2 << r3
            r1 = r1 | r2
            r8.gzipXLen = r1
            int r1 = r8.gzipBytesToRead
            int r1 = r1 + -1
            r8.gzipBytesToRead = r1
            r1 = r0
            goto L_0x04a3
        L_0x04d8:
            int r2 = r8.gzipXLen
            r8.gzipBytesToRead = r2
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 20
            r2.mode = r3
        L_0x04e2:
            int r2 = r8.gzipBytesToRead
            if (r2 <= 0) goto L_0x050d
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            int r1 = r9.next_in_index
            int r1 = r1 + 1
            r9.next_in_index = r1
            int r1 = r8.gzipBytesToRead
            int r1 = r1 + -1
            r8.gzipBytesToRead = r1
            r1 = r0
            goto L_0x04e2
        L_0x0505:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 21
            r2.mode = r3
            goto L_0x0011
        L_0x050d:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 21
            r2.mode = r3
        L_0x0513:
            int r2 = r8.gzipFlag
            r2 = r2 & 8
            if (r2 == 0) goto L_0x0537
        L_0x0519:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            byte[] r1 = r9.next_in
            int r2 = r9.next_in_index
            int r3 = r2 + 1
            r9.next_in_index = r3
            byte r1 = r1[r2]
            if (r1 != 0) goto L_0x064f
            r1 = r0
        L_0x0537:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 22
            r2.mode = r3
        L_0x053d:
            int r2 = r8.gzipFlag
            r2 = r2 & 16
            if (r2 == 0) goto L_0x0561
        L_0x0543:
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            byte[] r1 = r9.next_in
            int r2 = r9.next_in_index
            int r3 = r2 + 1
            r9.next_in_index = r3
            byte r1 = r1[r2]
            if (r1 != 0) goto L_0x064c
            r1 = r0
        L_0x0561:
            r2 = 2
            r8.gzipBytesToRead = r2
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 23
            r2.mode = r3
        L_0x056a:
            int r2 = r8.gzipFlag
            r2 = r2 & 2
            if (r2 == 0) goto L_0x0593
        L_0x0570:
            int r2 = r8.gzipBytesToRead
            if (r2 <= 0) goto L_0x0593
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            int r1 = r9.next_in_index
            int r1 = r1 + 1
            r9.next_in_index = r1
            int r1 = r8.gzipBytesToRead
            int r1 = r1 + -1
            r8.gzipBytesToRead = r1
            r1 = r0
            goto L_0x0570
        L_0x0593:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 7
            r2.mode = r3
            goto L_0x0011
        L_0x059a:
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            int r1 = r8.gzipBytesToRead
            int r1 = r1 + -1
            r8.gzipBytesToRead = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            int r2 = r1.gzipCRC32
            byte[] r3 = r9.next_in
            int r4 = r9.next_in_index
            int r5 = r4 + 1
            r9.next_in_index = r5
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r4 = r8.gzipBytesToRead
            int r4 = 3 - r4
            int r4 = r4 * 8
            int r3 = r3 << r4
            r2 = r2 | r3
            r1.gzipCRC32 = r2
            r1 = r0
        L_0x05c8:
            int r2 = r8.gzipBytesToRead
            if (r2 <= 0) goto L_0x05d2
            int r2 = r9.avail_in
            if (r2 != 0) goto L_0x059a
            goto L_0x000b
        L_0x05d2:
            int r2 = r9.crc32
            org.jboss.netty.util.internal.jzlib.Inflate r3 = r9.istate
            int r3 = r3.gzipCRC32
            if (r2 == r3) goto L_0x05eb
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 13
            r2.mode = r3
            java.lang.String r2 = "incorrect CRC32 checksum"
            r9.msg = r2
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 5
            r2.marker = r3
            goto L_0x0011
        L_0x05eb:
            r2 = 4
            r8.gzipBytesToRead = r2
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 25
            r2.mode = r3
        L_0x05f4:
            int r2 = r8.gzipBytesToRead
            if (r2 <= 0) goto L_0x062b
            int r2 = r9.avail_in
            if (r2 == 0) goto L_0x000b
            int r1 = r9.avail_in
            int r1 = r1 + -1
            r9.avail_in = r1
            long r2 = r9.total_in
            r4 = 1
            long r2 = r2 + r4
            r9.total_in = r2
            int r1 = r8.gzipBytesToRead
            int r1 = r1 + -1
            r8.gzipBytesToRead = r1
            org.jboss.netty.util.internal.jzlib.Inflate r1 = r9.istate
            int r2 = r1.gzipISize
            byte[] r3 = r9.next_in
            int r4 = r9.next_in_index
            int r5 = r4 + 1
            r9.next_in_index = r5
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r4 = r8.gzipBytesToRead
            int r4 = 3 - r4
            int r4 = r4 * 8
            int r3 = r3 << r4
            r2 = r2 | r3
            r1.gzipISize = r2
            r1 = r0
            goto L_0x05f4
        L_0x062b:
            int r2 = r8.gzipUncompressedBytes
            org.jboss.netty.util.internal.jzlib.Inflate r3 = r9.istate
            int r3 = r3.gzipISize
            if (r2 == r3) goto L_0x0644
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 13
            r2.mode = r3
            java.lang.String r2 = "incorrect ISIZE checksum"
            r9.msg = r2
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 5
            r2.marker = r3
            goto L_0x0011
        L_0x0644:
            org.jboss.netty.util.internal.jzlib.Inflate r2 = r9.istate
            r3 = 12
            r2.mode = r3
            goto L_0x0011
        L_0x064c:
            r1 = r0
            goto L_0x0543
        L_0x064f:
            r1 = r0
            goto L_0x0519
        L_0x0652:
            r0 = r1
            goto L_0x018b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.Inflate.inflate(org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }

    static int inflateSetDictionary(ZStream zStream, byte[] bArr, int i) {
        int i2;
        if (zStream == null || zStream.istate == null || zStream.istate.mode != 6) {
            return -2;
        }
        if (Adler32.adler32(1, bArr, 0, i) != zStream.adler) {
            return -3;
        }
        zStream.adler = Adler32.adler32(0, null, 0, 0);
        if (i >= (1 << zStream.istate.wbits)) {
            int i3 = (1 << zStream.istate.wbits) - 1;
            int i4 = i - i3;
            i = i3;
            i2 = i4;
        } else {
            i2 = 0;
        }
        zStream.istate.blocks.set_dictionary(bArr, i2, i);
        zStream.istate.mode = 7;
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public int inflateSync(ZStream zStream) {
        if (zStream == null || zStream.istate == null) {
            return -2;
        }
        if (zStream.istate.mode != 13) {
            zStream.istate.mode = 13;
            zStream.istate.marker = 0;
        }
        int i = zStream.avail_in;
        if (i == 0) {
            return -5;
        }
        int i2 = zStream.next_in_index;
        int i3 = zStream.istate.marker;
        while (i != 0 && i3 < 4) {
            if (zStream.next_in[i2] == mark[i3]) {
                i3++;
            } else if (zStream.next_in[i2] != 0) {
                i3 = 0;
            } else {
                i3 = 4 - i3;
            }
            i2++;
            i--;
        }
        zStream.total_in += (long) (i2 - zStream.next_in_index);
        zStream.next_in_index = i2;
        zStream.avail_in = i;
        zStream.istate.marker = i3;
        if (i3 != 4) {
            return -3;
        }
        long j = zStream.total_in;
        long j2 = zStream.total_out;
        inflateReset(zStream);
        zStream.total_in = j;
        zStream.total_out = j2;
        zStream.istate.mode = 7;
        return 0;
    }
}
