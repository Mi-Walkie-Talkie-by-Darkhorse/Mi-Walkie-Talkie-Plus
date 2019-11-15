package org.jboss.netty.util.internal.jzlib;

import android.support.v4.internal.view.SupportMenu;
import com.mi.milinkforgame.sdk.session.util.StreamUtil;

final class Deflate {
    private static final int BUSY_STATE = 113;
    private static final int BlockDone = 1;
    private static final int Buf_size = 16;
    private static final int DYN_TREES = 2;
    private static final int END_BLOCK = 256;
    private static final int FAST = 1;
    private static final int FINISH_STATE = 666;
    private static final int FinishDone = 3;
    private static final int FinishStarted = 2;
    private static final int INIT_STATE = 42;
    private static final int MAX_MATCH = 258;
    private static final int MIN_LOOKAHEAD = 262;
    private static final int MIN_MATCH = 3;
    private static final int NeedMore = 0;
    private static final int REPZ_11_138 = 18;
    private static final int REPZ_3_10 = 17;
    private static final int REP_3_6 = 16;
    private static final int SLOW = 2;
    private static final int STATIC_TREES = 1;
    private static final int STORED = 0;
    private static final int STORED_BLOCK = 0;
    private static final int Z_ASCII = 1;
    private static final int Z_BINARY = 0;
    private static final int Z_UNKNOWN = 2;
    private static final Config[] config_table = new Config[10];
    private static final String[] z_errmsg = {"need dictionary", "stream end", "", "file error", "stream error", "data error", "insufficient memory", "buffer error", "incompatible version", ""};
    short bi_buf;
    int bi_valid;
    final short[] bl_count = new short[16];
    final Tree bl_desc = new Tree();
    final short[] bl_tree = new short[78];
    int block_start;
    int d_buf;
    final Tree d_desc = new Tree();
    byte data_type;
    final byte[] depth = new byte[573];
    final short[] dyn_dtree = new short[122];
    final short[] dyn_ltree = new short[1146];
    int good_match;
    private int gzipUncompressedBytes;
    int hash_bits;
    int hash_mask;
    int hash_shift;
    int hash_size;
    short[] head;
    final int[] heap = new int[573];
    int heap_len;
    int heap_max;
    int ins_h;
    int l_buf;
    final Tree l_desc = new Tree();
    int last_eob_len;
    int last_flush;
    int last_lit;
    int level;
    int lit_bufsize;
    int lookahead;
    int match_available;
    int match_length;
    int match_start;
    int matches;
    int max_chain_length;
    int max_lazy_match;
    int nice_match;
    int opt_len;
    int pending;
    byte[] pending_buf;
    int pending_buf_size;
    int pending_out;
    short[] prev;
    int prev_length;
    int prev_match;
    int static_len;
    int status;
    int strategy;
    ZStream strm;
    int strstart;
    int w_bits;
    int w_mask;
    int w_size;
    byte[] window;
    int window_size;
    WrapperType wrapperType;
    private boolean wroteTrailer;

    private static final class Config {
        final int func;
        final int good_length;
        final int max_chain;
        final int max_lazy;
        final int nice_length;

        Config(int i, int i2, int i3, int i4, int i5) {
            this.good_length = i;
            this.max_lazy = i2;
            this.nice_length = i3;
            this.max_chain = i4;
            this.func = i5;
        }
    }

    static {
        config_table[0] = new Config(0, 0, 0, 0, 0);
        config_table[1] = new Config(4, 4, 8, 4, 1);
        config_table[2] = new Config(4, 5, 16, 8, 1);
        config_table[3] = new Config(4, 6, 32, 32, 1);
        config_table[4] = new Config(4, 4, 16, 16, 2);
        config_table[5] = new Config(8, 16, 32, 32, 2);
        config_table[6] = new Config(8, 16, 128, 128, 2);
        config_table[7] = new Config(8, 32, 128, 256, 2);
        config_table[8] = new Config(32, 128, 258, 1024, 2);
        config_table[9] = new Config(32, 258, 258, 4096, 2);
    }

    Deflate() {
    }

    private void lm_init() {
        this.window_size = this.w_size * 2;
        this.max_lazy_match = config_table[this.level].max_lazy;
        this.good_match = config_table[this.level].good_length;
        this.nice_match = config_table[this.level].nice_length;
        this.max_chain_length = config_table[this.level].max_chain;
        this.strstart = 0;
        this.block_start = 0;
        this.lookahead = 0;
        this.prev_length = 2;
        this.match_length = 2;
        this.match_available = 0;
        this.ins_h = 0;
    }

    private void tr_init() {
        this.l_desc.dyn_tree = this.dyn_ltree;
        this.l_desc.stat_desc = StaticTree.static_l_desc;
        this.d_desc.dyn_tree = this.dyn_dtree;
        this.d_desc.stat_desc = StaticTree.static_d_desc;
        this.bl_desc.dyn_tree = this.bl_tree;
        this.bl_desc.stat_desc = StaticTree.static_bl_desc;
        this.bi_buf = 0;
        this.bi_valid = 0;
        this.last_eob_len = 8;
        init_block();
    }

    private void init_block() {
        for (int i = 0; i < 286; i++) {
            this.dyn_ltree[i * 2] = 0;
        }
        for (int i2 = 0; i2 < 30; i2++) {
            this.dyn_dtree[i2 * 2] = 0;
        }
        for (int i3 = 0; i3 < 19; i3++) {
            this.bl_tree[i3 * 2] = 0;
        }
        this.dyn_ltree[512] = 1;
        this.static_len = 0;
        this.opt_len = 0;
        this.matches = 0;
        this.last_lit = 0;
    }

    /* access modifiers changed from: 0000 */
    public void pqdownheap(short[] sArr, int i) {
        int i2;
        int i3 = this.heap[i];
        int i4 = i << 1;
        while (i4 <= this.heap_len) {
            if (i4 >= this.heap_len || !smaller(sArr, this.heap[i4 + 1], this.heap[i4], this.depth)) {
                i2 = i4;
            } else {
                i2 = i4 + 1;
            }
            if (smaller(sArr, i3, this.heap[i2], this.depth)) {
                break;
            }
            this.heap[i] = this.heap[i2];
            i4 = i2 << 1;
            i = i2;
        }
        this.heap[i] = i3;
    }

    private static boolean smaller(short[] sArr, int i, int i2, byte[] bArr) {
        short s = sArr[i * 2];
        short s2 = sArr[i2 * 2];
        return s < s2 || (s == s2 && bArr[i] <= bArr[i2]);
    }

    private void scan_tree(short[] sArr, int i) {
        int i2;
        int i3;
        short s = -1;
        short s2 = sArr[1];
        if (s2 == 0) {
            i3 = 138;
            i2 = 3;
        } else {
            i2 = 4;
            i3 = 7;
        }
        sArr[((i + 1) * 2) + 1] = -1;
        int i4 = 0;
        int i5 = 0;
        while (i5 <= i) {
            short s3 = sArr[((i5 + 1) * 2) + 1];
            i4++;
            if (i4 >= i3 || s2 != s3) {
                if (i4 < i2) {
                    short[] sArr2 = this.bl_tree;
                    int i6 = s2 * 2;
                    sArr2[i6] = (short) (i4 + sArr2[i6]);
                } else if (s2 != 0) {
                    if (s2 != s) {
                        short[] sArr3 = this.bl_tree;
                        int i7 = s2 * 2;
                        sArr3[i7] = (short) (sArr3[i7] + 1);
                    }
                    short[] sArr4 = this.bl_tree;
                    sArr4[32] = (short) (sArr4[32] + 1);
                } else if (i4 <= 10) {
                    short[] sArr5 = this.bl_tree;
                    sArr5[34] = (short) (sArr5[34] + 1);
                } else {
                    short[] sArr6 = this.bl_tree;
                    sArr6[36] = (short) (sArr6[36] + 1);
                }
                if (s3 == 0) {
                    i3 = 138;
                    i4 = 0;
                    s = s2;
                    i2 = 3;
                } else if (s2 == s3) {
                    i3 = 6;
                    i4 = 0;
                    s = s2;
                    i2 = 3;
                } else {
                    i2 = 4;
                    i3 = 7;
                    i4 = 0;
                    s = s2;
                }
            }
            i5++;
            s2 = s3;
        }
    }

    private int build_bl_tree() {
        scan_tree(this.dyn_ltree, this.l_desc.max_code);
        scan_tree(this.dyn_dtree, this.d_desc.max_code);
        this.bl_desc.build_tree(this);
        int i = 18;
        while (i >= 3 && this.bl_tree[(Tree.bl_order[i] * 2) + 1] == 0) {
            i--;
        }
        this.opt_len += ((i + 1) * 3) + 5 + 5 + 4;
        return i;
    }

    private void send_all_trees(int i, int i2, int i3) {
        send_bits(i - 257, 5);
        send_bits(i2 - 1, 5);
        send_bits(i3 - 4, 4);
        for (int i4 = 0; i4 < i3; i4++) {
            send_bits(this.bl_tree[(Tree.bl_order[i4] * 2) + 1], 3);
        }
        send_tree(this.dyn_ltree, i - 1);
        send_tree(this.dyn_dtree, i2 - 1);
    }

    private void send_tree(short[] sArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        short s = -1;
        short s2 = sArr[1];
        if (s2 == 0) {
            i2 = 3;
            i3 = 138;
        } else {
            i2 = 4;
            i3 = 7;
        }
        int i7 = i3;
        int i8 = 0;
        int i9 = i2;
        int i10 = 0;
        while (i8 <= i) {
            short s3 = sArr[((i8 + 1) * 2) + 1];
            int i11 = i10 + 1;
            if (i11 >= i7 || s2 != s3) {
                if (i11 < i9) {
                    do {
                        send_code(s2, this.bl_tree);
                        i11--;
                    } while (i11 != 0);
                } else if (s2 != 0) {
                    if (s2 != s) {
                        send_code(s2, this.bl_tree);
                        i11--;
                    }
                    send_code(16, this.bl_tree);
                    send_bits(i11 - 3, 2);
                } else if (i11 <= 10) {
                    send_code(17, this.bl_tree);
                    send_bits(i11 - 3, 3);
                } else {
                    send_code(18, this.bl_tree);
                    send_bits(i11 - 11, 7);
                }
                if (s3 == 0) {
                    i4 = 3;
                    i5 = 138;
                    i6 = 0;
                    s = s2;
                } else if (s2 == s3) {
                    i5 = 6;
                    i6 = 0;
                    s = s2;
                    i4 = 3;
                } else {
                    i4 = 4;
                    i5 = 7;
                    i6 = 0;
                    s = s2;
                }
            } else {
                int i12 = i9;
                i5 = i7;
                i6 = i11;
                i4 = i12;
            }
            i8++;
            s2 = s3;
            int i13 = i6;
            i7 = i5;
            i9 = i4;
            i10 = i13;
        }
    }

    private void put_byte(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.pending_buf, this.pending, i2);
        this.pending += i2;
    }

    private void put_byte(byte b) {
        byte[] bArr = this.pending_buf;
        int i = this.pending;
        this.pending = i + 1;
        bArr[i] = b;
    }

    private void put_short(int i) {
        put_byte((byte) i);
        put_byte((byte) (i >>> 8));
    }

    private void putShortMSB(int i) {
        put_byte((byte) (i >> 8));
        put_byte((byte) i);
    }

    private void send_code(int i, short[] sArr) {
        int i2 = i * 2;
        send_bits(sArr[i2] & 65535, sArr[i2 + 1] & 65535);
    }

    private void send_bits(int i, int i2) {
        if (this.bi_valid > 16 - i2) {
            this.bi_buf = (short) (this.bi_buf | ((i << this.bi_valid) & 65535));
            put_short(this.bi_buf);
            this.bi_buf = (short) (i >>> (16 - this.bi_valid));
            this.bi_valid += i2 - 16;
            return;
        }
        this.bi_buf = (short) (this.bi_buf | ((i << this.bi_valid) & 65535));
        this.bi_valid += i2;
    }

    private void _tr_align() {
        send_bits(2, 3);
        send_code(256, StaticTree.static_ltree);
        bi_flush();
        if (((this.last_eob_len + 1) + 10) - this.bi_valid < 9) {
            send_bits(2, 3);
            send_code(256, StaticTree.static_ltree);
            bi_flush();
        }
        this.last_eob_len = 7;
    }

    private boolean _tr_tally(int i, int i2) {
        this.pending_buf[this.d_buf + (this.last_lit * 2)] = (byte) (i >>> 8);
        this.pending_buf[this.d_buf + (this.last_lit * 2) + 1] = (byte) i;
        this.pending_buf[this.l_buf + this.last_lit] = (byte) i2;
        this.last_lit++;
        if (i == 0) {
            short[] sArr = this.dyn_ltree;
            int i3 = i2 * 2;
            sArr[i3] = (short) (sArr[i3] + 1);
        } else {
            this.matches++;
            int i4 = i - 1;
            short[] sArr2 = this.dyn_ltree;
            int i5 = (Tree._length_code[i2] + StreamUtil.MNS_ENCODE_NONE + 1) * 2;
            sArr2[i5] = (short) (sArr2[i5] + 1);
            short[] sArr3 = this.dyn_dtree;
            int d_code = Tree.d_code(i4) * 2;
            sArr3[d_code] = (short) (sArr3[d_code] + 1);
        }
        if ((this.last_lit & 8191) == 0 && this.level > 2) {
            int i6 = this.last_lit * 8;
            int i7 = this.strstart - this.block_start;
            for (int i8 = 0; i8 < 30; i8++) {
                i6 = (int) (((long) i6) + (((long) this.dyn_dtree[i8 * 2]) * (5 + ((long) Tree.extra_dbits[i8]))));
            }
            int i9 = i6 >>> 3;
            if (this.matches < this.last_lit / 2 && i9 < i7 / 2) {
                return true;
            }
        }
        return this.last_lit == this.lit_bufsize + -1;
    }

    private void compress_block(short[] sArr, short[] sArr2) {
        int i = 0;
        if (this.last_lit != 0) {
            do {
                byte b = ((this.pending_buf[this.d_buf + (i * 2)] << 8) & StreamUtil.MNS_ENCODE_NONE) | (this.pending_buf[this.d_buf + (i * 2) + 1] & 255);
                byte b2 = this.pending_buf[this.l_buf + i] & 255;
                i++;
                if (b == 0) {
                    send_code(b2, sArr);
                } else {
                    byte b3 = Tree._length_code[b2];
                    send_code(b3 + StreamUtil.MNS_ENCODE_NONE + 1, sArr);
                    int i2 = Tree.extra_lbits[b3];
                    if (i2 != 0) {
                        send_bits(b2 - Tree.base_length[b3], i2);
                    }
                    int i3 = b - 1;
                    int d_code = Tree.d_code(i3);
                    send_code(d_code, sArr2);
                    int i4 = Tree.extra_dbits[d_code];
                    if (i4 != 0) {
                        send_bits(i3 - Tree.base_dist[d_code], i4);
                    }
                }
            } while (i < this.last_lit);
        }
        send_code(256, sArr);
        this.last_eob_len = sArr[513];
    }

    private void set_data_type() {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i3 < 7) {
            i2 += this.dyn_ltree[i3 * 2];
            i3++;
        }
        int i4 = 0;
        while (i3 < 128) {
            i4 += this.dyn_ltree[i3 * 2];
            i3++;
        }
        while (i3 < 256) {
            i2 += this.dyn_ltree[i3 * 2];
            i3++;
        }
        if (i2 <= (i4 >>> 2)) {
            i = 1;
        }
        this.data_type = (byte) i;
    }

    private void bi_flush() {
        if (this.bi_valid == 16) {
            put_short(this.bi_buf);
            this.bi_buf = 0;
            this.bi_valid = 0;
        } else if (this.bi_valid >= 8) {
            put_byte((byte) this.bi_buf);
            this.bi_buf = (short) (this.bi_buf >>> 8);
            this.bi_valid -= 8;
        }
    }

    private void bi_windup() {
        if (this.bi_valid > 8) {
            put_short(this.bi_buf);
        } else if (this.bi_valid > 0) {
            put_byte((byte) this.bi_buf);
        }
        this.bi_buf = 0;
        this.bi_valid = 0;
    }

    private void copy_block(int i, int i2, boolean z) {
        bi_windup();
        this.last_eob_len = 8;
        if (z) {
            put_short((short) i2);
            put_short((short) (i2 ^ -1));
        }
        put_byte(this.window, i, i2);
    }

    private void flush_block_only(boolean z) {
        _tr_flush_block(this.block_start >= 0 ? this.block_start : -1, this.strstart - this.block_start, z);
        this.block_start = this.strstart;
        this.strm.flush_pending();
    }

    private int deflate_stored(int i) {
        boolean z;
        int i2 = 1;
        int i3 = SupportMenu.USER_MASK;
        if (65535 > this.pending_buf_size - 5) {
            i3 = this.pending_buf_size - 5;
        }
        while (true) {
            if (this.lookahead <= 1) {
                fill_window();
                if (this.lookahead == 0 && i == 0) {
                    return 0;
                }
                if (this.lookahead == 0) {
                    if (i == 4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    flush_block_only(z);
                    if (this.strm.avail_out != 0) {
                        if (i == 4) {
                            i2 = 3;
                        }
                        return i2;
                    } else if (i == 4) {
                        return 2;
                    } else {
                        return 0;
                    }
                }
            }
            this.strstart += this.lookahead;
            this.lookahead = 0;
            int i4 = this.block_start + i3;
            if (this.strstart == 0 || this.strstart >= i4) {
                this.lookahead = this.strstart - i4;
                this.strstart = i4;
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            }
            if (this.strstart - this.block_start >= this.w_size - 262) {
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            }
        }
    }

    private void _tr_stored_block(int i, int i2, boolean z) {
        send_bits((z ? 1 : 0) + 0, 3);
        copy_block(i, i2, true);
    }

    private void _tr_flush_block(int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5;
        int i6 = 1;
        if (this.level > 0) {
            if (this.data_type == 2) {
                set_data_type();
            }
            this.l_desc.build_tree(this);
            this.d_desc.build_tree(this);
            i5 = build_bl_tree();
            i4 = ((this.opt_len + 3) + 7) >>> 3;
            i3 = ((this.static_len + 3) + 7) >>> 3;
            if (i3 <= i4) {
                i4 = i3;
            }
        } else {
            int i7 = i2 + 5;
            i3 = i7;
            i4 = i7;
            i5 = 0;
        }
        if (i2 + 4 <= i4 && i != -1) {
            _tr_stored_block(i, i2, z);
        } else if (i3 == i4) {
            if (!z) {
                i6 = 0;
            }
            send_bits(i6 + 2, 3);
            compress_block(StaticTree.static_ltree, StaticTree.static_dtree);
        } else {
            if (!z) {
                i6 = 0;
            }
            send_bits(i6 + 4, 3);
            send_all_trees(this.l_desc.max_code + 1, this.d_desc.max_code + 1, i5 + 1);
            compress_block(this.dyn_ltree, this.dyn_dtree);
        }
        init_block();
        if (z) {
            bi_windup();
        }
    }

    private void fill_window() {
        int i;
        short s;
        do {
            int i2 = (this.window_size - this.lookahead) - this.strstart;
            if (i2 == 0 && this.strstart == 0 && this.lookahead == 0) {
                i = this.w_size;
            } else if (i2 == -1) {
                i = i2 - 1;
            } else if (this.strstart >= (this.w_size + this.w_size) - 262) {
                System.arraycopy(this.window, this.w_size, this.window, 0, this.w_size);
                this.match_start -= this.w_size;
                this.strstart -= this.w_size;
                this.block_start -= this.w_size;
                int i3 = this.hash_size;
                int i4 = i3;
                do {
                    i3--;
                    short s2 = this.head[i3] & 65535;
                    this.head[i3] = s2 >= this.w_size ? (short) (s2 - this.w_size) : 0;
                    i4--;
                } while (i4 != 0);
                int i5 = this.w_size;
                int i6 = i5;
                do {
                    i5--;
                    short s3 = this.prev[i5] & 65535;
                    short[] sArr = this.prev;
                    if (s3 >= this.w_size) {
                        s = (short) (s3 - this.w_size);
                    } else {
                        s = 0;
                    }
                    sArr[i5] = s;
                    i6--;
                } while (i6 != 0);
                i = this.w_size + i2;
            } else {
                i = i2;
            }
            if (this.strm.avail_in != 0) {
                this.lookahead = this.strm.read_buf(this.window, this.strstart + this.lookahead, i) + this.lookahead;
                if (this.lookahead >= 3) {
                    this.ins_h = this.window[this.strstart] & 255;
                    this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[this.strstart + 1] & 255)) & this.hash_mask;
                }
                if (this.lookahead >= 262) {
                    return;
                }
            } else {
                return;
            }
        } while (this.strm.avail_in != 0);
    }

    private int deflate_fast(int i) {
        short s;
        boolean z;
        short s2;
        int i2;
        int i3 = 1;
        short s3 = 0;
        while (true) {
            if (this.lookahead < 262) {
                fill_window();
                if (this.lookahead < 262 && i == 0) {
                    return 0;
                }
                if (this.lookahead == 0) {
                    flush_block_only(i == 4);
                    if (this.strm.avail_out != 0) {
                        if (i == 4) {
                            i3 = 3;
                        }
                        return i3;
                    } else if (i == 4) {
                        return 2;
                    } else {
                        return 0;
                    }
                }
            }
            if (this.lookahead >= 3) {
                this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + 3) - 1] & 255)) & this.hash_mask;
                s = this.head[this.ins_h] & 65535;
                this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                this.head[this.ins_h] = (short) this.strstart;
            } else {
                s = s3;
            }
            if (!(((long) s) == 0 || ((this.strstart - s) & SupportMenu.USER_MASK) > this.w_size - 262 || this.strategy == 2)) {
                this.match_length = longest_match(s);
            }
            if (this.match_length >= 3) {
                boolean _tr_tally = _tr_tally(this.strstart - this.match_start, this.match_length - 3);
                this.lookahead -= this.match_length;
                if (this.match_length > this.max_lazy_match || this.lookahead < 3) {
                    this.strstart += this.match_length;
                    this.match_length = 0;
                    this.ins_h = this.window[this.strstart] & 255;
                    this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[this.strstart + 1] & 255)) & this.hash_mask;
                    boolean z2 = _tr_tally;
                    s3 = s;
                    z = z2;
                } else {
                    this.match_length--;
                    do {
                        this.strstart++;
                        this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + 3) - 1] & 255)) & this.hash_mask;
                        s2 = this.head[this.ins_h] & 65535;
                        this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                        this.head[this.ins_h] = (short) this.strstart;
                        i2 = this.match_length - 1;
                        this.match_length = i2;
                    } while (i2 != 0);
                    this.strstart++;
                    boolean z3 = _tr_tally;
                    s3 = s2;
                    z = z3;
                }
            } else {
                boolean _tr_tally2 = _tr_tally(0, this.window[this.strstart] & 255);
                this.lookahead--;
                this.strstart++;
                boolean z4 = _tr_tally2;
                s3 = s;
                z = z4;
            }
            if (z) {
                flush_block_only(false);
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            }
        }
    }

    private int deflate_slow(int i) {
        int i2;
        boolean z;
        int i3 = 1;
        short s = 0;
        while (true) {
            if (this.lookahead < 262) {
                fill_window();
                if (this.lookahead < 262 && i == 0) {
                    return 0;
                }
                if (this.lookahead == 0) {
                    if (this.match_available != 0) {
                        _tr_tally(0, this.window[this.strstart - 1] & 255);
                        this.match_available = 0;
                    }
                    if (i == 4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    flush_block_only(z);
                    if (this.strm.avail_out != 0) {
                        if (i == 4) {
                            i3 = 3;
                        }
                        return i3;
                    } else if (i == 4) {
                        return 2;
                    } else {
                        return 0;
                    }
                }
            }
            if (this.lookahead >= 3) {
                this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + 3) - 1] & 255)) & this.hash_mask;
                s = this.head[this.ins_h] & 65535;
                this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                this.head[this.ins_h] = (short) this.strstart;
            }
            this.prev_length = this.match_length;
            this.prev_match = this.match_start;
            this.match_length = 2;
            if (s != 0 && this.prev_length < this.max_lazy_match && ((this.strstart - s) & SupportMenu.USER_MASK) <= this.w_size - 262) {
                if (this.strategy != 2) {
                    this.match_length = longest_match(s);
                }
                if (this.match_length <= 5 && (this.strategy == 1 || (this.match_length == 3 && this.strstart - this.match_start > 4096))) {
                    this.match_length = 2;
                }
            }
            if (this.prev_length >= 3 && this.match_length <= this.prev_length) {
                int i4 = (this.strstart + this.lookahead) - 3;
                boolean _tr_tally = _tr_tally((this.strstart - 1) - this.prev_match, this.prev_length - 3);
                this.lookahead -= this.prev_length - 1;
                this.prev_length -= 2;
                do {
                    int i5 = this.strstart + 1;
                    this.strstart = i5;
                    if (i5 <= i4) {
                        this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(this.strstart + 3) - 1] & 255)) & this.hash_mask;
                        s = this.head[this.ins_h] & 65535;
                        this.prev[this.strstart & this.w_mask] = this.head[this.ins_h];
                        this.head[this.ins_h] = (short) this.strstart;
                    }
                    i2 = this.prev_length - 1;
                    this.prev_length = i2;
                } while (i2 != 0);
                this.match_available = 0;
                this.match_length = 2;
                this.strstart++;
                if (_tr_tally) {
                    flush_block_only(false);
                    if (this.strm.avail_out == 0) {
                        return 0;
                    }
                } else {
                    continue;
                }
            } else if (this.match_available != 0) {
                if (_tr_tally(0, this.window[this.strstart - 1] & 255)) {
                    flush_block_only(false);
                }
                this.strstart++;
                this.lookahead--;
                if (this.strm.avail_out == 0) {
                    return 0;
                }
            } else {
                this.match_available = 1;
                this.strstart++;
                this.lookahead--;
            }
        }
    }

    private int longest_match(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        byte b;
        byte b2;
        int i6 = this.max_chain_length;
        int i7 = this.strstart;
        int i8 = this.prev_length;
        int i9 = this.strstart > this.w_size + -262 ? this.strstart - (this.w_size - 262) : 0;
        int i10 = this.nice_match;
        int i11 = this.w_mask;
        int i12 = this.strstart + 258;
        byte b3 = this.window[(i7 + i8) - 1];
        byte b4 = this.window[i7 + i8];
        if (this.prev_length >= this.good_match) {
            i6 >>= 2;
        }
        if (i10 > this.lookahead) {
            byte b5 = b4;
            b = b3;
            i5 = this.lookahead;
            i4 = i8;
            i3 = i7;
            i2 = i6;
            b2 = b5;
        } else {
            byte b6 = b4;
            b = b3;
            i5 = i10;
            i4 = i8;
            i3 = i7;
            i2 = i6;
            b2 = b6;
        }
        while (true) {
            if (this.window[i + i4] == b2 && this.window[(i + i4) - 1] == b && this.window[i] == this.window[i3]) {
                int i13 = i + 1;
                if (this.window[i13] == this.window[i3 + 1]) {
                    int i14 = i3 + 2;
                    int i15 = i13 + 1;
                    do {
                        i14++;
                        int i16 = i15 + 1;
                        if (this.window[i14] != this.window[i16]) {
                            break;
                        }
                        i14++;
                        int i17 = i16 + 1;
                        if (this.window[i14] != this.window[i17]) {
                            break;
                        }
                        i14++;
                        int i18 = i17 + 1;
                        if (this.window[i14] != this.window[i18]) {
                            break;
                        }
                        i14++;
                        int i19 = i18 + 1;
                        if (this.window[i14] != this.window[i19]) {
                            break;
                        }
                        i14++;
                        int i20 = i19 + 1;
                        if (this.window[i14] != this.window[i20]) {
                            break;
                        }
                        i14++;
                        int i21 = i20 + 1;
                        if (this.window[i14] != this.window[i21]) {
                            break;
                        }
                        i14++;
                        int i22 = i21 + 1;
                        if (this.window[i14] != this.window[i22]) {
                            break;
                        }
                        i14++;
                        i15 = i22 + 1;
                        if (this.window[i14] != this.window[i15]) {
                            break;
                        }
                    } while (i14 < i12);
                    int i23 = 258 - (i12 - i14);
                    int i24 = i12 - 258;
                    if (i23 > i4) {
                        this.match_start = i;
                        if (i23 >= i5) {
                            i4 = i23;
                            break;
                        }
                        b = this.window[(i24 + i23) - 1];
                        b2 = this.window[i24 + i23];
                        i4 = i23;
                        i3 = i24;
                    } else {
                        i3 = i24;
                    }
                }
            }
            i = this.prev[i & i11] & 65535;
            if (i <= i9) {
                break;
            }
            i2--;
            if (i2 == 0) {
                break;
            }
        }
        return i4 <= this.lookahead ? i4 : this.lookahead;
    }

    /* access modifiers changed from: 0000 */
    public int deflateInit(ZStream zStream, int i, int i2, int i3, WrapperType wrapperType2) {
        return deflateInit2(zStream, i, 8, i2, i3, 0, wrapperType2);
    }

    private int deflateInit2(ZStream zStream, int i, int i2, int i3, int i4, int i5, WrapperType wrapperType2) {
        if (wrapperType2 == WrapperType.ZLIB_OR_NONE) {
            throw new IllegalArgumentException("ZLIB_OR_NONE allowed only for inflate");
        }
        zStream.msg = null;
        if (i == -1) {
            i = 6;
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("windowBits: " + i3);
        } else if (i4 < 1 || i4 > 9 || i2 != 8 || i3 < 9 || i3 > 15 || i < 0 || i > 9 || i5 < 0 || i5 > 2) {
            return -2;
        } else {
            zStream.dstate = this;
            this.wrapperType = wrapperType2;
            this.w_bits = i3;
            this.w_size = 1 << this.w_bits;
            this.w_mask = this.w_size - 1;
            this.hash_bits = i4 + 7;
            this.hash_size = 1 << this.hash_bits;
            this.hash_mask = this.hash_size - 1;
            this.hash_shift = ((this.hash_bits + 3) - 1) / 3;
            this.window = new byte[(this.w_size * 2)];
            this.prev = new short[this.w_size];
            this.head = new short[this.hash_size];
            this.lit_bufsize = 1 << (i4 + 6);
            this.pending_buf = new byte[(this.lit_bufsize * 4)];
            this.pending_buf_size = this.lit_bufsize * 4;
            this.d_buf = this.lit_bufsize / 2;
            this.l_buf = this.lit_bufsize * 3;
            this.level = i;
            this.strategy = i5;
            return deflateReset(zStream);
        }
    }

    private int deflateReset(ZStream zStream) {
        zStream.total_out = 0;
        zStream.total_in = 0;
        zStream.msg = null;
        this.pending = 0;
        this.pending_out = 0;
        this.wroteTrailer = false;
        this.status = this.wrapperType == WrapperType.NONE ? 113 : 42;
        zStream.adler = Adler32.adler32(0, null, 0, 0);
        zStream.crc32 = 0;
        this.gzipUncompressedBytes = 0;
        this.last_flush = 0;
        tr_init();
        lm_init();
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public int deflateEnd() {
        if (this.status != 42 && this.status != 113 && this.status != FINISH_STATE) {
            return -2;
        }
        this.pending_buf = null;
        this.head = null;
        this.prev = null;
        this.window = null;
        return this.status == 113 ? -3 : 0;
    }

    /* access modifiers changed from: 0000 */
    public int deflateParams(ZStream zStream, int i, int i2) {
        int i3 = 0;
        if (i == -1) {
            i = 6;
        }
        if (i < 0 || i > 9 || i2 < 0 || i2 > 2) {
            return -2;
        }
        if (!(config_table[this.level].func == config_table[i].func || zStream.total_in == 0)) {
            i3 = zStream.deflate(1);
        }
        if (this.level != i) {
            this.level = i;
            this.max_lazy_match = config_table[this.level].max_lazy;
            this.good_match = config_table[this.level].good_length;
            this.nice_match = config_table[this.level].nice_length;
            this.max_chain_length = config_table[this.level].max_chain;
        }
        this.strategy = i2;
        return i3;
    }

    /* access modifiers changed from: 0000 */
    public int deflateSetDictionary(ZStream zStream, byte[] bArr, int i) {
        int i2;
        if (bArr == null || this.status != 42) {
            return -2;
        }
        zStream.adler = Adler32.adler32(zStream.adler, bArr, 0, i);
        if (i < 3) {
            return 0;
        }
        if (i > this.w_size - 262) {
            int i3 = this.w_size - 262;
            i2 = i - i3;
            i = i3;
        } else {
            i2 = 0;
        }
        System.arraycopy(bArr, i2, this.window, 0, i);
        this.strstart = i;
        this.block_start = i;
        this.ins_h = this.window[0] & 255;
        this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[1] & 255)) & this.hash_mask;
        for (int i4 = 0; i4 <= i - 3; i4++) {
            this.ins_h = ((this.ins_h << this.hash_shift) ^ (this.window[(i4 + 3) - 1] & 255)) & this.hash_mask;
            this.prev[this.w_mask & i4] = this.head[this.ins_h];
            this.head[this.ins_h] = (short) i4;
        }
        return 0;
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0131 A[Catch:{ all -> 0x017f }] */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0138 A[Catch:{ all -> 0x017f }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int deflate(org.jboss.netty.util.internal.jzlib.ZStream r12, int r13) {
        /*
            r11 = this;
            r1 = 3
            r3 = 1
            r4 = -1
            r10 = 4
            r2 = 0
            if (r13 > r10) goto L_0x0009
            if (r13 >= 0) goto L_0x000b
        L_0x0009:
            r2 = -2
        L_0x000a:
            return r2
        L_0x000b:
            byte[] r0 = r12.next_out
            if (r0 == 0) goto L_0x001f
            byte[] r0 = r12.next_in
            if (r0 != 0) goto L_0x0017
            int r0 = r12.avail_in
            if (r0 != 0) goto L_0x001f
        L_0x0017:
            int r0 = r11.status
            r5 = 666(0x29a, float:9.33E-43)
            if (r0 != r5) goto L_0x0027
            if (r13 == r10) goto L_0x0027
        L_0x001f:
            java.lang.String[] r0 = z_errmsg
            r0 = r0[r10]
            r12.msg = r0
            r2 = -2
            goto L_0x000a
        L_0x0027:
            int r0 = r12.avail_out
            if (r0 != 0) goto L_0x0034
            java.lang.String[] r0 = z_errmsg
            r1 = 7
            r0 = r0[r1]
            r12.msg = r0
            r2 = -5
            goto L_0x000a
        L_0x0034:
            r11.strm = r12
            int r5 = r11.last_flush
            r11.last_flush = r13
            int r0 = r11.status
            r6 = 42
            if (r0 != r6) goto L_0x0051
            int[] r0 = org.jboss.netty.util.internal.jzlib.Deflate.AnonymousClass1.$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r6 = r11.wrapperType
            int r6 = r6.ordinal()
            r0 = r0[r6]
            switch(r0) {
                case 1: goto L_0x005f;
                case 2: goto L_0x00a6;
                default: goto L_0x004d;
            }
        L_0x004d:
            r0 = 113(0x71, float:1.58E-43)
            r11.status = r0
        L_0x0051:
            int r0 = r11.pending
            if (r0 == 0) goto L_0x00e2
            r12.flush_pending()
            int r0 = r12.avail_out
            if (r0 != 0) goto L_0x00f4
            r11.last_flush = r4
            goto L_0x000a
        L_0x005f:
            int r0 = r11.w_bits
            int r0 = r0 + -8
            int r0 = r0 << 4
            int r0 = r0 + 8
            int r6 = r0 << 8
            int r0 = r11.level
            int r0 = r0 + -1
            r0 = r0 & 255(0xff, float:3.57E-43)
            int r0 = r0 >> 1
            if (r0 <= r1) goto L_0x0074
            r0 = r1
        L_0x0074:
            int r0 = r0 << 6
            r0 = r0 | r6
            int r6 = r11.strstart
            if (r6 == 0) goto L_0x007d
            r0 = r0 | 32
        L_0x007d:
            int r6 = r0 % 31
            int r6 = 31 - r6
            int r0 = r0 + r6
            r11.putShortMSB(r0)
            int r0 = r11.strstart
            if (r0 == 0) goto L_0x009c
            long r6 = r12.adler
            r0 = 16
            long r6 = r6 >>> r0
            int r0 = (int) r6
            r11.putShortMSB(r0)
            long r6 = r12.adler
            r8 = 65535(0xffff, double:3.23786E-319)
            long r6 = r6 & r8
            int r0 = (int) r6
            r11.putShortMSB(r0)
        L_0x009c:
            r6 = 0
            r0 = 0
            long r6 = org.jboss.netty.util.internal.jzlib.Adler32.adler32(r6, r0, r2, r2)
            r12.adler = r6
            goto L_0x004d
        L_0x00a6:
            r0 = 31
            r11.put_byte(r0)
            r0 = -117(0xffffffffffffff8b, float:NaN)
            r11.put_byte(r0)
            r0 = 8
            r11.put_byte(r0)
            r11.put_byte(r2)
            r11.put_byte(r2)
            r11.put_byte(r2)
            r11.put_byte(r2)
            r11.put_byte(r2)
            org.jboss.netty.util.internal.jzlib.Deflate$Config[] r0 = config_table
            int r6 = r11.level
            r0 = r0[r6]
            int r0 = r0.func
            switch(r0) {
                case 1: goto L_0x00d9;
                case 2: goto L_0x00dd;
                default: goto L_0x00cf;
            }
        L_0x00cf:
            r11.put_byte(r2)
        L_0x00d2:
            r11.put_byte(r4)
            r12.crc32 = r2
            goto L_0x004d
        L_0x00d9:
            r11.put_byte(r10)
            goto L_0x00d2
        L_0x00dd:
            r0 = 2
            r11.put_byte(r0)
            goto L_0x00d2
        L_0x00e2:
            int r0 = r12.avail_in
            if (r0 != 0) goto L_0x00f4
            if (r13 > r5) goto L_0x00f4
            if (r13 == r10) goto L_0x00f4
            java.lang.String[] r0 = z_errmsg
            r1 = 7
            r0 = r0[r1]
            r12.msg = r0
            r2 = -5
            goto L_0x000a
        L_0x00f4:
            int r0 = r11.status
            r5 = 666(0x29a, float:9.33E-43)
            if (r0 != r5) goto L_0x0108
            int r0 = r12.avail_in
            if (r0 == 0) goto L_0x0108
            java.lang.String[] r0 = z_errmsg
            r1 = 7
            r0 = r0[r1]
            r12.msg = r0
            r2 = -5
            goto L_0x000a
        L_0x0108:
            int r5 = r12.next_in_index
            int r0 = r12.avail_in     // Catch:{ all -> 0x017f }
            if (r0 != 0) goto L_0x011a
            int r0 = r11.lookahead     // Catch:{ all -> 0x017f }
            if (r0 != 0) goto L_0x011a
            if (r13 == 0) goto L_0x0189
            int r0 = r11.status     // Catch:{ all -> 0x017f }
            r6 = 666(0x29a, float:9.33E-43)
            if (r0 == r6) goto L_0x0189
        L_0x011a:
            org.jboss.netty.util.internal.jzlib.Deflate$Config[] r0 = config_table     // Catch:{ all -> 0x017f }
            int r6 = r11.level     // Catch:{ all -> 0x017f }
            r0 = r0[r6]     // Catch:{ all -> 0x017f }
            int r0 = r0.func     // Catch:{ all -> 0x017f }
            switch(r0) {
                case 0: goto L_0x0145;
                case 1: goto L_0x014a;
                case 2: goto L_0x014f;
                default: goto L_0x0125;
            }     // Catch:{ all -> 0x017f }
        L_0x0125:
            r0 = r4
        L_0x0126:
            r4 = 2
            if (r0 == r4) goto L_0x012b
            if (r0 != r1) goto L_0x012f
        L_0x012b:
            r4 = 666(0x29a, float:9.33E-43)
            r11.status = r4     // Catch:{ all -> 0x017f }
        L_0x012f:
            if (r0 == 0) goto L_0x0134
            r4 = 2
            if (r0 != r4) goto L_0x0154
        L_0x0134:
            int r0 = r12.avail_out     // Catch:{ all -> 0x017f }
            if (r0 != 0) goto L_0x013b
            r0 = -1
            r11.last_flush = r0     // Catch:{ all -> 0x017f }
        L_0x013b:
            int r0 = r11.gzipUncompressedBytes
            int r1 = r12.next_in_index
        L_0x013f:
            int r1 = r1 - r5
            int r0 = r0 + r1
            r11.gzipUncompressedBytes = r0
            goto L_0x000a
        L_0x0145:
            int r0 = r11.deflate_stored(r13)     // Catch:{ all -> 0x017f }
            goto L_0x0126
        L_0x014a:
            int r0 = r11.deflate_fast(r13)     // Catch:{ all -> 0x017f }
            goto L_0x0126
        L_0x014f:
            int r0 = r11.deflate_slow(r13)     // Catch:{ all -> 0x017f }
            goto L_0x0126
        L_0x0154:
            if (r0 != r3) goto L_0x0189
            if (r13 != r3) goto L_0x016a
            r11._tr_align()     // Catch:{ all -> 0x017f }
        L_0x015b:
            r12.flush_pending()     // Catch:{ all -> 0x017f }
            int r0 = r12.avail_out     // Catch:{ all -> 0x017f }
            if (r0 != 0) goto L_0x0189
            r0 = -1
            r11.last_flush = r0     // Catch:{ all -> 0x017f }
            int r0 = r11.gzipUncompressedBytes
            int r1 = r12.next_in_index
            goto L_0x013f
        L_0x016a:
            r0 = 0
            r4 = 0
            r6 = 0
            r11._tr_stored_block(r0, r4, r6)     // Catch:{ all -> 0x017f }
            if (r13 != r1) goto L_0x015b
            r0 = r2
        L_0x0173:
            int r1 = r11.hash_size     // Catch:{ all -> 0x017f }
            if (r0 >= r1) goto L_0x015b
            short[] r1 = r11.head     // Catch:{ all -> 0x017f }
            r4 = 0
            r1[r0] = r4     // Catch:{ all -> 0x017f }
            int r0 = r0 + 1
            goto L_0x0173
        L_0x017f:
            r0 = move-exception
            int r1 = r11.gzipUncompressedBytes
            int r2 = r12.next_in_index
            int r2 = r2 - r5
            int r1 = r1 + r2
            r11.gzipUncompressedBytes = r1
            throw r0
        L_0x0189:
            int r0 = r11.gzipUncompressedBytes
            int r1 = r12.next_in_index
            int r1 = r1 - r5
            int r0 = r0 + r1
            r11.gzipUncompressedBytes = r0
            if (r13 != r10) goto L_0x000a
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r0 = r11.wrapperType
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r1 = org.jboss.netty.util.internal.jzlib.JZlib.WrapperType.NONE
            if (r0 == r1) goto L_0x019d
            boolean r0 = r11.wroteTrailer
            if (r0 == 0) goto L_0x01a0
        L_0x019d:
            r2 = r3
            goto L_0x000a
        L_0x01a0:
            int[] r0 = org.jboss.netty.util.internal.jzlib.Deflate.AnonymousClass1.$SwitchMap$org$jboss$netty$util$internal$jzlib$JZlib$WrapperType
            org.jboss.netty.util.internal.jzlib.JZlib$WrapperType r1 = r11.wrapperType
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x01ba;
                case 2: goto L_0x01ce;
                default: goto L_0x01ad;
            }
        L_0x01ad:
            r12.flush_pending()
            r11.wroteTrailer = r3
            int r0 = r11.pending
            if (r0 == 0) goto L_0x021b
            r0 = r2
        L_0x01b7:
            r2 = r0
            goto L_0x000a
        L_0x01ba:
            long r0 = r12.adler
            r4 = 16
            long r0 = r0 >>> r4
            int r0 = (int) r0
            r11.putShortMSB(r0)
            long r0 = r12.adler
            r4 = 65535(0xffff, double:3.23786E-319)
            long r0 = r0 & r4
            int r0 = (int) r0
            r11.putShortMSB(r0)
            goto L_0x01ad
        L_0x01ce:
            int r0 = r12.crc32
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            int r0 = r12.crc32
            int r0 = r0 >>> 8
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            int r0 = r12.crc32
            int r0 = r0 >>> 16
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            int r0 = r12.crc32
            int r0 = r0 >>> 24
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            int r0 = r11.gzipUncompressedBytes
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            int r0 = r11.gzipUncompressedBytes
            int r0 = r0 >>> 8
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            int r0 = r11.gzipUncompressedBytes
            int r0 = r0 >>> 16
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            int r0 = r11.gzipUncompressedBytes
            int r0 = r0 >>> 24
            r0 = r0 & 255(0xff, float:3.57E-43)
            byte r0 = (byte) r0
            r11.put_byte(r0)
            goto L_0x01ad
        L_0x021b:
            r0 = r3
            goto L_0x01b7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.Deflate.deflate(org.jboss.netty.util.internal.jzlib.ZStream, int):int");
    }
}
