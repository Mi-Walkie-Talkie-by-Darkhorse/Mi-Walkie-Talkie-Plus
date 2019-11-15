package com.google.zxing.oned.rss.expanded.decoders;

abstract class DecodedObject {
    private final int newPosition;

    DecodedObject(int i) {
        this.newPosition = i;
    }

    /* access modifiers changed from: 0000 */
    public final int getNewPosition() {
        return this.newPosition;
    }
}
