package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;

abstract class Token {
    static final Token EMPTY = new SimpleToken(null, 0, 0);
    private final Token previous;

    /* access modifiers changed from: 0000 */
    public abstract void appendTo(BitArray bitArray, byte[] bArr);

    Token(Token token) {
        this.previous = token;
    }

    /* access modifiers changed from: 0000 */
    public final Token getPrevious() {
        return this.previous;
    }

    /* access modifiers changed from: 0000 */
    public final Token add(int i, int i2) {
        return new SimpleToken(this, i, i2);
    }

    /* access modifiers changed from: 0000 */
    public final Token addBinaryShift(int i, int i2) {
        return new BinaryShiftToken(this, i, i2);
    }
}
