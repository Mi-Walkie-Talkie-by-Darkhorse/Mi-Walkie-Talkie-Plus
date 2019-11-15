package com.google.zxing.oned.rss.expanded.decoders;

final class DecodedChar extends DecodedObject {
    static final char FNC1 = '$';
    private final char value;

    DecodedChar(int i, char c) {
        super(i);
        this.value = c;
    }

    /* access modifiers changed from: 0000 */
    public char getValue() {
        return this.value;
    }

    /* access modifiers changed from: 0000 */
    public boolean isFNC1() {
        return this.value == '$';
    }
}
