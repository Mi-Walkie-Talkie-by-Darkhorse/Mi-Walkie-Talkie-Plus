package org.jboss.netty.util.internal.jzlib;

public final class ZStream {
    long adler;
    public int avail_in;
    public int avail_out;
    int crc32;
    Deflate dstate;
    Inflate istate;
    public String msg;
    public byte[] next_in;
    public int next_in_index;
    public byte[] next_out;
    public int next_out_index;
    public long total_in;
    public long total_out;

    public int inflateInit() {
        return inflateInit(15);
    }

    public int inflateInit(Enum<?> enumR) {
        return inflateInit(15, enumR);
    }

    public int inflateInit(int i) {
        return inflateInit(i, WrapperType.ZLIB);
    }

    public int inflateInit(int i, Enum enumR) {
        this.istate = new Inflate();
        return this.istate.inflateInit(this, i, (WrapperType) enumR);
    }

    public int inflate(int i) {
        if (this.istate == null) {
            return -2;
        }
        return this.istate.inflate(this, i);
    }

    public int inflateEnd() {
        if (this.istate == null) {
            return -2;
        }
        int inflateEnd = this.istate.inflateEnd(this);
        this.istate = null;
        return inflateEnd;
    }

    public int inflateSync() {
        if (this.istate == null) {
            return -2;
        }
        return this.istate.inflateSync(this);
    }

    public int inflateSetDictionary(byte[] bArr, int i) {
        if (this.istate == null) {
            return -2;
        }
        return Inflate.inflateSetDictionary(this, bArr, i);
    }

    public int deflateInit(int i) {
        return deflateInit(i, 15);
    }

    public int deflateInit(int i, Enum<?> enumR) {
        return deflateInit(i, 15, enumR);
    }

    public int deflateInit(int i, int i2) {
        return deflateInit(i, i2, WrapperType.ZLIB);
    }

    public int deflateInit(int i, int i2, Enum<?> enumR) {
        return deflateInit(i, i2, 8, enumR);
    }

    public int deflateInit(int i, int i2, int i3, Enum enumR) {
        this.dstate = new Deflate();
        return this.dstate.deflateInit(this, i, i2, i3, (WrapperType) enumR);
    }

    public int deflate(int i) {
        if (this.dstate == null) {
            return -2;
        }
        return this.dstate.deflate(this, i);
    }

    public int deflateEnd() {
        if (this.dstate == null) {
            return -2;
        }
        int deflateEnd = this.dstate.deflateEnd();
        this.dstate = null;
        return deflateEnd;
    }

    public int deflateParams(int i, int i2) {
        if (this.dstate == null) {
            return -2;
        }
        return this.dstate.deflateParams(this, i, i2);
    }

    public int deflateSetDictionary(byte[] bArr, int i) {
        if (this.dstate == null) {
            return -2;
        }
        return this.dstate.deflateSetDictionary(this, bArr, i);
    }

    /* access modifiers changed from: 0000 */
    public void flush_pending() {
        int i = this.dstate.pending;
        if (i > this.avail_out) {
            i = this.avail_out;
        }
        if (i != 0) {
            if (this.dstate.pending_buf.length <= this.dstate.pending_out || this.next_out.length <= this.next_out_index || this.dstate.pending_buf.length < this.dstate.pending_out + i || this.next_out.length < this.next_out_index + i) {
                System.out.println(this.dstate.pending_buf.length + ", " + this.dstate.pending_out + ", " + this.next_out.length + ", " + this.next_out_index + ", " + i);
                System.out.println("avail_out=" + this.avail_out);
            }
            System.arraycopy(this.dstate.pending_buf, this.dstate.pending_out, this.next_out, this.next_out_index, i);
            this.next_out_index += i;
            this.dstate.pending_out += i;
            this.total_out += (long) i;
            this.avail_out -= i;
            this.dstate.pending -= i;
            if (this.dstate.pending == 0) {
                this.dstate.pending_out = 0;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public int read_buf(byte[] bArr, int i, int i2) {
        int i3 = this.avail_in;
        if (i3 > i2) {
            i3 = i2;
        }
        if (i3 == 0) {
            return 0;
        }
        this.avail_in -= i3;
        switch (this.dstate.wrapperType) {
            case ZLIB:
                this.adler = Adler32.adler32(this.adler, this.next_in, this.next_in_index, i3);
                break;
            case GZIP:
                this.crc32 = CRC32.crc32(this.crc32, this.next_in, this.next_in_index, i3);
                break;
        }
        System.arraycopy(this.next_in, this.next_in_index, bArr, i, i3);
        this.next_in_index += i3;
        this.total_in += (long) i3;
        return i3;
    }

    public void free() {
        this.next_in = null;
        this.next_out = null;
        this.msg = null;
    }
}
