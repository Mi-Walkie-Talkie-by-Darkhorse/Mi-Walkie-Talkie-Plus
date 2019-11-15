package org.bouncycastle.jce.provider;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KDFParameters;

public class BrokenKDF2BytesGenerator implements DerivationFunction {
    private Digest digest;
    private byte[] iv;
    private byte[] shared;

    public BrokenKDF2BytesGenerator(Digest digest2) {
        this.digest = digest2;
    }

    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        if (bArr.length - i2 < i) {
            throw new DataLengthException("output buffer too small");
        }
        long j = (long) (i2 * 8);
        if (j > ((long) (this.digest.getDigestSize() * 8)) * 29) {
            new IllegalArgumentException("Output length to large");
        }
        int digestSize = (int) (j / ((long) this.digest.getDigestSize()));
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        int i3 = i;
        for (int i4 = 1; i4 <= digestSize; i4++) {
            this.digest.update(this.shared, 0, this.shared.length);
            this.digest.update((byte) (i4 & 255));
            this.digest.update((byte) ((i4 >> 8) & 255));
            this.digest.update((byte) ((i4 >> 16) & 255));
            this.digest.update((byte) ((i4 >> 24) & 255));
            this.digest.update(this.iv, 0, this.iv.length);
            this.digest.doFinal(bArr2, 0);
            if (i2 - i3 > bArr2.length) {
                System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
                i3 += bArr2.length;
            } else {
                System.arraycopy(bArr2, 0, bArr, i3, i2 - i3);
            }
        }
        this.digest.reset();
        return i2;
    }

    public Digest getDigest() {
        return this.digest;
    }

    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFParameters)) {
            throw new IllegalArgumentException("KDF parameters required for KDF2Generator");
        }
        KDFParameters kDFParameters = (KDFParameters) derivationParameters;
        this.shared = kDFParameters.getSharedSecret();
        this.iv = kDFParameters.getIV();
    }
}
