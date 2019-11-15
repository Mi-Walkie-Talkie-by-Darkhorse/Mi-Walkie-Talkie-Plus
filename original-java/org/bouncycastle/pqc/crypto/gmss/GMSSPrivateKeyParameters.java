package org.bouncycastle.pqc.crypto.gmss;

import com.xiaomi.mipush.sdk.Constants;
import java.lang.reflect.Array;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSignature;
import org.bouncycastle.util.Arrays;

public class GMSSPrivateKeyParameters extends GMSSKeyParameters {
    private int[] K;
    private byte[][][] currentAuthPaths;
    private Vector[][] currentRetain;
    private byte[][] currentRootSig;
    private byte[][] currentSeeds;
    private Vector[] currentStack;
    private Treehash[][] currentTreehash;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private int[] index;
    private byte[][][] keep;
    private int mdLength;
    private Digest messDigestTrees;
    private int[] minTreehash;
    private byte[][][] nextAuthPaths;
    private GMSSLeaf[] nextNextLeaf;
    private GMSSRootCalc[] nextNextRoot;
    private byte[][] nextNextSeeds;
    private Vector[][] nextRetain;
    private byte[][] nextRoot;
    private GMSSRootSig[] nextRootSig;
    private Vector[] nextStack;
    private Treehash[][] nextTreehash;
    private int numLayer;
    private int[] numLeafs;
    private int[] otsIndex;
    private GMSSLeaf[] upperLeaf;
    private GMSSLeaf[] upperTreehashLeaf;
    private boolean used;

    private GMSSPrivateKeyParameters(GMSSPrivateKeyParameters gMSSPrivateKeyParameters) {
        super(true, gMSSPrivateKeyParameters.getParameters());
        this.used = false;
        this.index = Arrays.clone(gMSSPrivateKeyParameters.index);
        this.currentSeeds = Arrays.clone(gMSSPrivateKeyParameters.currentSeeds);
        this.nextNextSeeds = Arrays.clone(gMSSPrivateKeyParameters.nextNextSeeds);
        this.currentAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.currentAuthPaths);
        this.nextAuthPaths = Arrays.clone(gMSSPrivateKeyParameters.nextAuthPaths);
        this.currentTreehash = gMSSPrivateKeyParameters.currentTreehash;
        this.nextTreehash = gMSSPrivateKeyParameters.nextTreehash;
        this.currentStack = gMSSPrivateKeyParameters.currentStack;
        this.nextStack = gMSSPrivateKeyParameters.nextStack;
        this.currentRetain = gMSSPrivateKeyParameters.currentRetain;
        this.nextRetain = gMSSPrivateKeyParameters.nextRetain;
        this.keep = Arrays.clone(gMSSPrivateKeyParameters.keep);
        this.nextNextLeaf = gMSSPrivateKeyParameters.nextNextLeaf;
        this.upperLeaf = gMSSPrivateKeyParameters.upperLeaf;
        this.upperTreehashLeaf = gMSSPrivateKeyParameters.upperTreehashLeaf;
        this.minTreehash = gMSSPrivateKeyParameters.minTreehash;
        this.gmssPS = gMSSPrivateKeyParameters.gmssPS;
        this.nextRoot = Arrays.clone(gMSSPrivateKeyParameters.nextRoot);
        this.nextNextRoot = gMSSPrivateKeyParameters.nextNextRoot;
        this.currentRootSig = gMSSPrivateKeyParameters.currentRootSig;
        this.nextRootSig = gMSSPrivateKeyParameters.nextRootSig;
        this.digestProvider = gMSSPrivateKeyParameters.digestProvider;
        this.heightOfTrees = gMSSPrivateKeyParameters.heightOfTrees;
        this.otsIndex = gMSSPrivateKeyParameters.otsIndex;
        this.K = gMSSPrivateKeyParameters.K;
        this.numLayer = gMSSPrivateKeyParameters.numLayer;
        this.messDigestTrees = gMSSPrivateKeyParameters.messDigestTrees;
        this.mdLength = gMSSPrivateKeyParameters.mdLength;
        this.gmssRandom = gMSSPrivateKeyParameters.gmssRandom;
        this.numLeafs = gMSSPrivateKeyParameters.numLeafs;
    }

    public GMSSPrivateKeyParameters(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        super(true, gMSSParameters);
        this.used = false;
        this.messDigestTrees = gMSSDigestProvider.get();
        this.mdLength = this.messDigestTrees.getDigestSize();
        this.gmssPS = gMSSParameters;
        this.otsIndex = gMSSParameters.getWinternitzParameter();
        this.K = gMSSParameters.getK();
        this.heightOfTrees = gMSSParameters.getHeightOfTrees();
        this.numLayer = this.gmssPS.getNumOfLayers();
        if (iArr == null) {
            this.index = new int[this.numLayer];
            for (int i = 0; i < this.numLayer; i++) {
                this.index[i] = 0;
            }
        } else {
            this.index = iArr;
        }
        this.currentSeeds = bArr;
        this.nextNextSeeds = bArr2;
        this.currentAuthPaths = bArr3;
        this.nextAuthPaths = bArr4;
        if (bArr5 == null) {
            this.keep = new byte[this.numLayer][][];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= this.numLayer) {
                    break;
                }
                this.keep[i3] = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{(int) Math.floor((double) (this.heightOfTrees[i3] / 2)), this.mdLength});
                i2 = i3 + 1;
            }
        } else {
            this.keep = bArr5;
        }
        if (vectorArr == null) {
            this.currentStack = new Vector[this.numLayer];
            for (int i4 = 0; i4 < this.numLayer; i4++) {
                this.currentStack[i4] = new Vector();
            }
        } else {
            this.currentStack = vectorArr;
        }
        if (vectorArr2 == null) {
            this.nextStack = new Vector[(this.numLayer - 1)];
            for (int i5 = 0; i5 < this.numLayer - 1; i5++) {
                this.nextStack[i5] = new Vector();
            }
        } else {
            this.nextStack = vectorArr2;
        }
        this.currentTreehash = treehashArr;
        this.nextTreehash = treehashArr2;
        this.currentRetain = vectorArr3;
        this.nextRetain = vectorArr4;
        this.nextRoot = bArr6;
        this.digestProvider = gMSSDigestProvider;
        if (gMSSRootCalcArr == null) {
            this.nextNextRoot = new GMSSRootCalc[(this.numLayer - 1)];
            for (int i6 = 0; i6 < this.numLayer - 1; i6++) {
                this.nextNextRoot[i6] = new GMSSRootCalc(this.heightOfTrees[i6 + 1], this.K[i6 + 1], this.digestProvider);
            }
        } else {
            this.nextNextRoot = gMSSRootCalcArr;
        }
        this.currentRootSig = bArr7;
        this.numLeafs = new int[this.numLayer];
        for (int i7 = 0; i7 < this.numLayer; i7++) {
            this.numLeafs[i7] = 1 << this.heightOfTrees[i7];
        }
        this.gmssRandom = new GMSSRandom(this.messDigestTrees);
        if (this.numLayer <= 1) {
            this.nextNextLeaf = new GMSSLeaf[0];
        } else if (gMSSLeafArr == null) {
            this.nextNextLeaf = new GMSSLeaf[(this.numLayer - 2)];
            for (int i8 = 0; i8 < this.numLayer - 2; i8++) {
                this.nextNextLeaf[i8] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[i8 + 1], this.numLeafs[i8 + 2], this.nextNextSeeds[i8]);
            }
        } else {
            this.nextNextLeaf = gMSSLeafArr;
        }
        if (gMSSLeafArr2 == null) {
            this.upperLeaf = new GMSSLeaf[(this.numLayer - 1)];
            for (int i9 = 0; i9 < this.numLayer - 1; i9++) {
                this.upperLeaf[i9] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[i9], this.numLeafs[i9 + 1], this.currentSeeds[i9]);
            }
        } else {
            this.upperLeaf = gMSSLeafArr2;
        }
        if (gMSSLeafArr3 == null) {
            this.upperTreehashLeaf = new GMSSLeaf[(this.numLayer - 1)];
            for (int i10 = 0; i10 < this.numLayer - 1; i10++) {
                this.upperTreehashLeaf[i10] = new GMSSLeaf(gMSSDigestProvider.get(), this.otsIndex[i10], this.numLeafs[i10 + 1]);
            }
        } else {
            this.upperTreehashLeaf = gMSSLeafArr3;
        }
        if (iArr2 == null) {
            this.minTreehash = new int[(this.numLayer - 1)];
            for (int i11 = 0; i11 < this.numLayer - 1; i11++) {
                this.minTreehash[i11] = -1;
            }
        } else {
            this.minTreehash = iArr2;
        }
        byte[] bArr8 = new byte[this.mdLength];
        byte[] bArr9 = new byte[this.mdLength];
        if (gMSSRootSigArr == null) {
            this.nextRootSig = new GMSSRootSig[(this.numLayer - 1)];
            for (int i12 = 0; i12 < this.numLayer - 1; i12++) {
                System.arraycopy(bArr[i12], 0, bArr8, 0, this.mdLength);
                this.gmssRandom.nextSeed(bArr8);
                byte[] nextSeed = this.gmssRandom.nextSeed(bArr8);
                this.nextRootSig[i12] = new GMSSRootSig(gMSSDigestProvider.get(), this.otsIndex[i12], this.heightOfTrees[i12 + 1]);
                this.nextRootSig[i12].initSign(nextSeed, bArr6[i12]);
            }
            return;
        }
        this.nextRootSig = gMSSRootSigArr;
    }

    public GMSSPrivateKeyParameters(byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][] bArr5, byte[][] bArr6, GMSSParameters gMSSParameters, GMSSDigestProvider gMSSDigestProvider) {
        this(null, bArr, bArr2, bArr3, bArr4, null, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, null, null, null, null, bArr5, null, bArr6, null, gMSSParameters, gMSSDigestProvider);
    }

    private void computeAuthPaths(int i) {
        byte[] leaf;
        int i2 = this.index[i];
        int i3 = this.heightOfTrees[i];
        int i4 = this.K[i];
        for (int i5 = 0; i5 < i3 - i4; i5++) {
            this.currentTreehash[i][i5].updateNextSeed(this.gmssRandom);
        }
        int heightOfPhi = heightOfPhi(i2);
        byte[] bArr = new byte[this.mdLength];
        byte[] nextSeed = this.gmssRandom.nextSeed(this.currentSeeds[i]);
        int i6 = (i2 >>> (heightOfPhi + 1)) & 1;
        byte[] bArr2 = new byte[this.mdLength];
        if (heightOfPhi < i3 - 1 && i6 == 0) {
            System.arraycopy(this.currentAuthPaths[i][heightOfPhi], 0, bArr2, 0, this.mdLength);
        }
        byte[] bArr3 = new byte[this.mdLength];
        if (heightOfPhi == 0) {
            if (i == this.numLayer - 1) {
                leaf = new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i]).getPublicKey();
            } else {
                byte[] bArr4 = new byte[this.mdLength];
                System.arraycopy(this.currentSeeds[i], 0, bArr4, 0, this.mdLength);
                this.gmssRandom.nextSeed(bArr4);
                leaf = this.upperLeaf[i].getLeaf();
                this.upperLeaf[i].initLeafCalc(bArr4);
            }
            System.arraycopy(leaf, 0, this.currentAuthPaths[i][0], 0, this.mdLength);
        } else {
            byte[] bArr5 = new byte[(this.mdLength << 1)];
            System.arraycopy(this.currentAuthPaths[i][heightOfPhi - 1], 0, bArr5, 0, this.mdLength);
            System.arraycopy(this.keep[i][(int) Math.floor((double) ((heightOfPhi - 1) / 2))], 0, bArr5, this.mdLength, this.mdLength);
            this.messDigestTrees.update(bArr5, 0, bArr5.length);
            this.currentAuthPaths[i][heightOfPhi] = new byte[this.messDigestTrees.getDigestSize()];
            this.messDigestTrees.doFinal(this.currentAuthPaths[i][heightOfPhi], 0);
            for (int i7 = 0; i7 < heightOfPhi; i7++) {
                if (i7 < i3 - i4) {
                    if (this.currentTreehash[i][i7].wasFinished()) {
                        System.arraycopy(this.currentTreehash[i][i7].getFirstNode(), 0, this.currentAuthPaths[i][i7], 0, this.mdLength);
                        this.currentTreehash[i][i7].destroy();
                    } else {
                        System.err.println("Treehash (" + i + Constants.ACCEPT_TIME_SEPARATOR_SP + i7 + ") not finished when needed in AuthPathComputation");
                    }
                }
                if (i7 < i3 - 1 && i7 >= i3 - i4 && this.currentRetain[i][i7 - (i3 - i4)].size() > 0) {
                    System.arraycopy(this.currentRetain[i][i7 - (i3 - i4)].lastElement(), 0, this.currentAuthPaths[i][i7], 0, this.mdLength);
                    this.currentRetain[i][i7 - (i3 - i4)].removeElementAt(this.currentRetain[i][i7 - (i3 - i4)].size() - 1);
                }
                if (i7 < i3 - i4 && ((1 << i7) * 3) + i2 < this.numLeafs[i]) {
                    this.currentTreehash[i][i7].initialize();
                }
            }
        }
        if (heightOfPhi < i3 - 1 && i6 == 0) {
            System.arraycopy(bArr2, 0, this.keep[i][(int) Math.floor((double) (heightOfPhi / 2))], 0, this.mdLength);
        }
        if (i == this.numLayer - 1) {
            for (int i8 = 1; i8 <= (i3 - i4) / 2; i8++) {
                int minTreehashIndex = getMinTreehashIndex(i);
                if (minTreehashIndex >= 0) {
                    try {
                        byte[] bArr6 = new byte[this.mdLength];
                        System.arraycopy(this.currentTreehash[i][minTreehashIndex].getSeedActive(), 0, bArr6, 0, this.mdLength);
                        this.currentTreehash[i][minTreehashIndex].update(this.gmssRandom, new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr6), this.digestProvider.get(), this.otsIndex[i]).getPublicKey());
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }
            }
            return;
        }
        this.minTreehash[i] = getMinTreehashIndex(i);
    }

    private int getMinTreehashIndex(int i) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.heightOfTrees[i] - this.K[i]; i3++) {
            if (this.currentTreehash[i][i3].wasInitialized() && !this.currentTreehash[i][i3].wasFinished()) {
                if (i2 == -1) {
                    i2 = i3;
                } else if (this.currentTreehash[i][i3].getLowestNodeHeight() < this.currentTreehash[i][i2].getLowestNodeHeight()) {
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    private int heightOfPhi(int i) {
        if (i == 0) {
            return -1;
        }
        int i2 = 0;
        int i3 = 1;
        while (i % i3 == 0) {
            i3 *= 2;
            i2++;
        }
        return i2 - 1;
    }

    private void nextKey(int i) {
        if (i == this.numLayer - 1) {
            int[] iArr = this.index;
            iArr[i] = iArr[i] + 1;
        }
        if (this.index[i] != this.numLeafs[i]) {
            updateKey(i);
        } else if (this.numLayer != 1) {
            nextTree(i);
            this.index[i] = 0;
        }
    }

    private void nextTree(int i) {
        if (i > 0) {
            int[] iArr = this.index;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
            int i3 = i;
            boolean z = true;
            do {
                i3--;
                if (this.index[i3] < this.numLeafs[i3]) {
                    z = false;
                }
                if (!z) {
                    break;
                }
            } while (i3 > 0);
            if (!z) {
                this.gmssRandom.nextSeed(this.currentSeeds[i]);
                this.nextRootSig[i - 1].updateSign();
                if (i > 1) {
                    this.nextNextLeaf[(i - 1) - 1] = this.nextNextLeaf[(i - 1) - 1].nextLeaf();
                }
                this.upperLeaf[i - 1] = this.upperLeaf[i - 1].nextLeaf();
                if (this.minTreehash[i - 1] >= 0) {
                    this.upperTreehashLeaf[i - 1] = this.upperTreehashLeaf[i - 1].nextLeaf();
                    try {
                        this.currentTreehash[i - 1][this.minTreehash[i - 1]].update(this.gmssRandom, this.upperTreehashLeaf[i - 1].getLeaf());
                        if (this.currentTreehash[i - 1][this.minTreehash[i - 1]].wasFinished()) {
                        }
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }
                updateNextNextAuthRoot(i);
                this.currentRootSig[i - 1] = this.nextRootSig[i - 1].getSig();
                for (int i4 = 0; i4 < this.heightOfTrees[i] - this.K[i]; i4++) {
                    this.currentTreehash[i][i4] = this.nextTreehash[i - 1][i4];
                    this.nextTreehash[i - 1][i4] = this.nextNextRoot[i - 1].getTreehash()[i4];
                }
                for (int i5 = 0; i5 < this.heightOfTrees[i]; i5++) {
                    System.arraycopy(this.nextAuthPaths[i - 1][i5], 0, this.currentAuthPaths[i][i5], 0, this.mdLength);
                    System.arraycopy(this.nextNextRoot[i - 1].getAuthPath()[i5], 0, this.nextAuthPaths[i - 1][i5], 0, this.mdLength);
                }
                for (int i6 = 0; i6 < this.K[i] - 1; i6++) {
                    this.currentRetain[i][i6] = this.nextRetain[i - 1][i6];
                    this.nextRetain[i - 1][i6] = this.nextNextRoot[i - 1].getRetain()[i6];
                }
                this.currentStack[i] = this.nextStack[i - 1];
                this.nextStack[i - 1] = this.nextNextRoot[i - 1].getStack();
                this.nextRoot[i - 1] = this.nextNextRoot[i - 1].getRoot();
                byte[] bArr = new byte[this.mdLength];
                byte[] bArr2 = new byte[this.mdLength];
                System.arraycopy(this.currentSeeds[i - 1], 0, bArr2, 0, this.mdLength);
                this.gmssRandom.nextSeed(bArr2);
                this.gmssRandom.nextSeed(bArr2);
                this.nextRootSig[i - 1].initSign(this.gmssRandom.nextSeed(bArr2), this.nextRoot[i - 1]);
                nextKey(i - 1);
            }
        }
    }

    private void updateKey(int i) {
        computeAuthPaths(i);
        if (i > 0) {
            if (i > 1) {
                this.nextNextLeaf[(i - 1) - 1] = this.nextNextLeaf[(i - 1) - 1].nextLeaf();
            }
            this.upperLeaf[i - 1] = this.upperLeaf[i - 1].nextLeaf();
            int floor = (int) Math.floor(((double) (getNumLeafs(i) * 2)) / ((double) (this.heightOfTrees[i - 1] - this.K[i - 1])));
            if (this.index[i] % floor == 1) {
                if (this.index[i] > 1 && this.minTreehash[i - 1] >= 0) {
                    try {
                        this.currentTreehash[i - 1][this.minTreehash[i - 1]].update(this.gmssRandom, this.upperTreehashLeaf[i - 1].getLeaf());
                        if (this.currentTreehash[i - 1][this.minTreehash[i - 1]].wasFinished()) {
                        }
                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }
                this.minTreehash[i - 1] = getMinTreehashIndex(i - 1);
                if (this.minTreehash[i - 1] >= 0) {
                    this.upperTreehashLeaf[i - 1] = new GMSSLeaf(this.digestProvider.get(), this.otsIndex[i - 1], floor, this.currentTreehash[i - 1][this.minTreehash[i - 1]].getSeedActive());
                    this.upperTreehashLeaf[i - 1] = this.upperTreehashLeaf[i - 1].nextLeaf();
                }
            } else if (this.minTreehash[i - 1] >= 0) {
                this.upperTreehashLeaf[i - 1] = this.upperTreehashLeaf[i - 1].nextLeaf();
            }
            this.nextRootSig[i - 1].updateSign();
            if (this.index[i] == 1) {
                this.nextNextRoot[i - 1].initialize(new Vector());
            }
            updateNextNextAuthRoot(i);
        }
    }

    private void updateNextNextAuthRoot(int i) {
        byte[] bArr = new byte[this.mdLength];
        byte[] nextSeed = this.gmssRandom.nextSeed(this.nextNextSeeds[i - 1]);
        if (i == this.numLayer - 1) {
            this.nextNextRoot[i - 1].update(this.nextNextSeeds[i - 1], new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i]).getPublicKey());
            return;
        }
        this.nextNextRoot[i - 1].update(this.nextNextSeeds[i - 1], this.nextNextLeaf[i - 1].getLeaf());
        this.nextNextLeaf[i - 1].initLeafCalc(this.nextNextSeeds[i - 1]);
    }

    public byte[][][] getCurrentAuthPaths() {
        return Arrays.clone(this.currentAuthPaths);
    }

    public byte[][] getCurrentSeeds() {
        return Arrays.clone(this.currentSeeds);
    }

    public int getIndex(int i) {
        return this.index[i];
    }

    public int[] getIndex() {
        return this.index;
    }

    public GMSSDigestProvider getName() {
        return this.digestProvider;
    }

    public int getNumLeafs(int i) {
        return this.numLeafs[i];
    }

    public byte[] getSubtreeRootSig(int i) {
        return this.currentRootSig[i];
    }

    public boolean isUsed() {
        return this.used;
    }

    public void markUsed() {
        this.used = true;
    }

    public GMSSPrivateKeyParameters nextKey() {
        GMSSPrivateKeyParameters gMSSPrivateKeyParameters = new GMSSPrivateKeyParameters(this);
        gMSSPrivateKeyParameters.nextKey(this.gmssPS.getNumOfLayers() - 1);
        return gMSSPrivateKeyParameters;
    }
}
