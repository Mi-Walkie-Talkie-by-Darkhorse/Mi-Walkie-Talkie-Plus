package org.bouncycastle.pqc.jcajce.spec;

import java.security.spec.KeySpec;
import java.util.Vector;
import org.bouncycastle.pqc.crypto.gmss.GMSSLeaf;
import org.bouncycastle.pqc.crypto.gmss.GMSSParameters;
import org.bouncycastle.pqc.crypto.gmss.GMSSRootCalc;
import org.bouncycastle.pqc.crypto.gmss.GMSSRootSig;
import org.bouncycastle.pqc.crypto.gmss.Treehash;
import org.bouncycastle.util.Arrays;

public class GMSSPrivateKeySpec implements KeySpec {
    private byte[][][] currentAuthPath;
    private Vector[][] currentRetain;
    private byte[][] currentRootSig;
    private byte[][] currentSeed;
    private Vector[] currentStack;
    private Treehash[][] currentTreehash;
    private GMSSParameters gmssPS;
    private int[] index;
    private byte[][][] keep;
    private int[] minTreehash;
    private byte[][][] nextAuthPath;
    private GMSSLeaf[] nextNextLeaf;
    private GMSSRootCalc[] nextNextRoot;
    private byte[][] nextNextSeed;
    private Vector[][] nextRetain;
    private byte[][] nextRoot;
    private GMSSRootSig[] nextRootSig;
    private Vector[] nextStack;
    private Treehash[][] nextTreehash;
    private GMSSLeaf[] upperLeaf;
    private GMSSLeaf[] upperTreehashLeaf;

    public GMSSPrivateKeySpec(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][][] bArr5, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters) {
        this.index = iArr;
        this.currentSeed = bArr;
        this.nextNextSeed = bArr2;
        this.currentAuthPath = bArr3;
        this.nextAuthPath = bArr4;
        this.currentTreehash = treehashArr;
        this.nextTreehash = treehashArr2;
        this.currentStack = vectorArr;
        this.nextStack = vectorArr2;
        this.currentRetain = vectorArr3;
        this.nextRetain = vectorArr4;
        this.keep = bArr5;
        this.nextNextLeaf = gMSSLeafArr;
        this.upperLeaf = gMSSLeafArr2;
        this.upperTreehashLeaf = gMSSLeafArr3;
        this.minTreehash = iArr2;
        this.nextRoot = bArr6;
        this.nextNextRoot = gMSSRootCalcArr;
        this.currentRootSig = bArr7;
        this.nextRootSig = gMSSRootSigArr;
        this.gmssPS = gMSSParameters;
    }

    private static Vector[] clone(Vector[] vectorArr) {
        if (vectorArr == null) {
            return null;
        }
        Vector[] vectorArr2 = new Vector[vectorArr.length];
        for (int i = 0; i != vectorArr.length; i++) {
            vectorArr2[i] = new Vector(vectorArr[i]);
        }
        return vectorArr2;
    }

    private static GMSSLeaf[] clone(GMSSLeaf[] gMSSLeafArr) {
        if (gMSSLeafArr == null) {
            return null;
        }
        GMSSLeaf[] gMSSLeafArr2 = new GMSSLeaf[gMSSLeafArr.length];
        System.arraycopy(gMSSLeafArr, 0, gMSSLeafArr2, 0, gMSSLeafArr.length);
        return gMSSLeafArr2;
    }

    private static GMSSRootCalc[] clone(GMSSRootCalc[] gMSSRootCalcArr) {
        if (gMSSRootCalcArr == null) {
            return null;
        }
        GMSSRootCalc[] gMSSRootCalcArr2 = new GMSSRootCalc[gMSSRootCalcArr.length];
        System.arraycopy(gMSSRootCalcArr, 0, gMSSRootCalcArr2, 0, gMSSRootCalcArr.length);
        return gMSSRootCalcArr2;
    }

    private static GMSSRootSig[] clone(GMSSRootSig[] gMSSRootSigArr) {
        if (gMSSRootSigArr == null) {
            return null;
        }
        GMSSRootSig[] gMSSRootSigArr2 = new GMSSRootSig[gMSSRootSigArr.length];
        System.arraycopy(gMSSRootSigArr, 0, gMSSRootSigArr2, 0, gMSSRootSigArr.length);
        return gMSSRootSigArr2;
    }

    private static Treehash[] clone(Treehash[] treehashArr) {
        if (treehashArr == null) {
            return null;
        }
        Treehash[] treehashArr2 = new Treehash[treehashArr.length];
        System.arraycopy(treehashArr, 0, treehashArr2, 0, treehashArr.length);
        return treehashArr2;
    }

    private static byte[][] clone(byte[][] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[][] bArr2 = new byte[bArr.length][];
        for (int i = 0; i != bArr.length; i++) {
            bArr2[i] = Arrays.clone(bArr[i]);
        }
        return bArr2;
    }

    private static Vector[][] clone(Vector[][] vectorArr) {
        if (vectorArr == null) {
            return null;
        }
        Vector[][] vectorArr2 = new Vector[vectorArr.length][];
        for (int i = 0; i != vectorArr.length; i++) {
            vectorArr2[i] = clone(vectorArr[i]);
        }
        return vectorArr2;
    }

    private static Treehash[][] clone(Treehash[][] treehashArr) {
        if (treehashArr == null) {
            return null;
        }
        Treehash[][] treehashArr2 = new Treehash[treehashArr.length][];
        for (int i = 0; i != treehashArr.length; i++) {
            treehashArr2[i] = clone(treehashArr[i]);
        }
        return treehashArr2;
    }

    private static byte[][][] clone(byte[][][] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[][][] bArr2 = new byte[bArr.length][][];
        for (int i = 0; i != bArr.length; i++) {
            bArr2[i] = clone(bArr[i]);
        }
        return bArr2;
    }

    public byte[][][] getCurrentAuthPath() {
        return clone(this.currentAuthPath);
    }

    public Vector[][] getCurrentRetain() {
        return clone(this.currentRetain);
    }

    public byte[][] getCurrentRootSig() {
        return clone(this.currentRootSig);
    }

    public byte[][] getCurrentSeed() {
        return clone(this.currentSeed);
    }

    public Vector[] getCurrentStack() {
        return clone(this.currentStack);
    }

    public Treehash[][] getCurrentTreehash() {
        return clone(this.currentTreehash);
    }

    public GMSSParameters getGmssPS() {
        return this.gmssPS;
    }

    public int[] getIndex() {
        return Arrays.clone(this.index);
    }

    public byte[][][] getKeep() {
        return clone(this.keep);
    }

    public int[] getMinTreehash() {
        return Arrays.clone(this.minTreehash);
    }

    public byte[][][] getNextAuthPath() {
        return clone(this.nextAuthPath);
    }

    public GMSSLeaf[] getNextNextLeaf() {
        return clone(this.nextNextLeaf);
    }

    public GMSSRootCalc[] getNextNextRoot() {
        return clone(this.nextNextRoot);
    }

    public byte[][] getNextNextSeed() {
        return clone(this.nextNextSeed);
    }

    public Vector[][] getNextRetain() {
        return clone(this.nextRetain);
    }

    public byte[][] getNextRoot() {
        return clone(this.nextRoot);
    }

    public GMSSRootSig[] getNextRootSig() {
        return clone(this.nextRootSig);
    }

    public Vector[] getNextStack() {
        return clone(this.nextStack);
    }

    public Treehash[][] getNextTreehash() {
        return clone(this.nextTreehash);
    }

    public GMSSLeaf[] getUpperLeaf() {
        return clone(this.upperLeaf);
    }

    public GMSSLeaf[] getUpperTreehashLeaf() {
        return clone(this.upperTreehashLeaf);
    }
}
