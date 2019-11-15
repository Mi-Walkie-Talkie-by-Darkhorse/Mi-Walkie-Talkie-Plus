package com.google.zxing.pdf417.decoder;

final class BarcodeMetadata {
    private final int columnCount;
    private final int errorCorrectionLevel;
    private final int rowCount;
    private final int rowCountLowerPart;
    private final int rowCountUpperPart;

    BarcodeMetadata(int i, int i2, int i3, int i4) {
        this.columnCount = i;
        this.errorCorrectionLevel = i4;
        this.rowCountUpperPart = i2;
        this.rowCountLowerPart = i3;
        this.rowCount = i2 + i3;
    }

    /* access modifiers changed from: 0000 */
    public int getColumnCount() {
        return this.columnCount;
    }

    /* access modifiers changed from: 0000 */
    public int getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    /* access modifiers changed from: 0000 */
    public int getRowCount() {
        return this.rowCount;
    }

    /* access modifiers changed from: 0000 */
    public int getRowCountUpperPart() {
        return this.rowCountUpperPart;
    }

    /* access modifiers changed from: 0000 */
    public int getRowCountLowerPart() {
        return this.rowCountLowerPart;
    }
}
