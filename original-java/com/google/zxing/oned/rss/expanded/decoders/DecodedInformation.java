package com.google.zxing.oned.rss.expanded.decoders;

final class DecodedInformation extends DecodedObject {
    private final String newString;
    private final boolean remaining;
    private final int remainingValue;

    DecodedInformation(int i, String str) {
        super(i);
        this.newString = str;
        this.remaining = false;
        this.remainingValue = 0;
    }

    DecodedInformation(int i, String str, int i2) {
        super(i);
        this.remaining = true;
        this.remainingValue = i2;
        this.newString = str;
    }

    /* access modifiers changed from: 0000 */
    public String getNewString() {
        return this.newString;
    }

    /* access modifiers changed from: 0000 */
    public boolean isRemaining() {
        return this.remaining;
    }

    /* access modifiers changed from: 0000 */
    public int getRemainingValue() {
        return this.remainingValue;
    }
}
