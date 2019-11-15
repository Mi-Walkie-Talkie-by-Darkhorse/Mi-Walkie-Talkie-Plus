package org.bouncycastle.pqc.crypto.gmss;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSVerify;
import org.bouncycastle.pqc.crypto.gmss.util.WinternitzOTSignature;

public class GMSSKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    public static final String OID = "1.3.6.1.4.1.8301.3.1.3.3";
    private int[] K;
    private byte[][] currentRootSigs;
    private byte[][] currentSeeds;
    private GMSSDigestProvider digestProvider;
    private GMSSParameters gmssPS;
    private GMSSKeyGenerationParameters gmssParams;
    private GMSSRandom gmssRandom;
    private int[] heightOfTrees;
    private boolean initialized = false;
    private int mdLength;
    private Digest messDigestTree;
    private byte[][] nextNextSeeds;
    private int numLayer;
    private int[] otsIndex;

    public GMSSKeyPairGenerator(GMSSDigestProvider gMSSDigestProvider) {
        this.digestProvider = gMSSDigestProvider;
        this.messDigestTree = gMSSDigestProvider.get();
        this.mdLength = this.messDigestTree.getDigestSize();
        this.gmssRandom = new GMSSRandom(this.messDigestTree);
    }

    private AsymmetricCipherKeyPair genKeyPair() {
        if (!this.initialized) {
            initializeDefault();
        }
        byte[][][] bArr = new byte[this.numLayer][][];
        byte[][][] bArr2 = new byte[(this.numLayer - 1)][][];
        Treehash[][] treehashArr = new Treehash[this.numLayer][];
        Treehash[][] treehashArr2 = new Treehash[(this.numLayer - 1)][];
        Vector[] vectorArr = new Vector[this.numLayer];
        Vector[] vectorArr2 = new Vector[(this.numLayer - 1)];
        Vector[][] vectorArr3 = new Vector[this.numLayer][];
        Vector[][] vectorArr4 = new Vector[(this.numLayer - 1)][];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.numLayer) {
                break;
            }
            bArr[i2] = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.heightOfTrees[i2], this.mdLength});
            treehashArr[i2] = new Treehash[(this.heightOfTrees[i2] - this.K[i2])];
            if (i2 > 0) {
                bArr2[i2 - 1] = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.heightOfTrees[i2], this.mdLength});
                treehashArr2[i2 - 1] = new Treehash[(this.heightOfTrees[i2] - this.K[i2])];
            }
            vectorArr[i2] = new Vector();
            if (i2 > 0) {
                vectorArr2[i2 - 1] = new Vector();
            }
            i = i2 + 1;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.numLayer, this.mdLength});
        byte[][] bArr4 = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.numLayer - 1, this.mdLength});
        byte[][] bArr5 = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.numLayer, this.mdLength});
        for (int i3 = 0; i3 < this.numLayer; i3++) {
            System.arraycopy(this.currentSeeds[i3], 0, bArr5[i3], 0, this.mdLength);
        }
        this.currentRootSigs = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.numLayer - 1, this.mdLength});
        for (int i4 = this.numLayer - 1; i4 >= 0; i4--) {
            GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i4], this.K[i4], this.digestProvider);
            try {
                if (i4 == this.numLayer - 1) {
                    gMSSRootCalc = generateCurrentAuthpathAndRoot(null, vectorArr[i4], bArr5[i4], i4);
                } else {
                    gMSSRootCalc = generateCurrentAuthpathAndRoot(bArr3[i4 + 1], vectorArr[i4], bArr5[i4], i4);
                }
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
            for (int i5 = 0; i5 < this.heightOfTrees[i4]; i5++) {
                System.arraycopy(gMSSRootCalc.getAuthPath()[i5], 0, bArr[i4][i5], 0, this.mdLength);
            }
            vectorArr3[i4] = gMSSRootCalc.getRetain();
            treehashArr[i4] = gMSSRootCalc.getTreehash();
            System.arraycopy(gMSSRootCalc.getRoot(), 0, bArr3[i4], 0, this.mdLength);
        }
        for (int i6 = this.numLayer - 2; i6 >= 0; i6--) {
            GMSSRootCalc generateNextAuthpathAndRoot = generateNextAuthpathAndRoot(vectorArr2[i6], bArr5[i6 + 1], i6 + 1);
            for (int i7 = 0; i7 < this.heightOfTrees[i6 + 1]; i7++) {
                System.arraycopy(generateNextAuthpathAndRoot.getAuthPath()[i7], 0, bArr2[i6][i7], 0, this.mdLength);
            }
            vectorArr4[i6] = generateNextAuthpathAndRoot.getRetain();
            treehashArr2[i6] = generateNextAuthpathAndRoot.getTreehash();
            System.arraycopy(generateNextAuthpathAndRoot.getRoot(), 0, bArr4[i6], 0, this.mdLength);
            System.arraycopy(bArr5[i6 + 1], 0, this.nextNextSeeds[i6], 0, this.mdLength);
        }
        GMSSPublicKeyParameters gMSSPublicKeyParameters = new GMSSPublicKeyParameters(bArr3[0], this.gmssPS);
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) gMSSPublicKeyParameters, (AsymmetricKeyParameter) new GMSSPrivateKeyParameters(this.currentSeeds, this.nextNextSeeds, bArr, bArr2, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, bArr4, this.currentRootSigs, this.gmssPS, this.digestProvider));
    }

    private GMSSRootCalc generateCurrentAuthpathAndRoot(byte[] bArr, Vector vector, byte[] bArr2, int i) {
        byte[] Verify;
        byte[] bArr3 = new byte[this.mdLength];
        byte[] bArr4 = new byte[this.mdLength];
        byte[] nextSeed = this.gmssRandom.nextSeed(bArr2);
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i], this.K[i], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        if (i == this.numLayer - 1) {
            Verify = new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i]).getPublicKey();
        } else {
            this.currentRootSigs[i] = new WinternitzOTSignature(nextSeed, this.digestProvider.get(), this.otsIndex[i]).getSignature(bArr);
            Verify = new WinternitzOTSVerify(this.digestProvider.get(), this.otsIndex[i]).Verify(bArr, this.currentRootSigs[i]);
        }
        gMSSRootCalc.update(Verify);
        int i2 = 3;
        int i3 = 0;
        for (int i4 = 1; i4 < (1 << this.heightOfTrees[i]); i4++) {
            if (i4 == i2 && i3 < this.heightOfTrees[i] - this.K[i]) {
                gMSSRootCalc.initializeTreehashSeed(bArr2, i3);
                i2 *= 2;
                i3++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr2), this.digestProvider.get(), this.otsIndex[i]).getPublicKey());
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private GMSSRootCalc generateNextAuthpathAndRoot(Vector vector, byte[] bArr, int i) {
        byte[] bArr2 = new byte[this.numLayer];
        GMSSRootCalc gMSSRootCalc = new GMSSRootCalc(this.heightOfTrees[i], this.K[i], this.digestProvider);
        gMSSRootCalc.initialize(vector);
        int i2 = 3;
        int i3 = 0;
        for (int i4 = 0; i4 < (1 << this.heightOfTrees[i]); i4++) {
            if (i4 == i2 && i3 < this.heightOfTrees[i] - this.K[i]) {
                gMSSRootCalc.initializeTreehashSeed(bArr, i3);
                i2 *= 2;
                i3++;
            }
            gMSSRootCalc.update(new WinternitzOTSignature(this.gmssRandom.nextSeed(bArr), this.digestProvider.get(), this.otsIndex[i]).getPublicKey());
        }
        if (gMSSRootCalc.wasFinished()) {
            return gMSSRootCalc;
        }
        System.err.println("N�chster Baum noch nicht fertig konstruiert!!!");
        return null;
    }

    private void initializeDefault() {
        int[] iArr = {10, 10, 10, 10};
        initialize(new GMSSKeyGenerationParameters(new SecureRandom(), new GMSSParameters(iArr.length, iArr, new int[]{3, 3, 3, 3}, new int[]{2, 2, 2, 2})));
    }

    public AsymmetricCipherKeyPair generateKeyPair() {
        return genKeyPair();
    }

    public void init(KeyGenerationParameters keyGenerationParameters) {
        initialize(keyGenerationParameters);
    }

    public void initialize(int i, SecureRandom secureRandom) {
        GMSSKeyGenerationParameters gMSSKeyGenerationParameters;
        if (i <= 10) {
            int[] iArr = {10};
            gMSSKeyGenerationParameters = new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(iArr.length, iArr, new int[]{3}, new int[]{2}));
        } else if (i <= 20) {
            int[] iArr2 = {10, 10};
            gMSSKeyGenerationParameters = new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(iArr2.length, iArr2, new int[]{5, 4}, new int[]{2, 2}));
        } else {
            int[] iArr3 = {10, 10, 10, 10};
            gMSSKeyGenerationParameters = new GMSSKeyGenerationParameters(secureRandom, new GMSSParameters(iArr3.length, iArr3, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2}));
        }
        initialize(gMSSKeyGenerationParameters);
    }

    public void initialize(KeyGenerationParameters keyGenerationParameters) {
        this.gmssParams = (GMSSKeyGenerationParameters) keyGenerationParameters;
        this.gmssPS = new GMSSParameters(this.gmssParams.getParameters().getNumOfLayers(), this.gmssParams.getParameters().getHeightOfTrees(), this.gmssParams.getParameters().getWinternitzParameter(), this.gmssParams.getParameters().getK());
        this.numLayer = this.gmssPS.getNumOfLayers();
        this.heightOfTrees = this.gmssPS.getHeightOfTrees();
        this.otsIndex = this.gmssPS.getWinternitzParameter();
        this.K = this.gmssPS.getK();
        this.currentSeeds = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.numLayer, this.mdLength});
        this.nextNextSeeds = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{this.numLayer - 1, this.mdLength});
        SecureRandom secureRandom = new SecureRandom();
        for (int i = 0; i < this.numLayer; i++) {
            secureRandom.nextBytes(this.currentSeeds[i]);
            this.gmssRandom.nextSeed(this.currentSeeds[i]);
        }
        this.initialized = true;
    }
}
