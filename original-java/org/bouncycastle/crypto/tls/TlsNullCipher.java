package org.bouncycastle.crypto.tls;

import java.io.IOException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;

public class TlsNullCipher implements TlsCipher {
    protected TlsContext context;
    protected TlsMac readMac;
    protected TlsMac writeMac;

    public TlsNullCipher(TlsContext tlsContext) {
        this.context = tlsContext;
        this.writeMac = null;
        this.readMac = null;
    }

    public TlsNullCipher(TlsContext tlsContext, Digest digest, Digest digest2) throws IOException {
        TlsMac tlsMac;
        TlsMac tlsMac2 = null;
        boolean z = true;
        boolean z2 = digest == null;
        if (digest2 != null) {
            z = false;
        }
        if (z2 != z) {
            throw new TlsFatalAlert(80);
        }
        this.context = tlsContext;
        if (digest != null) {
            int digestSize = digest.getDigestSize() + digest2.getDigestSize();
            byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, digestSize);
            tlsMac2 = new TlsMac(tlsContext, digest, calculateKeyBlock, 0, digest.getDigestSize());
            int digestSize2 = 0 + digest.getDigestSize();
            tlsMac = new TlsMac(tlsContext, digest2, calculateKeyBlock, digestSize2, digest2.getDigestSize());
            if (digest2.getDigestSize() + digestSize2 != digestSize) {
                throw new TlsFatalAlert(80);
            }
        } else {
            tlsMac = null;
        }
        if (tlsContext.isServer()) {
            this.writeMac = tlsMac;
            this.readMac = tlsMac2;
            return;
        }
        this.writeMac = tlsMac2;
        this.readMac = tlsMac;
    }

    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.readMac == null) {
            return Arrays.copyOfRange(bArr, i, i + i2);
        }
        int size = this.readMac.getSize();
        if (i2 < size) {
            throw new TlsFatalAlert(50);
        }
        int i3 = i2 - size;
        if (Arrays.constantTimeAreEqual(Arrays.copyOfRange(bArr, i + i3, i + i2), this.readMac.calculateMac(j, s, bArr, i, i3))) {
            return Arrays.copyOfRange(bArr, i, i + i3);
        }
        throw new TlsFatalAlert(20);
    }

    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.writeMac == null) {
            return Arrays.copyOfRange(bArr, i, i + i2);
        }
        byte[] calculateMac = this.writeMac.calculateMac(j, s, bArr, i, i2);
        byte[] bArr2 = new byte[(calculateMac.length + i2)];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        System.arraycopy(calculateMac, 0, bArr2, i2, calculateMac.length);
        return bArr2;
    }

    public int getPlaintextLimit(int i) {
        return this.writeMac != null ? i - this.writeMac.getSize() : i;
    }
}
