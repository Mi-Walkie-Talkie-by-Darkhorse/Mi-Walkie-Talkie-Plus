package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private boolean mirror;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    BitMatrixParser(BitMatrix bitMatrix2) throws FormatException {
        int height = bitMatrix2.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.bitMatrix = bitMatrix2;
    }

    /* access modifiers changed from: 0000 */
    public FormatInformation readFormatInformation() throws FormatException {
        int i = 0;
        if (this.parsedFormatInfo != null) {
            return this.parsedFormatInfo;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 6; i3++) {
            i2 = copyBit(i3, 8, i2);
        }
        int copyBit = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, i2)));
        for (int i4 = 5; i4 >= 0; i4--) {
            copyBit = copyBit(8, i4, copyBit);
        }
        int height = this.bitMatrix.getHeight();
        int i5 = height - 7;
        for (int i6 = height - 1; i6 >= i5; i6--) {
            i = copyBit(8, i6, i);
        }
        for (int i7 = height - 8; i7 < height; i7++) {
            i = copyBit(i7, 8, i);
        }
        this.parsedFormatInfo = FormatInformation.decodeFormatInformation(copyBit, i);
        if (this.parsedFormatInfo != null) {
            return this.parsedFormatInfo;
        }
        throw FormatException.getFormatInstance();
    }

    /* access modifiers changed from: 0000 */
    public Version readVersion() throws FormatException {
        if (this.parsedVersion != null) {
            return this.parsedVersion;
        }
        int height = this.bitMatrix.getHeight();
        int i = (height - 17) / 4;
        if (i <= 6) {
            return Version.getVersionForNumber(i);
        }
        int i2 = height - 11;
        int i3 = 0;
        for (int i4 = 5; i4 >= 0; i4--) {
            for (int i5 = height - 9; i5 >= i2; i5--) {
                i3 = copyBit(i5, i4, i3);
            }
        }
        Version decodeVersionInformation = Version.decodeVersionInformation(i3);
        if (decodeVersionInformation == null || decodeVersionInformation.getDimensionForVersion() != height) {
            int i6 = 0;
            for (int i7 = 5; i7 >= 0; i7--) {
                for (int i8 = height - 9; i8 >= i2; i8--) {
                    i6 = copyBit(i7, i8, i6);
                }
            }
            Version decodeVersionInformation2 = Version.decodeVersionInformation(i6);
            if (decodeVersionInformation2 == null || decodeVersionInformation2.getDimensionForVersion() != height) {
                throw FormatException.getFormatInstance();
            }
            this.parsedVersion = decodeVersionInformation2;
            return decodeVersionInformation2;
        }
        this.parsedVersion = decodeVersionInformation;
        return decodeVersionInformation;
    }

    private int copyBit(int i, int i2, int i3) {
        return this.mirror ? this.bitMatrix.get(i2, i) : this.bitMatrix.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    /* access modifiers changed from: 0000 */
    public byte[] readCodewords() throws FormatException {
        int i;
        FormatInformation readFormatInformation = readFormatInformation();
        Version readVersion = readVersion();
        DataMask dataMask = DataMask.values()[readFormatInformation.getDataMask()];
        int height = this.bitMatrix.getHeight();
        dataMask.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix buildFunctionPattern = readVersion.buildFunctionPattern();
        byte[] bArr = new byte[readVersion.getTotalCodewords()];
        int i2 = height - 1;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        boolean z = true;
        while (i2 > 0) {
            if (i2 == 6) {
                i2--;
            }
            for (int i6 = 0; i6 < height; i6++) {
                if (z) {
                    i = (height - 1) - i6;
                } else {
                    i = i6;
                }
                for (int i7 = 0; i7 < 2; i7++) {
                    if (!buildFunctionPattern.get(i2 - i7, i)) {
                        i3++;
                        i4 <<= 1;
                        if (this.bitMatrix.get(i2 - i7, i)) {
                            i4 |= 1;
                        }
                        if (i3 == 8) {
                            int i8 = i5 + 1;
                            bArr[i5] = (byte) i4;
                            i4 = 0;
                            i5 = i8;
                            i3 = 0;
                        }
                    }
                }
            }
            i2 -= 2;
            z = !z;
        }
        if (i5 == readVersion.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    /* access modifiers changed from: 0000 */
    public void remask() {
        if (this.parsedFormatInfo != null) {
            DataMask.values()[this.parsedFormatInfo.getDataMask()].unmaskBitMatrix(this.bitMatrix, this.bitMatrix.getHeight());
        }
    }

    /* access modifiers changed from: 0000 */
    public void setMirror(boolean z) {
        this.parsedVersion = null;
        this.parsedFormatInfo = null;
        this.mirror = z;
    }

    /* access modifiers changed from: 0000 */
    public void mirror() {
        for (int i = 0; i < this.bitMatrix.getWidth(); i++) {
            for (int i2 = i + 1; i2 < this.bitMatrix.getHeight(); i2++) {
                if (this.bitMatrix.get(i, i2) != this.bitMatrix.get(i2, i)) {
                    this.bitMatrix.flip(i2, i);
                    this.bitMatrix.flip(i, i2);
                }
            }
        }
    }
}
