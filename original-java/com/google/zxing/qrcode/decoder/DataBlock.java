package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.Version.ECB;
import com.google.zxing.qrcode.decoder.Version.ECBlocks;

final class DataBlock {
    private final byte[] codewords;
    private final int numDataCodewords;

    private DataBlock(int i, byte[] bArr) {
        this.numDataCodewords = i;
        this.codewords = bArr;
    }

    static DataBlock[] getDataBlocks(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length != version.getTotalCodewords()) {
            throw new IllegalArgumentException();
        }
        ECBlocks eCBlocksForLevel = version.getECBlocksForLevel(errorCorrectionLevel);
        ECB[] eCBlocks = eCBlocksForLevel.getECBlocks();
        int i = 0;
        for (ECB count : eCBlocks) {
            i += count.getCount();
        }
        DataBlock[] dataBlockArr = new DataBlock[i];
        int length = eCBlocks.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            ECB ecb = eCBlocks[i2];
            int i4 = i3;
            int i5 = 0;
            while (i5 < ecb.getCount()) {
                int dataCodewords = ecb.getDataCodewords();
                int i6 = i4 + 1;
                dataBlockArr[i4] = new DataBlock(dataCodewords, new byte[(eCBlocksForLevel.getECCodewordsPerBlock() + dataCodewords)]);
                i5++;
                i4 = i6;
            }
            i2++;
            i3 = i4;
        }
        int length2 = dataBlockArr[0].codewords.length;
        int length3 = dataBlockArr.length - 1;
        while (length3 >= 0 && dataBlockArr[length3].codewords.length != length2) {
            length3--;
        }
        int i7 = length3 + 1;
        int eCCodewordsPerBlock = length2 - eCBlocksForLevel.getECCodewordsPerBlock();
        int i8 = 0;
        int i9 = 0;
        while (i8 < eCCodewordsPerBlock) {
            int i10 = i9;
            int i11 = 0;
            while (i11 < i3) {
                int i12 = i10 + 1;
                dataBlockArr[i11].codewords[i8] = bArr[i10];
                i11++;
                i10 = i12;
            }
            i8++;
            i9 = i10;
        }
        int i13 = i7;
        while (i13 < i3) {
            int i14 = i9 + 1;
            dataBlockArr[i13].codewords[eCCodewordsPerBlock] = bArr[i9];
            i13++;
            i9 = i14;
        }
        int length4 = dataBlockArr[0].codewords.length;
        while (eCCodewordsPerBlock < length4) {
            int i15 = 0;
            int i16 = i9;
            while (i15 < i3) {
                int i17 = i16 + 1;
                dataBlockArr[i15].codewords[i15 < i7 ? eCCodewordsPerBlock : eCCodewordsPerBlock + 1] = bArr[i16];
                i15++;
                i16 = i17;
            }
            eCCodewordsPerBlock++;
            i9 = i16;
        }
        return dataBlockArr;
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
