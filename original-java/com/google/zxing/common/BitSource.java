package com.google.zxing.common;

public final class BitSource {
    private int bitOffset;
    private int byteOffset;
    private final byte[] bytes;

    public BitSource(byte[] bArr) {
        this.bytes = bArr;
    }

    public int getBitOffset() {
        return this.bitOffset;
    }

    public int getByteOffset() {
        return this.byteOffset;
    }

    public int readBits(int i) {
        byte b;
        int i2;
        if (i <= 0 || i > 32 || i > available()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        if (this.bitOffset > 0) {
            int i3 = 8 - this.bitOffset;
            int i4 = i < i3 ? i : i3;
            int i5 = i3 - i4;
            int i6 = (((255 >> (8 - i4)) << i5) & this.bytes[this.byteOffset]) >> i5;
            int i7 = i - i4;
            this.bitOffset = i4 + this.bitOffset;
            if (this.bitOffset == 8) {
                this.bitOffset = 0;
                this.byteOffset++;
            }
            b = i6;
            i2 = i7;
        } else {
            b = 0;
            i2 = i;
        }
        if (i2 <= 0) {
            return b;
        }
        while (i2 >= 8) {
            b = (b << 8) | (this.bytes[this.byteOffset] & 255);
            this.byteOffset++;
            i2 -= 8;
        }
        if (i2 <= 0) {
            return b;
        }
        int i8 = 8 - i2;
        int i9 = (b << i2) | ((((255 >> i8) << i8) & this.bytes[this.byteOffset]) >> i8);
        this.bitOffset = i2 + this.bitOffset;
        return i9;
    }

    public int available() {
        return ((this.bytes.length - this.byteOffset) * 8) - this.bitOffset;
    }
}
