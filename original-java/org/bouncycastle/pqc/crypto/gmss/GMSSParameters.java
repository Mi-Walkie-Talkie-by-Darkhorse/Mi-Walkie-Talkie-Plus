package org.bouncycastle.pqc.crypto.gmss;

import org.bouncycastle.util.Arrays;

public class GMSSParameters {
    private int[] K;
    private int[] heightOfTrees;
    private int numOfLayers;
    private int[] winternitzParameter;

    public GMSSParameters(int i) throws IllegalArgumentException {
        if (i <= 10) {
            int[] iArr = {10};
            init(iArr.length, iArr, new int[]{3}, new int[]{2});
        } else if (i <= 20) {
            int[] iArr2 = {10, 10};
            init(iArr2.length, iArr2, new int[]{5, 4}, new int[]{2, 2});
        } else {
            int[] iArr3 = {10, 10, 10, 10};
            init(iArr3.length, iArr3, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2});
        }
    }

    public GMSSParameters(int i, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        init(i, iArr, iArr2, iArr3);
    }

    private void init(int i, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        boolean z = true;
        String str = "";
        this.numOfLayers = i;
        if (!(this.numOfLayers == iArr2.length && this.numOfLayers == iArr.length && this.numOfLayers == iArr3.length)) {
            str = "Unexpected parameterset format";
            z = false;
        }
        boolean z2 = z;
        String str2 = str;
        for (int i2 = 0; i2 < this.numOfLayers; i2++) {
            if (iArr3[i2] < 2 || (iArr[i2] - iArr3[i2]) % 2 != 0) {
                str2 = "Wrong parameter K (K >= 2 and H-K even required)!";
                z2 = false;
            }
            if (iArr[i2] < 4 || iArr2[i2] < 2) {
                str2 = "Wrong parameter H or w (H > 3 and w > 1 required)!";
                z2 = false;
            }
        }
        if (z2) {
            this.heightOfTrees = Arrays.clone(iArr);
            this.winternitzParameter = Arrays.clone(iArr2);
            this.K = Arrays.clone(iArr3);
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    public int[] getHeightOfTrees() {
        return Arrays.clone(this.heightOfTrees);
    }

    public int[] getK() {
        return Arrays.clone(this.K);
    }

    public int getNumOfLayers() {
        return this.numOfLayers;
    }

    public int[] getWinternitzParameter() {
        return Arrays.clone(this.winternitzParameter);
    }
}
