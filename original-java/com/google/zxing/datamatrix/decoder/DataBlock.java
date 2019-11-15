package com.google.zxing.datamatrix.decoder;

final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i, byte[] bArr) {
        this.numDataCodewords = i;
        this.codewords = bArr;
    }

    static DataBlock[] getDataBlocks(byte[] bArr, Version version) {
        boolean z;
        int i;
        int i2;
        int i3;
        ECBlocks eCBlocks = version.getECBlocks();
        ECB[] eCBlocks2 = eCBlocks.getECBlocks();
        int i4 = 0;
        for (ECB count : eCBlocks2) {
            i4 += count.getCount();
        }
        DataBlock[] dataBlockArr = new DataBlock[i4];
        int length = eCBlocks2.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length) {
            ECB ecb = eCBlocks2[i5];
            int i7 = i6;
            int i8 = 0;
            while (i8 < ecb.getCount()) {
                int dataCodewords = ecb.getDataCodewords();
                int i9 = i7 + 1;
                dataBlockArr[i7] = new DataBlock(dataCodewords, new byte[(eCBlocks.getECCodewords() + dataCodewords)]);
                i8++;
                i7 = i9;
            }
            i5++;
            i6 = i7;
        }
        int length2 = dataBlockArr[0].codewords.length - eCBlocks.getECCodewords();
        int i10 = length2 - 1;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = 0;
            while (i13 < i6) {
                int i14 = i11 + 1;
                dataBlockArr[i13].codewords[i12] = bArr[i11];
                i13++;
                i11 = i14;
            }
        }
        if (version.getVersionNumber() == 24) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 8;
        } else {
            i = i6;
        }
        int i15 = 0;
        while (i15 < i) {
            int i16 = i11 + 1;
            dataBlockArr[i15].codewords[length2 - 1] = bArr[i11];
            i15++;
            i11 = i16;
        }
        int length3 = dataBlockArr[0].codewords.length;
        int i17 = i11;
        while (length2 < length3) {
            int i18 = 0;
            int i19 = i17;
            while (i18 < i6) {
                if (z) {
                    i2 = (i18 + 8) % i6;
                } else {
                    i2 = i18;
                }
                if (!z || i2 <= 7) {
                    i3 = length2;
                } else {
                    i3 = length2 - 1;
                }
                byte[] bArr2 = dataBlockArr[i2].codewords;
                int i20 = i19 + 1;
                bArr2[i3] = bArr[i19];
                i18++;
                i19 = i20;
            }
            length2++;
            i17 = i19;
        }
        if (i17 == bArr.length) {
            return dataBlockArr;
        }
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: 0000 */
    public int getNumDataCodewords() {
        return this.numDataCodewords;
    }

    /* access modifiers changed from: 0000 */
    public byte[] getCodewords() {
        return this.codewords;
    }
}
