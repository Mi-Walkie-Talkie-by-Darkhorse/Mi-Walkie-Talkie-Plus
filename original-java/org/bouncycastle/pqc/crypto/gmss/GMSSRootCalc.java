package org.bouncycastle.pqc.crypto.gmss;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.lang.reflect.Array;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.encoders.Hex;

public class GMSSRootCalc {
    private byte[][] AuthPath;
    private int K;
    private GMSSDigestProvider digestProvider;
    private int heightOfNextSeed;
    private Vector heightOfNodes;
    private int heightOfTree;
    private int[] index;
    private int indexForNextSeed;
    private boolean isFinished;
    private boolean isInitialized;
    private int mdLength;
    private Digest messDigestTree;
    private Vector[] retain;
    private byte[] root;
    private Vector tailStack;
    private Treehash[] treehash;

    public GMSSRootCalc(int i, int i2, GMSSDigestProvider gMSSDigestProvider) {
        this.heightOfTree = i;
        this.digestProvider = gMSSDigestProvider;
        this.messDigestTree = gMSSDigestProvider.get();
        this.mdLength = this.messDigestTree.getDigestSize();
        this.K = i2;
        this.index = new int[i];
        this.AuthPath = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{i, this.mdLength});
        this.root = new byte[this.mdLength];
        this.retain = new Vector[(this.K - 1)];
        for (int i3 = 0; i3 < i2 - 1; i3++) {
            this.retain[i3] = new Vector();
        }
    }

    public GMSSRootCalc(Digest digest, byte[][] bArr, int[] iArr, Treehash[] treehashArr, Vector[] vectorArr) {
        this.messDigestTree = this.digestProvider.get();
        this.digestProvider = this.digestProvider;
        this.heightOfTree = iArr[0];
        this.mdLength = iArr[1];
        this.K = iArr[2];
        this.indexForNextSeed = iArr[3];
        this.heightOfNextSeed = iArr[4];
        if (iArr[5] == 1) {
            this.isFinished = true;
        } else {
            this.isFinished = false;
        }
        if (iArr[6] == 1) {
            this.isInitialized = true;
        } else {
            this.isInitialized = false;
        }
        int i = iArr[7];
        this.index = new int[this.heightOfTree];
        for (int i2 = 0; i2 < this.heightOfTree; i2++) {
            this.index[i2] = iArr[i2 + 8];
        }
        this.heightOfNodes = new Vector();
        for (int i3 = 0; i3 < i; i3++) {
            this.heightOfNodes.addElement(Integers.valueOf(iArr[this.heightOfTree + 8 + i3]));
        }
        this.root = bArr[0];
        this.AuthPath = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.heightOfTree, this.mdLength});
        for (int i4 = 0; i4 < this.heightOfTree; i4++) {
            this.AuthPath[i4] = bArr[i4 + 1];
        }
        this.tailStack = new Vector();
        for (int i5 = 0; i5 < i; i5++) {
            this.tailStack.addElement(bArr[this.heightOfTree + 1 + i5]);
        }
        this.treehash = GMSSUtils.clone(treehashArr);
        this.retain = GMSSUtils.clone(vectorArr);
    }

    public byte[][] getAuthPath() {
        return GMSSUtils.clone(this.AuthPath);
    }

    public Vector[] getRetain() {
        return GMSSUtils.clone(this.retain);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.root);
    }

    public Vector getStack() {
        Vector vector = new Vector();
        Enumeration elements = this.tailStack.elements();
        while (elements.hasMoreElements()) {
            vector.addElement(elements.nextElement());
        }
        return vector;
    }

    public byte[][] getStatByte() {
        int size = this.tailStack == null ? 0 : this.tailStack.size();
        byte[][] bArr = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.heightOfTree + 1 + size, 64});
        bArr[0] = this.root;
        for (int i = 0; i < this.heightOfTree; i++) {
            bArr[i + 1] = this.AuthPath[i];
        }
        for (int i2 = 0; i2 < size; i2++) {
            bArr[this.heightOfTree + 1 + i2] = (byte[]) this.tailStack.elementAt(i2);
        }
        return bArr;
    }

    public int[] getStatInt() {
        int size = this.tailStack == null ? 0 : this.tailStack.size();
        int[] iArr = new int[(this.heightOfTree + 8 + size)];
        iArr[0] = this.heightOfTree;
        iArr[1] = this.mdLength;
        iArr[2] = this.K;
        iArr[3] = this.indexForNextSeed;
        iArr[4] = this.heightOfNextSeed;
        if (this.isFinished) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        if (this.isInitialized) {
            iArr[6] = 1;
        } else {
            iArr[6] = 0;
        }
        iArr[7] = size;
        for (int i = 0; i < this.heightOfTree; i++) {
            iArr[i + 8] = this.index[i];
        }
        for (int i2 = 0; i2 < size; i2++) {
            iArr[this.heightOfTree + 8 + i2] = ((Integer) this.heightOfNodes.elementAt(i2)).intValue();
        }
        return iArr;
    }

    public Treehash[] getTreehash() {
        return GMSSUtils.clone(this.treehash);
    }

    public void initialize(Vector vector) {
        this.treehash = new Treehash[(this.heightOfTree - this.K)];
        for (int i = 0; i < this.heightOfTree - this.K; i++) {
            this.treehash[i] = new Treehash(vector, i, this.digestProvider.get());
        }
        this.index = new int[this.heightOfTree];
        this.AuthPath = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.heightOfTree, this.mdLength});
        this.root = new byte[this.mdLength];
        this.tailStack = new Vector();
        this.heightOfNodes = new Vector();
        this.isInitialized = true;
        this.isFinished = false;
        for (int i2 = 0; i2 < this.heightOfTree; i2++) {
            this.index[i2] = -1;
        }
        this.retain = new Vector[(this.K - 1)];
        for (int i3 = 0; i3 < this.K - 1; i3++) {
            this.retain[i3] = new Vector();
        }
        this.indexForNextSeed = 3;
        this.heightOfNextSeed = 0;
    }

    public void initializeTreehashSeed(byte[] bArr, int i) {
        this.treehash[i].initializeSeed(bArr);
    }

    public String toString() {
        String str = "";
        int size = this.tailStack == null ? 0 : this.tailStack.size();
        String str2 = str;
        for (int i = 0; i < this.heightOfTree + 8 + size; i++) {
            str2 = str2 + getStatInt()[i] + Token.SEPARATOR;
        }
        for (int i2 = 0; i2 < this.heightOfTree + 1 + size; i2++) {
            str2 = str2 + new String(Hex.encode(getStatByte()[i2])) + Token.SEPARATOR;
        }
        return str2 + "  " + this.digestProvider.get().getDigestSize();
    }

    public void update(byte[] bArr) {
        if (this.isFinished) {
            System.out.print("Too much updates for Tree!!");
        } else if (!this.isInitialized) {
            System.err.println("GMSSRootCalc not initialized!");
        } else {
            int[] iArr = this.index;
            iArr[0] = iArr[0] + 1;
            if (this.index[0] == 1) {
                System.arraycopy(bArr, 0, this.AuthPath[0], 0, this.mdLength);
            } else if (this.index[0] == 3 && this.heightOfTree > this.K) {
                this.treehash[0].setFirstNode(bArr);
            }
            if ((this.index[0] - 3) % 2 == 0 && this.index[0] >= 3 && this.heightOfTree == this.K) {
                this.retain[0].insertElementAt(bArr, 0);
            }
            if (this.index[0] == 0) {
                this.tailStack.addElement(bArr);
                this.heightOfNodes.addElement(Integers.valueOf(0));
                return;
            }
            byte[] bArr2 = new byte[this.mdLength];
            byte[] bArr3 = new byte[(this.mdLength << 1)];
            System.arraycopy(bArr, 0, bArr2, 0, this.mdLength);
            int i = 0;
            byte[] bArr4 = bArr2;
            while (this.tailStack.size() > 0 && i == ((Integer) this.heightOfNodes.lastElement()).intValue()) {
                System.arraycopy(this.tailStack.lastElement(), 0, bArr3, 0, this.mdLength);
                this.tailStack.removeElementAt(this.tailStack.size() - 1);
                this.heightOfNodes.removeElementAt(this.heightOfNodes.size() - 1);
                System.arraycopy(bArr4, 0, bArr3, this.mdLength, this.mdLength);
                this.messDigestTree.update(bArr3, 0, bArr3.length);
                bArr4 = new byte[this.messDigestTree.getDigestSize()];
                this.messDigestTree.doFinal(bArr4, 0);
                int i2 = i + 1;
                if (i2 < this.heightOfTree) {
                    int[] iArr2 = this.index;
                    iArr2[i2] = iArr2[i2] + 1;
                    if (this.index[i2] == 1) {
                        System.arraycopy(bArr4, 0, this.AuthPath[i2], 0, this.mdLength);
                    }
                    if (i2 >= this.heightOfTree - this.K) {
                        if (i2 == 0) {
                            System.out.println("M���P");
                        }
                        if ((this.index[i2] - 3) % 2 == 0 && this.index[i2] >= 3) {
                            this.retain[i2 - (this.heightOfTree - this.K)].insertElementAt(bArr4, 0);
                            i = i2;
                        }
                    } else if (this.index[i2] == 3) {
                        this.treehash[i2].setFirstNode(bArr4);
                        i = i2;
                    }
                }
                i = i2;
            }
            this.tailStack.addElement(bArr4);
            this.heightOfNodes.addElement(Integers.valueOf(i));
            if (i == this.heightOfTree) {
                this.isFinished = true;
                this.isInitialized = false;
                this.root = (byte[]) this.tailStack.lastElement();
            }
        }
    }

    public void update(byte[] bArr, byte[] bArr2) {
        if (this.heightOfNextSeed < this.heightOfTree - this.K && this.indexForNextSeed - 2 == this.index[0]) {
            initializeTreehashSeed(bArr, this.heightOfNextSeed);
            this.heightOfNextSeed++;
            this.indexForNextSeed *= 2;
        }
        update(bArr2);
    }

    public boolean wasFinished() {
        return this.isFinished;
    }

    public boolean wasInitialized() {
        return this.isInitialized;
    }
}
