package com.google.zxing.pdf417.decoder;

final class Codeword {
    private static final int BARCODE_ROW_UNKNOWN = -1;
    private final int bucket;
    private final int endX;
    private int rowNumber = -1;
    private final int startX;
    private final int value;

    Codeword(int i, int i2, int i3, int i4) {
        this.startX = i;
        this.endX = i2;
        this.bucket = i3;
        this.value = i4;
    }

    /* access modifiers changed from: 0000 */
    public boolean hasValidRowNumber() {
        return isValidRowNumber(this.rowNumber);
    }

    /* access modifiers changed from: 0000 */
    public boolean isValidRowNumber(int i) {
        return i != -1 && this.bucket == (i % 3) * 3;
    }

    /* access modifiers changed from: 0000 */
    public void setRowNumberAsRowIndicatorColumn() {
        this.rowNumber = ((this.value / 30) * 3) + (this.bucket / 3);
    }

    /* access modifiers changed from: 0000 */
    public int getWidth() {
        return this.endX - this.startX;
    }

    /* access modifiers changed from: 0000 */
    public int getStartX() {
        return this.startX;
    }

    /* access modifiers changed from: 0000 */
    public int getEndX() {
        return this.endX;
    }

    /* access modifiers changed from: 0000 */
    public int getBucket() {
        return this.bucket;
    }

    /* access modifiers changed from: 0000 */
    public int getValue() {
        return this.value;
    }

    /* access modifiers changed from: 0000 */
    public int getRowNumber() {
        return this.rowNumber;
    }

    /* access modifiers changed from: 0000 */
    public void setRowNumber(int i) {
        this.rowNumber = i;
    }

    public String toString() {
        return this.rowNumber + "|" + this.value;
    }
}
