package com.google.zxing.pdf417.decoder;

import com.google.zxing.ResultPoint;

final class DetectionResultRowIndicatorColumn extends DetectionResultColumn {
    private final boolean isLeft;

    DetectionResultRowIndicatorColumn(BoundingBox boundingBox, boolean z) {
        super(boundingBox);
        this.isLeft = z;
    }

    private void setRowNumbers() {
        Codeword[] codewords;
        for (Codeword codeword : getCodewords()) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void adjustCompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        boolean z2;
        Codeword[] codewords = getCodewords();
        setRowNumbers();
        removeIncorrectCodewords(codewords, barcodeMetadata);
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topRight = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomRight = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int imageRowToCodewordIndex = imageRowToCodewordIndex((int) topRight.getY());
        int imageRowToCodewordIndex2 = imageRowToCodewordIndex((int) bottomRight.getY());
        int i5 = -1;
        int i6 = imageRowToCodewordIndex;
        int i7 = 0;
        int i8 = 1;
        while (i6 < imageRowToCodewordIndex2) {
            if (codewords[i6] != null) {
                Codeword codeword = codewords[i6];
                int rowNumber = codeword.getRowNumber() - i5;
                if (rowNumber == 0) {
                    i = i7 + 1;
                    i2 = i8;
                    i3 = i5;
                } else if (rowNumber == 1) {
                    int max = Math.max(i8, i7);
                    i3 = codeword.getRowNumber();
                    i2 = max;
                    i = 1;
                } else if (rowNumber < 0 || codeword.getRowNumber() >= barcodeMetadata.getRowCount() || rowNumber > i6) {
                    codewords[i6] = null;
                    i = i7;
                    i2 = i8;
                    i3 = i5;
                } else {
                    if (i8 > 2) {
                        i4 = rowNumber * (i8 - 2);
                    } else {
                        i4 = rowNumber;
                    }
                    if (i4 >= i6) {
                        z = true;
                    } else {
                        z = false;
                    }
                    for (int i9 = 1; i9 <= i4 && !z2; i9++) {
                        if (codewords[i6 - i9] != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    }
                    if (z2) {
                        codewords[i6] = null;
                        i = i7;
                        i2 = i8;
                        i3 = i5;
                    } else {
                        i2 = i8;
                        i3 = codeword.getRowNumber();
                        i = 1;
                    }
                }
            } else {
                i = i7;
                i2 = i8;
                i3 = i5;
            }
            i6++;
            i5 = i3;
            i8 = i2;
            i7 = i;
        }
    }

    /* access modifiers changed from: 0000 */
    public int[] getRowHeights() {
        Codeword[] codewords;
        BarcodeMetadata barcodeMetadata = getBarcodeMetadata();
        if (barcodeMetadata == null) {
            return null;
        }
        adjustIncompleteIndicatorColumnRowNumbers(barcodeMetadata);
        int[] iArr = new int[barcodeMetadata.getRowCount()];
        for (Codeword codeword : getCodewords()) {
            if (codeword != null) {
                int rowNumber = codeword.getRowNumber();
                if (rowNumber < iArr.length) {
                    iArr[rowNumber] = iArr[rowNumber] + 1;
                }
            }
        }
        return iArr;
    }

    private void adjustIncompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topRight = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomRight = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int imageRowToCodewordIndex = imageRowToCodewordIndex((int) topRight.getY());
        int imageRowToCodewordIndex2 = imageRowToCodewordIndex((int) bottomRight.getY());
        Codeword[] codewords = getCodewords();
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        for (int i4 = imageRowToCodewordIndex; i4 < imageRowToCodewordIndex2; i4++) {
            if (codewords[i4] != null) {
                Codeword codeword = codewords[i4];
                codeword.setRowNumberAsRowIndicatorColumn();
                int rowNumber = codeword.getRowNumber() - i;
                if (rowNumber == 0) {
                    i2++;
                } else if (rowNumber == 1) {
                    int max = Math.max(i3, i2);
                    i = codeword.getRowNumber();
                    i3 = max;
                    i2 = 1;
                } else if (codeword.getRowNumber() >= barcodeMetadata.getRowCount()) {
                    codewords[i4] = null;
                } else {
                    i = codeword.getRowNumber();
                    i2 = 1;
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public BarcodeMetadata getBarcodeMetadata() {
        Codeword[] codewords = getCodewords();
        BarcodeValue barcodeValue = new BarcodeValue();
        BarcodeValue barcodeValue2 = new BarcodeValue();
        BarcodeValue barcodeValue3 = new BarcodeValue();
        BarcodeValue barcodeValue4 = new BarcodeValue();
        for (Codeword codeword : codewords) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                if (!this.isLeft) {
                    rowNumber += 2;
                }
                switch (rowNumber % 3) {
                    case 0:
                        barcodeValue2.setValue((value * 3) + 1);
                        break;
                    case 1:
                        barcodeValue4.setValue(value / 3);
                        barcodeValue3.setValue(value % 3);
                        break;
                    case 2:
                        barcodeValue.setValue(value + 1);
                        break;
                }
            }
        }
        if (barcodeValue.getValue().length == 0 || barcodeValue2.getValue().length == 0 || barcodeValue3.getValue().length == 0 || barcodeValue4.getValue().length == 0 || barcodeValue.getValue()[0] <= 0 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] < 3 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] > 90) {
            return null;
        }
        BarcodeMetadata barcodeMetadata = new BarcodeMetadata(barcodeValue.getValue()[0], barcodeValue2.getValue()[0], barcodeValue3.getValue()[0], barcodeValue4.getValue()[0]);
        removeIncorrectCodewords(codewords, barcodeMetadata);
        return barcodeMetadata;
    }

    private void removeIncorrectCodewords(Codeword[] codewordArr, BarcodeMetadata barcodeMetadata) {
        for (int i = 0; i < codewordArr.length; i++) {
            Codeword codeword = codewordArr[i];
            if (codewordArr[i] != null) {
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                if (rowNumber <= barcodeMetadata.getRowCount()) {
                    if (!this.isLeft) {
                        rowNumber += 2;
                    }
                    switch (rowNumber % 3) {
                        case 0:
                            if ((value * 3) + 1 == barcodeMetadata.getRowCountUpperPart()) {
                                break;
                            } else {
                                codewordArr[i] = null;
                                break;
                            }
                        case 1:
                            if (value / 3 != barcodeMetadata.getErrorCorrectionLevel() || value % 3 != barcodeMetadata.getRowCountLowerPart()) {
                                codewordArr[i] = null;
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            if (value + 1 == barcodeMetadata.getColumnCount()) {
                                break;
                            } else {
                                codewordArr[i] = null;
                                break;
                            }
                    }
                } else {
                    codewordArr[i] = null;
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean isLeft() {
        return this.isLeft;
    }

    public String toString() {
        return "IsLeft: " + this.isLeft + 10 + super.toString();
    }
}
