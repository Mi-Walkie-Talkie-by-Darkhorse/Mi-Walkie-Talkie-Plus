package org.bouncycastle.crypto.tls;

import java.io.IOException;
import org.bouncycastle.crypto.modes.AEADBlockCipher;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;

public class TlsAEADCipher implements TlsCipher {
    protected TlsContext context;
    protected AEADBlockCipher decryptCipher;
    protected byte[] decryptImplicitNonce;
    protected AEADBlockCipher encryptCipher;
    protected byte[] encryptImplicitNonce;
    protected int macSize;
    protected int nonce_explicit_length;

    public TlsAEADCipher(TlsContext tlsContext, AEADBlockCipher aEADBlockCipher, AEADBlockCipher aEADBlockCipher2, int i, int i2) throws IOException {
        if (!TlsUtils.isTLSv12(tlsContext)) {
            throw new TlsFatalAlert(80);
        }
        this.context = tlsContext;
        this.macSize = i2;
        this.nonce_explicit_length = 8;
        int i3 = (i * 2) + 8;
        byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, i3);
        KeyParameter keyParameter = new KeyParameter(calculateKeyBlock, 0, i);
        int i4 = 0 + i;
        KeyParameter keyParameter2 = new KeyParameter(calculateKeyBlock, i4, i);
        int i5 = i4 + i;
        byte[] copyOfRange = Arrays.copyOfRange(calculateKeyBlock, i5, i5 + 4);
        int i6 = i5 + 4;
        byte[] copyOfRange2 = Arrays.copyOfRange(calculateKeyBlock, i6, i6 + 4);
        if (i6 + 4 != i3) {
            throw new TlsFatalAlert(80);
        }
        if (tlsContext.isServer()) {
            this.encryptCipher = aEADBlockCipher2;
            this.decryptCipher = aEADBlockCipher;
            this.encryptImplicitNonce = copyOfRange2;
            this.decryptImplicitNonce = copyOfRange;
        } else {
            this.encryptCipher = aEADBlockCipher;
            this.decryptCipher = aEADBlockCipher2;
            this.encryptImplicitNonce = copyOfRange;
            this.decryptImplicitNonce = copyOfRange2;
            KeyParameter keyParameter3 = keyParameter2;
            keyParameter2 = keyParameter;
            keyParameter = keyParameter3;
        }
        byte[] bArr = new byte[(4 + this.nonce_explicit_length)];
        this.encryptCipher.init(true, new AEADParameters(keyParameter2, i2 * 8, bArr));
        this.decryptCipher.init(false, new AEADParameters(keyParameter, i2 * 8, bArr));
    }

    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (getPlaintextLimit(i2) < 0) {
            throw new TlsFatalAlert(50);
        }
        byte[] bArr2 = new byte[(this.decryptImplicitNonce.length + this.nonce_explicit_length)];
        System.arraycopy(this.decryptImplicitNonce, 0, bArr2, 0, this.decryptImplicitNonce.length);
        System.arraycopy(bArr, i, bArr2, this.decryptImplicitNonce.length, this.nonce_explicit_length);
        int i3 = i + this.nonce_explicit_length;
        int i4 = i2 - this.nonce_explicit_length;
        int outputSize = this.decryptCipher.getOutputSize(i4);
        byte[] bArr3 = new byte[outputSize];
        try {
            this.decryptCipher.init(false, new AEADParameters(null, this.macSize * 8, bArr2, getAdditionalData(j, s, outputSize)));
            int processBytes = this.decryptCipher.processBytes(bArr, i3, i4, bArr3, 0) + 0;
            if (processBytes + this.decryptCipher.doFinal(bArr3, processBytes) == bArr3.length) {
                return bArr3;
            }
            throw new TlsFatalAlert(80);
        } catch (Exception e) {
            throw new TlsFatalAlert(20, e);
        }
    }

    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[(this.encryptImplicitNonce.length + this.nonce_explicit_length)];
        System.arraycopy(this.encryptImplicitNonce, 0, bArr2, 0, this.encryptImplicitNonce.length);
        TlsUtils.writeUint64(j, bArr2, this.encryptImplicitNonce.length);
        byte[] bArr3 = new byte[(this.encryptCipher.getOutputSize(i2) + this.nonce_explicit_length)];
        System.arraycopy(bArr2, this.encryptImplicitNonce.length, bArr3, 0, this.nonce_explicit_length);
        int i3 = this.nonce_explicit_length;
        try {
            this.encryptCipher.init(true, new AEADParameters(null, this.macSize * 8, bArr2, getAdditionalData(j, s, i2)));
            int processBytes = this.encryptCipher.processBytes(bArr, i, i2, bArr3, i3) + i3;
            if (processBytes + this.encryptCipher.doFinal(bArr3, processBytes) == bArr3.length) {
                return bArr3;
            }
            throw new TlsFatalAlert(80);
        } catch (Exception e) {
            throw new TlsFatalAlert(80, e);
        }
    }

    /* access modifiers changed from: protected */
    public byte[] getAdditionalData(long j, short s, int i) throws IOException {
        byte[] bArr = new byte[13];
        TlsUtils.writeUint64(j, bArr, 0);
        TlsUtils.writeUint8(s, bArr, 8);
        TlsUtils.writeVersion(this.context.getServerVersion(), bArr, 9);
        TlsUtils.writeUint16(i, bArr, 11);
        return bArr;
    }

    public int getPlaintextLimit(int i) {
        return (i - this.macSize) - this.nonce_explicit_length;
    }
}
