package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;

final class SimpleToken extends Token {
    private final short bitCount;
    private final short value;

    SimpleToken(Token token, int i, int i2) {
        super(token);
        this.value = (short) i;
        this.bitCount = (short) i2;
    }

    /* access modifiers changed from: 0000 */
    public void appendTo(BitArray bitArray, byte[] bArr) {
        bitArray.appendBits(this.value, this.bitCount);
    }

    public String toString() {
        return "<" + Integer.toBinaryString((this.value & ((1 << this.bitCount) - 1)) | (1 << this.bitCount) | (1 << this.bitCount)).substring(1) + '>';
    }
}
