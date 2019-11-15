package org.bouncycastle.crypto.tls;

import java.io.IOException;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

public class TlsStreamCipher implements TlsCipher {
    protected TlsContext context;
    protected StreamCipher decryptCipher;
    protected StreamCipher encryptCipher;
    protected TlsMac readMac;
    protected boolean usesNonce;
    protected TlsMac writeMac;

    public TlsStreamCipher(TlsContext tlsContext, StreamCipher streamCipher, StreamCipher streamCipher2, Digest digest, Digest digest2, int i, boolean z) throws IOException {
        CipherParameters cipherParameters;
        CipherParameters cipherParameters2;
        CipherParameters cipherParameters3;
        boolean isServer = tlsContext.isServer();
        this.context = tlsContext;
        this.usesNonce = z;
        this.encryptCipher = streamCipher;
        this.decryptCipher = streamCipher2;
        int digestSize = (i * 2) + digest.getDigestSize() + digest2.getDigestSize();
        byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, digestSize);
        TlsMac tlsMac = new TlsMac(tlsContext, digest, calculateKeyBlock, 0, digest.getDigestSize());
        int digestSize2 = 0 + digest.getDigestSize();
        TlsMac tlsMac2 = new TlsMac(tlsContext, digest2, calculateKeyBlock, digestSize2, digest2.getDigestSize());
        int digestSize3 = digestSize2 + digest2.getDigestSize();
        CipherParameters keyParameter = new KeyParameter(calculateKeyBlock, digestSize3, i);
        int i2 = digestSize3 + i;
        CipherParameters keyParameter2 = new KeyParameter(calculateKeyBlock, i2, i);
        if (i2 + i != digestSize) {
            throw new TlsFatalAlert(80);
        }
        if (isServer) {
            this.writeMac = tlsMac2;
            this.readMac = tlsMac;
            this.encryptCipher = streamCipher2;
            this.decryptCipher = streamCipher;
            cipherParameters = keyParameter2;
        } else {
            this.writeMac = tlsMac;
            this.readMac = tlsMac2;
            this.encryptCipher = streamCipher;
            this.decryptCipher = streamCipher2;
            cipherParameters = keyParameter;
            keyParameter = keyParameter2;
        }
        if (z) {
            byte[] bArr = new byte[8];
            ParametersWithIV parametersWithIV = new ParametersWithIV(cipherParameters, bArr);
            cipherParameters3 = new ParametersWithIV(keyParameter, bArr);
            cipherParameters2 = parametersWithIV;
        } else {
            CipherParameters cipherParameters4 = keyParameter;
            cipherParameters2 = cipherParameters;
            cipherParameters3 = cipherParameters4;
        }
        this.encryptCipher.init(true, cipherParameters2);
        this.decryptCipher.init(false, cipherParameters3);
    }

    /* access modifiers changed from: protected */
    public void checkMAC(long j, short s, byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) throws IOException {
        if (!Arrays.constantTimeAreEqual(Arrays.copyOfRange(bArr, i, i2), this.readMac.calculateMac(j, s, bArr2, i3, i4))) {
            throw new TlsFatalAlert(20);
        }
    }

    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.usesNonce) {
            updateIV(this.decryptCipher, false, j);
        }
        int size = this.readMac.getSize();
        if (i2 < size) {
            throw new TlsFatalAlert(50);
        }
        int i3 = i2 - size;
        byte[] bArr2 = new byte[i2];
        this.decryptCipher.processBytes(bArr, i, i2, bArr2, 0);
        checkMAC(j, s, bArr2, i3, i2, bArr2, 0, i3);
        return Arrays.copyOfRange(bArr2, 0, i3);
    }

    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) {
        if (this.usesNonce) {
            updateIV(this.encryptCipher, true, j);
        }
        byte[] bArr2 = new byte[(this.writeMac.getSize() + i2)];
        this.encryptCipher.processBytes(bArr, i, i2, bArr2, 0);
        byte[] calculateMac = this.writeMac.calculateMac(j, s, bArr, i, i2);
        this.encryptCipher.processBytes(calculateMac, 0, calculateMac.length, bArr2, i2);
        return bArr2;
    }

    public int getPlaintextLimit(int i) {
        return i - this.writeMac.getSize();
    }

    /* access modifiers changed from: protected */
    public void updateIV(StreamCipher streamCipher, boolean z, long j) {
        byte[] bArr = new byte[8];
        TlsUtils.writeUint64(j, bArr, 0);
        streamCipher.init(z, new ParametersWithIV(null, bArr));
    }
}
