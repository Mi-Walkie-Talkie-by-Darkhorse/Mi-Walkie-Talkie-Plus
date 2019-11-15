package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.KDFParameters;

public class ConcatenationKDFGenerator implements DerivationFunction {
    private Digest digest;
    private int hLen;
    private byte[] otherInfo;
    private byte[] shared;

    public ConcatenationKDFGenerator(Digest digest2) {
        this.digest = digest2;
        this.hLen = digest2.getDigestSize();
    }

    private void ItoOSP(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        int i3;
        int i4;
        if (bArr.length - i2 < i) {
            throw new DataLengthException("output buffer too small");
        }
        byte[] bArr2 = new byte[this.hLen];
        byte[] bArr3 = new byte[4];
        this.digest.reset();
        if (i2 > this.hLen) {
            int i5 = 1;
            i4 = 0;
            while (true) {
                ItoOSP(i5, bArr3);
                this.digest.update(bArr3, 0, bArr3.length);
                this.digest.update(this.shared, 0, this.shared.length);
                this.digest.update(this.otherInfo, 0, this.otherInfo.length);
                this.digest.doFinal(bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i + i4, this.hLen);
                i4 += this.hLen;
                i3 = i5 + 1;
                if (i5 >= i2 / this.hLen) {
                    break;
                }
                i5 = i3;
            }
        } else {
            i3 = 1;
            i4 = 0;
        }
        if (i4 < i2) {
            ItoOSP(i3, bArr3);
            this.digest.update(bArr3, 0, bArr3.length);
            this.digest.update(this.shared, 0, this.shared.length);
            this.digest.update(this.otherInfo, 0, this.otherInfo.length);
            this.digest.doFinal(bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i + i4, i2 - i4);
        }
        return i2;
    }

    public Digest getDigest() {
        return this.digest;
    }

    public void init(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof KDFParameters) {
            KDFParameters kDFParameters = (KDFParameters) derivationParameters;
            this.shared = kDFParameters.getSharedSecret();
            this.otherInfo = kDFParameters.getIV();
            return;
        }
        throw new IllegalArgumentException("KDF parameters required for KDF2Generator");
    }
}
