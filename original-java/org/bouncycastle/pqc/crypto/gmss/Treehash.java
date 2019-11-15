package org.bouncycastle.pqc.crypto.gmss;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.lang.reflect.Array;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.encoders.Hex;

public class Treehash {
    private byte[] firstNode;
    private int firstNodeHeight;
    private Vector heightOfNodes;
    private boolean isFinished;
    private boolean isInitialized;
    private int maxHeight;
    private Digest messDigestTree;
    private byte[] seedActive;
    private boolean seedInitialized;
    private byte[] seedNext;
    private int tailLength;
    private Vector tailStack;

    public Treehash(Vector vector, int i, Digest digest) {
        this.tailStack = vector;
        this.maxHeight = i;
        this.firstNode = null;
        this.isInitialized = false;
        this.isFinished = false;
        this.seedInitialized = false;
        this.messDigestTree = digest;
        this.seedNext = new byte[this.messDigestTree.getDigestSize()];
        this.seedActive = new byte[this.messDigestTree.getDigestSize()];
    }

    public Treehash(Digest digest, byte[][] bArr, int[] iArr) {
        this.messDigestTree = digest;
        this.maxHeight = iArr[0];
        this.tailLength = iArr[1];
        this.firstNodeHeight = iArr[2];
        if (iArr[3] == 1) {
            this.isFinished = true;
        } else {
            this.isFinished = false;
        }
        if (iArr[4] == 1) {
            this.isInitialized = true;
        } else {
            this.isInitialized = false;
        }
        if (iArr[5] == 1) {
            this.seedInitialized = true;
        } else {
            this.seedInitialized = false;
        }
        this.heightOfNodes = new Vector();
        for (int i = 0; i < this.tailLength; i++) {
            this.heightOfNodes.addElement(Integers.valueOf(iArr[i + 6]));
        }
        this.firstNode = bArr[0];
        this.seedActive = bArr[1];
        this.seedNext = bArr[2];
        this.tailStack = new Vector();
        for (int i2 = 0; i2 < this.tailLength; i2++) {
            this.tailStack.addElement(bArr[i2 + 3]);
        }
    }

    public void destroy() {
        this.isInitialized = false;
        this.isFinished = false;
        this.firstNode = null;
        this.tailLength = 0;
        this.firstNodeHeight = -1;
    }

    public byte[] getFirstNode() {
        return this.firstNode;
    }

    public int getFirstNodeHeight() {
        return this.firstNode == null ? this.maxHeight : this.firstNodeHeight;
    }

    public int getLowestNodeHeight() {
        return this.firstNode == null ? this.maxHeight : this.tailLength == 0 ? this.firstNodeHeight : Math.min(this.firstNodeHeight, ((Integer) this.heightOfNodes.lastElement()).intValue());
    }

    public byte[] getSeedActive() {
        return this.seedActive;
    }

    public byte[][] getStatByte() {
        int i = 0;
        byte[][] bArr = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.tailLength + 3, this.messDigestTree.getDigestSize()});
        bArr[0] = this.firstNode;
        bArr[1] = this.seedActive;
        bArr[2] = this.seedNext;
        while (true) {
            int i2 = i;
            if (i2 >= this.tailLength) {
                return bArr;
            }
            bArr[i2 + 3] = (byte[]) this.tailStack.elementAt(i2);
            i = i2 + 1;
        }
    }

    public int[] getStatInt() {
        int i = 0;
        int[] iArr = new int[(this.tailLength + 6)];
        iArr[0] = this.maxHeight;
        iArr[1] = this.tailLength;
        iArr[2] = this.firstNodeHeight;
        if (this.isFinished) {
            iArr[3] = 1;
        } else {
            iArr[3] = 0;
        }
        if (this.isInitialized) {
            iArr[4] = 1;
        } else {
            iArr[4] = 0;
        }
        if (this.seedInitialized) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        while (true) {
            int i2 = i;
            if (i2 >= this.tailLength) {
                return iArr;
            }
            iArr[i2 + 6] = ((Integer) this.heightOfNodes.elementAt(i2)).intValue();
            i = i2 + 1;
        }
    }

    public Vector getTailStack() {
        return this.tailStack;
    }

    public void initialize() {
        if (!this.seedInitialized) {
            System.err.println("Seed " + this.maxHeight + " not initialized");
            return;
        }
        this.heightOfNodes = new Vector();
        this.tailLength = 0;
        this.firstNode = null;
        this.firstNodeHeight = -1;
        this.isInitialized = true;
        System.arraycopy(this.seedNext, 0, this.seedActive, 0, this.messDigestTree.getDigestSize());
    }

    public void initializeSeed(byte[] bArr) {
        System.arraycopy(bArr, 0, this.seedNext, 0, this.messDigestTree.getDigestSize());
        this.seedInitialized = true;
    }

    public void setFirstNode(byte[] bArr) {
        if (!this.isInitialized) {
            initialize();
        }
        this.firstNode = bArr;
        this.firstNodeHeight = this.maxHeight;
        this.isFinished = true;
    }

    public String toString() {
        String str;
        String str2 = "Treehash    : ";
        for (int i = 0; i < this.tailLength + 6; i++) {
            str2 = str + getStatInt()[i] + Token.SEPARATOR;
        }
        for (int i2 = 0; i2 < this.tailLength + 3; i2++) {
            str = getStatByte()[i2] != null ? str + new String(Hex.encode(getStatByte()[i2])) + Token.SEPARATOR : str + "null ";
        }
        return str + "  " + this.messDigestTree.getDigestSize();
    }

    public void update(GMSSRandom gMSSRandom, byte[] bArr) {
        if (this.isFinished) {
            System.err.println("No more update possible for treehash instance!");
        } else if (!this.isInitialized) {
            System.err.println("Treehash instance not initialized before update");
        } else {
            byte[] bArr2 = new byte[this.messDigestTree.getDigestSize()];
            gMSSRandom.nextSeed(this.seedActive);
            if (this.firstNode == null) {
                this.firstNode = bArr;
                this.firstNodeHeight = 0;
            } else {
                int i = 0;
                while (this.tailLength > 0 && i == ((Integer) this.heightOfNodes.lastElement()).intValue()) {
                    byte[] bArr3 = new byte[(this.messDigestTree.getDigestSize() << 1)];
                    System.arraycopy(this.tailStack.lastElement(), 0, bArr3, 0, this.messDigestTree.getDigestSize());
                    this.tailStack.removeElementAt(this.tailStack.size() - 1);
                    this.heightOfNodes.removeElementAt(this.heightOfNodes.size() - 1);
                    System.arraycopy(bArr, 0, bArr3, this.messDigestTree.getDigestSize(), this.messDigestTree.getDigestSize());
                    this.messDigestTree.update(bArr3, 0, bArr3.length);
                    bArr = new byte[this.messDigestTree.getDigestSize()];
                    this.messDigestTree.doFinal(bArr, 0);
                    int i2 = i + 1;
                    this.tailLength--;
                    i = i2;
                }
                this.tailStack.addElement(bArr);
                this.heightOfNodes.addElement(Integers.valueOf(i));
                this.tailLength++;
                if (((Integer) this.heightOfNodes.lastElement()).intValue() == this.firstNodeHeight) {
                    byte[] bArr4 = new byte[(this.messDigestTree.getDigestSize() << 1)];
                    System.arraycopy(this.firstNode, 0, bArr4, 0, this.messDigestTree.getDigestSize());
                    System.arraycopy(this.tailStack.lastElement(), 0, bArr4, this.messDigestTree.getDigestSize(), this.messDigestTree.getDigestSize());
                    this.tailStack.removeElementAt(this.tailStack.size() - 1);
                    this.heightOfNodes.removeElementAt(this.heightOfNodes.size() - 1);
                    this.messDigestTree.update(bArr4, 0, bArr4.length);
                    this.firstNode = new byte[this.messDigestTree.getDigestSize()];
                    this.messDigestTree.doFinal(this.firstNode, 0);
                    this.firstNodeHeight++;
                    this.tailLength = 0;
                }
            }
            if (this.firstNodeHeight == this.maxHeight) {
                this.isFinished = true;
            }
        }
    }

    public void updateNextSeed(GMSSRandom gMSSRandom) {
        gMSSRandom.nextSeed(this.seedNext);
    }

    public boolean wasFinished() {
        return this.isFinished;
    }

    public boolean wasInitialized() {
        return this.isInitialized;
    }
}
