package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.HKDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;

public class HKDFBytesGenerator implements DerivationFunction {
    private byte[] currentT;
    private int generatedBytes;
    private HMac hMacHash;
    private int hashLen;
    private byte[] info;

    public HKDFBytesGenerator(Digest digest) {
        this.hMacHash = new HMac(digest);
        this.hashLen = digest.getDigestSize();
    }

    private void expandNext() throws DataLengthException {
        int i = (this.generatedBytes / this.hashLen) + 1;
        if (i >= 256) {
            throw new DataLengthException("HKDF cannot generate more than 255 blocks of HashLen size");
        }
        if (this.generatedBytes != 0) {
            this.hMacHash.update(this.currentT, 0, this.hashLen);
        }
        this.hMacHash.update(this.info, 0, this.info.length);
        this.hMacHash.update((byte) i);
        this.hMacHash.doFinal(this.currentT, 0);
    }

    private KeyParameter extract(byte[] bArr, byte[] bArr2) {
        this.hMacHash.init(new KeyParameter(bArr2));
        if (bArr == null) {
            this.hMacHash.init(new KeyParameter(new byte[this.hashLen]));
        } else {
            this.hMacHash.init(new KeyParameter(bArr));
        }
        this.hMacHash.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.hashLen];
        this.hMacHash.doFinal(bArr3, 0);
        return new KeyParameter(bArr3);
    }

    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        if (this.generatedBytes + i2 > this.hashLen * 255) {
            throw new DataLengthException("HKDF may only be used for 255 * HashLen bytes of output");
        }
        if (this.generatedBytes % this.hashLen == 0) {
            expandNext();
        }
        int i3 = this.generatedBytes % this.hashLen;
        int min = Math.min(this.hashLen - (this.generatedBytes % this.hashLen), i2);
        System.arraycopy(this.currentT, i3, bArr, i, min);
        this.generatedBytes += min;
        int i4 = i2 - min;
        int i5 = min + i;
        while (i4 > 0) {
            expandNext();
            int min2 = Math.min(this.hashLen, i4);
            System.arraycopy(this.currentT, 0, bArr, i5, min2);
            this.generatedBytes += min2;
            i4 -= min2;
            i5 += min2;
        }
        return i2;
    }

    public Digest getDigest() {
        return this.hMacHash.getUnderlyingDigest();
    }

    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof HKDFParameters)) {
            throw new IllegalArgumentException("HKDF parameters required for HKDFBytesGenerator");
        }
        HKDFParameters hKDFParameters = (HKDFParameters) derivationParameters;
        if (hKDFParameters.skipExtract()) {
            this.hMacHash.init(new KeyParameter(hKDFParameters.getIKM()));
        } else {
            this.hMacHash.init(extract(hKDFParameters.getSalt(), hKDFParameters.getIKM()));
        }
        this.info = hKDFParameters.getInfo();
        this.generatedBytes = 0;
        this.currentT = new byte[this.hashLen];
    }
}
