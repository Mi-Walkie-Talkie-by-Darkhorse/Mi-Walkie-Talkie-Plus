package com.mi.milinkforgame.sdk.base.os.dns;

public class DNSInput {
    private byte[] array;
    private int end = this.array.length;
    private int pos = 0;
    private int saved_end = -1;
    private int saved_pos = -1;

    public DNSInput(byte[] bArr) {
        this.array = bArr;
    }

    public int current() {
        return this.pos;
    }

    public int remaining() {
        return this.end - this.pos;
    }

    private void require(int i) throws WireParseException {
        if (i > remaining()) {
            throw new WireParseException("end of input");
        }
    }

    public void setActive(int i) {
        if (i > this.array.length - this.pos) {
            throw new IllegalArgumentException("cannot set active region past end of input");
        }
        this.end = this.pos + i;
    }

    public void clearActive() {
        this.end = this.array.length;
    }

    public void jump(int i) {
        if (i >= this.array.length) {
            throw new IllegalArgumentException("cannot jump past end of input");
        }
        this.pos = i;
        this.end = this.array.length;
    }

    public void save() {
        this.saved_pos = this.pos;
        this.saved_end = this.end;
    }

    public void restore() {
        if (this.saved_pos < 0) {
            throw new IllegalStateException("no previous state");
        }
        this.pos = this.saved_pos;
        this.end = this.saved_end;
        this.saved_pos = -1;
        this.saved_end = -1;
    }

    public int readU8() throws WireParseException {
        require(1);
        byte[] bArr = this.array;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i] & 255;
    }

    public int readU16() throws WireParseException {
        require(2);
        byte[] bArr = this.array;
        int i = this.pos;
        this.pos = i + 1;
        byte b = bArr[i] & 255;
        byte[] bArr2 = this.array;
        int i2 = this.pos;
        this.pos = i2 + 1;
        return (b << 8) + (bArr2[i2] & 255);
    }

    public long readU32() throws WireParseException {
        require(4);
        byte[] bArr = this.array;
        int i = this.pos;
        this.pos = i + 1;
        byte b = bArr[i] & 255;
        byte[] bArr2 = this.array;
        int i2 = this.pos;
        this.pos = i2 + 1;
        byte b2 = bArr2[i2] & 255;
        byte[] bArr3 = this.array;
        int i3 = this.pos;
        this.pos = i3 + 1;
        byte b3 = bArr3[i3] & 255;
        byte[] bArr4 = this.array;
        int i4 = this.pos;
        this.pos = i4 + 1;
        return ((long) (b2 << Tnaf.POW_2_WIDTH)) + (((long) b) << 24) + ((long) (b3 << 8)) + ((long) (bArr4[i4] & 255));
    }

    public void readByteArray(byte[] bArr, int i, int i2) throws WireParseException {
        require(i2);
        System.arraycopy(this.array, this.pos, bArr, i, i2);
        this.pos += i2;
    }

    public byte[] readByteArray(int i) throws WireParseException {
        require(i);
        byte[] bArr = new byte[i];
        System.arraycopy(this.array, this.pos, bArr, 0, i);
        this.pos += i;
        return bArr;
    }

    public byte[] readByteArray() {
        int remaining = remaining();
        byte[] bArr = new byte[remaining];
        System.arraycopy(this.array, this.pos, bArr, 0, remaining);
        this.pos = remaining + this.pos;
        this.end = this.array.length - 1;
        return bArr;
    }

    public byte[] readCountedString() throws WireParseException {
        require(1);
        byte[] bArr = this.array;
        int i = this.pos;
        this.pos = i + 1;
        return readByteArray(bArr[i] & 255);
    }
}
