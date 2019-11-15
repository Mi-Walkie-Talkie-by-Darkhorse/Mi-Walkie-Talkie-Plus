package org.bouncycastle.crypto.engines;

import android.support.v4.internal.view.SupportMenu;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

public class Grainv1Engine implements StreamCipher {
    private static final int STATE_SIZE = 5;
    private int index = 2;
    private boolean initialised = false;
    private int[] lfsr;
    private int[] nfsr;
    private byte[] out;
    private int output;
    private byte[] workingIV;
    private byte[] workingKey;

    private byte getKeyStream() {
        if (this.index > 1) {
            oneRound();
            this.index = 0;
        }
        byte[] bArr = this.out;
        int i = this.index;
        this.index = i + 1;
        return bArr[i];
    }

    private int getOutput() {
        int i = (this.nfsr[0] >>> 1) | (this.nfsr[1] << 15);
        int i2 = (this.nfsr[0] >>> 2) | (this.nfsr[1] << 14);
        int i3 = (this.nfsr[0] >>> 4) | (this.nfsr[1] << 12);
        int i4 = (this.nfsr[0] >>> 10) | (this.nfsr[1] << 6);
        int i5 = (this.nfsr[1] >>> 15) | (this.nfsr[2] << 1);
        int i6 = (this.nfsr[2] >>> 11) | (this.nfsr[3] << 5);
        int i7 = (this.nfsr[3] >>> 8) | (this.nfsr[4] << 8);
        int i8 = (this.nfsr[3] >>> 15) | (this.nfsr[4] << 1);
        int i9 = (this.lfsr[0] >>> 3) | (this.lfsr[1] << 13);
        int i10 = (this.lfsr[1] >>> 9) | (this.lfsr[2] << 7);
        int i11 = (this.lfsr[2] >>> 14) | (this.lfsr[3] << 2);
        int i12 = this.lfsr[4];
        return (((((((i ^ ((i8 & (i11 & i12)) ^ ((((i9 & i11) & i8) ^ ((((((i10 ^ i8) ^ (i9 & i12)) ^ (i11 & i12)) ^ (i12 & i8)) ^ ((i9 & i10) & i11)) ^ ((i9 & i11) & i12))) ^ ((i10 & i11) & i8)))) ^ i2) ^ i3) ^ i4) ^ i5) ^ i6) ^ i7) & SupportMenu.USER_MASK;
    }

    private int getOutputLFSR() {
        int i = (this.lfsr[1] >>> 7) | (this.lfsr[2] << 9);
        int i2 = (this.lfsr[2] >>> 6) | (this.lfsr[3] << 10);
        int i3 = (this.lfsr[3] >>> 3) | (this.lfsr[4] << 13);
        return (((((this.lfsr[0] ^ ((this.lfsr[0] >>> 13) | (this.lfsr[1] << 3))) ^ i) ^ i2) ^ i3) ^ ((this.lfsr[3] >>> 14) | (this.lfsr[4] << 2))) & SupportMenu.USER_MASK;
    }

    private int getOutputNFSR() {
        int i = (this.nfsr[0] >>> 9) | (this.nfsr[1] << 7);
        int i2 = (this.nfsr[0] >>> 15) | (this.nfsr[1] << 1);
        int i3 = (this.nfsr[1] >>> 5) | (this.nfsr[2] << 11);
        int i4 = (this.nfsr[1] >>> 12) | (this.nfsr[2] << 4);
        int i5 = (this.nfsr[2] >>> 1) | (this.nfsr[3] << 15);
        int i6 = (this.nfsr[2] >>> 5) | (this.nfsr[3] << 11);
        int i7 = (this.nfsr[2] >>> 13) | (this.nfsr[3] << 3);
        int i8 = (this.nfsr[3] >>> 4) | (this.nfsr[4] << 12);
        int i9 = (this.nfsr[3] >>> 12) | (this.nfsr[4] << 4);
        int i10 = (this.nfsr[3] >>> 15) | (this.nfsr[4] << 1);
        return ((((((((((((this.nfsr[0] ^ ((((this.nfsr[0] >>> 14) | (this.nfsr[1] << 2)) ^ (((((((((this.nfsr[3] >>> 14) | (this.nfsr[4] << 2)) ^ i9) ^ i8) ^ i7) ^ i6) ^ i5) ^ i4) ^ i3)) ^ i)) ^ (i10 & i9)) ^ (i6 & i5)) ^ (i2 & i)) ^ ((i9 & i8) & i7)) ^ ((i5 & i4) & i3)) ^ (((i10 & i7) & i4) & i)) ^ (((i9 & i8) & i6) & i5)) ^ (((i10 & i9) & i3) & i2)) ^ ((((i10 & i9) & i8) & i7) & i6)) ^ (i & (((i5 & i4) & i3) & i2))) ^ (((((i8 & i7) & i6) & i5) & i4) & i3)) & SupportMenu.USER_MASK;
    }

    private void initGrain() {
        for (int i = 0; i < 10; i++) {
            this.output = getOutput();
            this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) ^ this.output);
            this.lfsr = shift(this.lfsr, getOutputLFSR() ^ this.output);
        }
        this.initialised = true;
    }

    private void oneRound() {
        this.output = getOutput();
        this.out[0] = (byte) this.output;
        this.out[1] = (byte) (this.output >> 8);
        this.nfsr = shift(this.nfsr, getOutputNFSR() ^ this.lfsr[0]);
        this.lfsr = shift(this.lfsr, getOutputLFSR());
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[8] = -1;
        bArr2[9] = -1;
        this.workingKey = bArr;
        this.workingIV = bArr2;
        int i = 0;
        for (int i2 = 0; i2 < this.nfsr.length; i2++) {
            this.nfsr[i2] = ((this.workingKey[i + 1] << 8) | (this.workingKey[i] & 255)) & 65535;
            this.lfsr[i2] = ((this.workingIV[i + 1] << 8) | (this.workingIV[i] & 255)) & 65535;
            i += 2;
        }
    }

    private int[] shift(int[] iArr, int i) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = iArr[4];
        iArr[4] = i;
        return iArr;
    }

    public String getAlgorithmName() {
        return "Grain v1";
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Grain v1 Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != 8) {
            throw new IllegalArgumentException("Grain v1 requires exactly 8 bytes of IV");
        } else if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Grain v1 Init parameters must include a key");
        } else {
            KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
            this.workingIV = new byte[keyParameter.getKey().length];
            this.workingKey = new byte[keyParameter.getKey().length];
            this.lfsr = new int[5];
            this.nfsr = new int[5];
            this.out = new byte[2];
            System.arraycopy(iv, 0, this.workingIV, 0, iv.length);
            System.arraycopy(keyParameter.getKey(), 0, this.workingKey, 0, keyParameter.getKey().length);
            reset();
        }
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ getKeyStream());
            }
            return i2;
        }
    }

    public void reset() {
        this.index = 2;
        setKey(this.workingKey, this.workingIV);
        initGrain();
    }

    public byte returnByte(byte b) {
        if (this.initialised) {
            return (byte) (getKeyStream() ^ b);
        }
        throw new IllegalStateException(getAlgorithmName() + " not initialised");
    }
}
