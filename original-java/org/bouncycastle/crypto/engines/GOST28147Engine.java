package org.bouncycastle.crypto.engines;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import java.util.Hashtable;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithSBox;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class GOST28147Engine implements BlockCipher {
    protected static final int BLOCK_SIZE = 8;
    private static byte[] DSbox_A = {10, 4, 5, 6, 8, 1, 3, 7, HttpConstants.CR, 12, 14, 0, 9, 2, 11, 15, 5, 15, 4, 0, 2, HttpConstants.CR, 11, 9, 1, 7, 6, 3, 12, 14, 10, 8, 7, 15, 12, 14, 9, 4, 1, 0, 3, 11, 5, 2, 6, 10, 8, HttpConstants.CR, 4, 10, 7, 12, 0, 15, 2, 8, 14, 1, 6, 5, HttpConstants.CR, 11, 9, 3, 7, 6, 4, 11, 9, 12, 2, 10, 1, 8, 0, 14, 15, HttpConstants.CR, 3, 5, 7, 6, 2, 4, HttpConstants.CR, 9, 15, 0, 10, 1, 5, 11, 8, 14, 12, 3, HttpConstants.CR, 14, 4, 1, 7, 0, 5, 10, 3, 12, 8, 15, 6, 2, 9, 11, 1, 3, 10, 9, 5, 11, 4, 15, 8, 6, 7, 14, HttpConstants.CR, 0, 2, 12};
    private static byte[] DSbox_Test = {4, 10, 9, 2, HttpConstants.CR, 8, 0, 14, 6, 11, 1, 12, 7, 15, 5, 3, 14, 11, 4, 12, 6, HttpConstants.CR, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, HttpConstants.CR, 10, 3, 4, 2, 14, 15, 12, 7, 6, 0, 9, 11, 7, HttpConstants.CR, 10, 1, 0, 8, 9, 15, 14, 4, 6, 12, 11, 2, 5, 3, 6, 12, 7, 1, 5, 15, HttpConstants.CR, 8, 4, 10, 9, 14, 0, 3, 11, 2, 4, 11, 10, 0, 7, 2, 1, HttpConstants.CR, 3, 6, 8, 5, 9, 12, 15, 14, HttpConstants.CR, 11, 4, 1, 3, 15, 5, 9, 0, 10, 14, 7, 6, 8, 2, 12, 1, 15, HttpConstants.CR, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, 11, 8, 12};
    private static byte[] ESbox_A = {9, 6, 3, 2, 8, 11, 1, 7, 10, 4, 14, 15, 12, 0, HttpConstants.CR, 5, 3, 7, 14, 9, 8, 10, 15, 0, 5, 2, 6, 12, 11, 4, HttpConstants.CR, 1, 14, 4, 6, 2, 11, 3, HttpConstants.CR, 8, 12, 15, 5, 10, 0, 7, 1, 9, 14, 7, 10, 12, HttpConstants.CR, 1, 3, 9, 0, 2, 11, 4, 15, 8, 5, 6, 11, 5, 1, 9, 8, HttpConstants.CR, 15, 0, 14, 4, 2, 3, 12, 7, 10, 6, 3, 10, HttpConstants.CR, 12, 1, 2, 0, 11, 7, 5, 9, 4, 8, 15, 14, 6, 1, HttpConstants.CR, 2, 9, 7, 10, 6, 0, 8, 12, 4, 5, 15, 3, 11, 14, 11, 10, 15, 5, 0, 12, 14, 8, 6, 2, 3, 9, 1, 7, HttpConstants.CR, 4};
    private static byte[] ESbox_B = {8, 4, 11, 1, 3, 5, 0, 9, 2, 14, 10, 12, HttpConstants.CR, 6, 7, 15, 0, 1, 2, 10, 4, HttpConstants.CR, 5, 12, 9, 7, 3, 15, 11, 8, 6, 14, 14, 12, 0, 10, 9, 2, HttpConstants.CR, 11, 7, 5, 8, 15, 3, 6, 1, 4, 7, 5, 0, HttpConstants.CR, 11, 6, 1, 2, 3, 10, 12, 15, 4, 14, 9, 8, 2, 7, 12, 15, 9, 5, 10, 11, 1, 4, 0, HttpConstants.CR, 6, 8, 14, 3, 8, 3, 2, 6, 4, HttpConstants.CR, 14, 11, 12, 1, 7, 15, 10, 0, 9, 5, 5, 2, 10, 11, 9, 1, 12, 3, 7, 4, HttpConstants.CR, 0, 6, 15, 8, 14, 0, 4, 11, 14, 8, 3, 7, 1, 10, 2, 9, 6, 15, HttpConstants.CR, 5, 12};
    private static byte[] ESbox_C = {1, 11, 12, 2, 9, HttpConstants.CR, 0, 15, 4, 5, 8, 14, 10, 7, 6, 3, 0, 1, 7, HttpConstants.CR, 11, 4, 5, 2, 8, 14, 15, 12, 9, 10, 6, 3, 8, 2, 5, 0, 4, 9, 15, 10, 3, 7, 12, HttpConstants.CR, 6, 14, 1, 11, 3, 6, 0, 1, 5, HttpConstants.CR, 10, 8, 11, 2, 9, 7, 14, 15, 12, 4, 8, HttpConstants.CR, 11, 0, 4, 5, 1, 2, 9, 3, 12, 14, 6, 15, 10, 7, 12, 9, 11, 1, 8, 14, 2, 4, 7, 3, 6, 5, 10, 0, 15, HttpConstants.CR, 10, 9, 6, 8, HttpConstants.CR, 14, 2, 0, 15, 3, 5, 11, 4, 1, 12, 7, 7, 4, 0, 5, 10, 2, 15, 14, 12, 6, 1, 11, HttpConstants.CR, 9, 3, 8};
    private static byte[] ESbox_D = {15, 12, 2, 10, 6, 4, 5, 0, 7, 9, 14, HttpConstants.CR, 1, 11, 8, 3, 11, 6, 3, 4, 12, 15, 14, 2, 7, HttpConstants.CR, 8, 0, 5, 10, 9, 1, 1, 12, 11, 0, 15, 14, 6, 5, 10, HttpConstants.CR, 4, 8, 9, 3, 7, 2, 1, 5, 14, 12, 10, 7, 0, HttpConstants.CR, 6, 2, 11, 4, 9, 3, 15, 8, 0, 12, 8, 9, HttpConstants.CR, 2, 10, 11, 7, 3, 6, 5, 4, 14, 15, 1, 8, 0, 15, 3, 2, 5, 14, 11, 1, 10, 4, 7, 12, 9, HttpConstants.CR, 6, 3, 0, 6, 15, 1, 14, 9, 2, HttpConstants.CR, 8, 12, 4, 11, 10, 5, 7, 1, 10, 6, 8, 15, 11, 0, 4, 12, 3, 5, 9, 7, HttpConstants.CR, 2, 14};
    private static byte[] ESbox_Test = {4, 2, 15, 5, 9, 1, 0, 8, 14, 3, 11, 12, HttpConstants.CR, 7, 10, 6, 12, 9, 15, 14, 8, 1, 3, 10, 2, 7, 4, HttpConstants.CR, 6, 0, 11, 5, HttpConstants.CR, 8, 14, 12, 7, 3, 9, 10, 1, 5, 2, 4, 6, 15, 0, 11, 14, 9, 11, 2, 5, 15, 7, 1, 0, HttpConstants.CR, 12, 6, 10, 4, 3, 8, 3, 14, 5, 9, 6, 8, 0, HttpConstants.CR, 10, 11, 7, 12, 2, 1, 15, 4, 8, 15, 6, 11, 1, 9, 12, 5, HttpConstants.CR, 3, 7, 10, 0, 14, 2, 4, 9, 11, 12, 0, 3, 6, 7, 5, 4, 8, 14, 15, 1, 10, 2, HttpConstants.CR, 12, 6, 5, 2, 11, 0, 9, HttpConstants.CR, 3, 14, 7, 10, 15, 4, 1, 8};
    private static byte[] Sbox_Default = {4, 10, 9, 2, HttpConstants.CR, 8, 0, 14, 6, 11, 1, 12, 7, 15, 5, 3, 14, 11, 4, 12, 6, HttpConstants.CR, 15, 10, 2, 3, 8, 1, 0, 7, 5, 9, 5, 8, 1, HttpConstants.CR, 10, 3, 4, 2, 14, 15, 12, 7, 6, 0, 9, 11, 7, HttpConstants.CR, 10, 1, 0, 8, 9, 15, 14, 4, 6, 12, 11, 2, 5, 3, 6, 12, 7, 1, 5, 15, HttpConstants.CR, 8, 4, 10, 9, 14, 0, 3, 11, 2, 4, 11, 10, 0, 7, 2, 1, HttpConstants.CR, 3, 6, 8, 5, 9, 12, 15, 14, HttpConstants.CR, 11, 4, 1, 3, 15, 5, 9, 0, 10, 14, 7, 6, 8, 2, 12, 1, 15, HttpConstants.CR, 0, 5, 7, 10, 4, 9, 2, 3, 14, 6, 11, 8, 12};
    private static Hashtable sBoxes = new Hashtable();
    private byte[] S = Sbox_Default;
    private boolean forEncryption;
    private int[] workingKey = null;

    static {
        addSBox("Default", Sbox_Default);
        addSBox("E-TEST", ESbox_Test);
        addSBox("E-A", ESbox_A);
        addSBox("E-B", ESbox_B);
        addSBox("E-C", ESbox_C);
        addSBox("E-D", ESbox_D);
        addSBox("D-TEST", DSbox_Test);
        addSBox("D-A", DSbox_A);
    }

    private void GOST28147Func(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = 7;
        int bytesToint = bytesToint(bArr, i);
        int bytesToint2 = bytesToint(bArr, i + 4);
        if (this.forEncryption) {
            int i4 = 0;
            while (i4 < 3) {
                int i5 = bytesToint;
                int i6 = bytesToint2;
                int i7 = 0;
                while (i7 < 8) {
                    i7++;
                    int i8 = i5;
                    i5 = i6 ^ GOST28147_mainStep(i5, iArr[i7]);
                    i6 = i8;
                }
                i4++;
                bytesToint2 = i6;
                bytesToint = i5;
            }
            while (i3 > 0) {
                i3--;
                int i9 = bytesToint;
                bytesToint = bytesToint2 ^ GOST28147_mainStep(bytesToint, iArr[i3]);
                bytesToint2 = i9;
            }
        } else {
            int i10 = 0;
            while (i10 < 8) {
                int GOST28147_mainStep = GOST28147_mainStep(bytesToint, iArr[i10]) ^ bytesToint2;
                i10++;
                bytesToint2 = bytesToint;
                bytesToint = GOST28147_mainStep;
            }
            int i11 = 0;
            while (i11 < 3) {
                int i12 = bytesToint;
                int i13 = bytesToint2;
                int i14 = 7;
                while (i14 >= 0 && (i11 != 2 || i14 != 0)) {
                    i14--;
                    int i15 = i12;
                    i12 = i13 ^ GOST28147_mainStep(i12, iArr[i14]);
                    i13 = i15;
                }
                i11++;
                bytesToint2 = i13;
                bytesToint = i12;
            }
        }
        int GOST28147_mainStep2 = bytesToint2 ^ GOST28147_mainStep(bytesToint, iArr[0]);
        intTobytes(bytesToint, bArr2, i2);
        intTobytes(GOST28147_mainStep2, bArr2, i2 + 4);
    }

    private int GOST28147_mainStep(int i, int i2) {
        int i3 = i2 + i;
        int i4 = (this.S[((i3 >> 28) & 15) + 112] << 28) + (this.S[((i3 >> 0) & 15) + 0] << 0) + (this.S[((i3 >> 4) & 15) + 16] << 4) + (this.S[((i3 >> 8) & 15) + 32] << 8) + (this.S[((i3 >> 12) & 15) + 48] << 12) + (this.S[((i3 >> 16) & 15) + 64] << Tnaf.POW_2_WIDTH) + (this.S[((i3 >> 20) & 15) + 80] << 20) + (this.S[((i3 >> 24) & 15) + 96] << 24);
        return (i4 >>> 21) | (i4 << 11);
    }

    private static void addSBox(String str, byte[] bArr) {
        sBoxes.put(Strings.toUpperCase(str), bArr);
    }

    private int bytesToint(byte[] bArr, int i) {
        return ((bArr[i + 3] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i + 2] << Tnaf.POW_2_WIDTH) & 16711680) + ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[i] & 255);
    }

    private int[] generateWorkingKey(boolean z, byte[] bArr) {
        this.forEncryption = z;
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
        }
        int[] iArr = new int[8];
        for (int i = 0; i != 8; i++) {
            iArr[i] = bytesToint(bArr, i * 4);
        }
        return iArr;
    }

    public static byte[] getSBox(String str) {
        byte[] bArr = (byte[]) sBoxes.get(Strings.toUpperCase(str));
        if (bArr != null) {
            return Arrays.clone(bArr);
        }
        throw new IllegalArgumentException("Unknown S-Box - possible types: \"Default\", \"E-Test\", \"E-A\", \"E-B\", \"E-C\", \"E-D\", \"D-Test\", \"D-A\".");
    }

    private void intTobytes(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    public String getAlgorithmName() {
        return "GOST28147";
    }

    public int getBlockSize() {
        return 8;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithSBox) {
            ParametersWithSBox parametersWithSBox = (ParametersWithSBox) cipherParameters;
            byte[] sBox = parametersWithSBox.getSBox();
            if (sBox.length != Sbox_Default.length) {
                throw new IllegalArgumentException("invalid S-box passed to GOST28147 init");
            }
            this.S = Arrays.clone(sBox);
            if (parametersWithSBox.getParameters() != null) {
                this.workingKey = generateWorkingKey(z, ((KeyParameter) parametersWithSBox.getParameters()).getKey());
            }
        } else if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(z, ((KeyParameter) cipherParameters).getKey());
        } else if (cipherParameters != null) {
            throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + cipherParameters.getClass().getName());
        }
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.workingKey == null) {
            throw new IllegalStateException("GOST28147 engine not initialised");
        } else if (i + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            GOST28147Func(this.workingKey, bArr, i, bArr2, i2);
            return 8;
        }
    }

    public void reset() {
    }
}
