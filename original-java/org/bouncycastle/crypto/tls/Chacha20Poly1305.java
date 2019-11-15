package org.bouncycastle.crypto.tls;

import java.io.IOException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.engines.ChaChaEngine;
import org.bouncycastle.crypto.generators.Poly1305KeyGenerator;
import org.bouncycastle.crypto.macs.Poly1305;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

public class Chacha20Poly1305 implements TlsCipher {
    protected TlsContext context;
    protected ChaChaEngine decryptCipher;
    protected ChaChaEngine encryptCipher;

    public Chacha20Poly1305(TlsContext tlsContext) throws IOException {
        if (!TlsUtils.isTLSv12(tlsContext)) {
            throw new TlsFatalAlert(80);
        }
        this.context = tlsContext;
        byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, 64);
        KeyParameter keyParameter = new KeyParameter(calculateKeyBlock, 0, 32);
        KeyParameter keyParameter2 = new KeyParameter(calculateKeyBlock, 32, 32);
        this.encryptCipher = new ChaChaEngine(20);
        this.decryptCipher = new ChaChaEngine(20);
        if (!tlsContext.isServer()) {
            KeyParameter keyParameter3 = keyParameter2;
            keyParameter2 = keyParameter;
            keyParameter = keyParameter3;
        }
        byte[] bArr = new byte[8];
        this.encryptCipher.init(true, new ParametersWithIV(keyParameter2, bArr));
        this.decryptCipher.init(false, new ParametersWithIV(keyParameter, bArr));
    }

    /* access modifiers changed from: protected */
    public byte[] calculateRecordMAC(KeyParameter keyParameter, byte[] bArr, byte[] bArr2, int i, int i2) {
        Poly1305 poly1305 = new Poly1305();
        poly1305.init(keyParameter);
        updateRecordMAC(poly1305, bArr, 0, bArr.length);
        updateRecordMAC(poly1305, bArr2, i, i2);
        byte[] bArr3 = new byte[poly1305.getMacSize()];
        poly1305.doFinal(bArr3, 0);
        return bArr3;
    }

    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (getPlaintextLimit(i2) < 0) {
            throw new TlsFatalAlert(50);
        }
        int i3 = i2 - 16;
        if (!Arrays.constantTimeAreEqual(calculateRecordMAC(initRecordMAC(this.decryptCipher, false, j), getAdditionalData(j, s, i3), bArr, i, i3), Arrays.copyOfRange(bArr, i + i3, i + i2))) {
            throw new TlsFatalAlert(20);
        }
        byte[] bArr2 = new byte[i3];
        this.decryptCipher.processBytes(bArr, i, i3, bArr2, 0);
        return bArr2;
    }

    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2 + 16;
        KeyParameter initRecordMAC = initRecordMAC(this.encryptCipher, true, j);
        byte[] bArr2 = new byte[i3];
        this.encryptCipher.processBytes(bArr, i, i2, bArr2, 0);
        byte[] calculateRecordMAC = calculateRecordMAC(initRecordMAC, getAdditionalData(j, s, i2), bArr2, 0, i2);
        System.arraycopy(calculateRecordMAC, 0, bArr2, i2, calculateRecordMAC.length);
        return bArr2;
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
        return i - 16;
    }

    /* access modifiers changed from: protected */
    public KeyParameter initRecordMAC(ChaChaEngine chaChaEngine, boolean z, long j) {
        byte[] bArr = new byte[8];
        TlsUtils.writeUint64(j, bArr, 0);
        chaChaEngine.init(z, new ParametersWithIV(null, bArr));
        byte[] bArr2 = new byte[64];
        chaChaEngine.processBytes(bArr2, 0, bArr2.length, bArr2, 0);
        System.arraycopy(bArr2, 0, bArr2, 32, 16);
        KeyParameter keyParameter = new KeyParameter(bArr2, 16, 32);
        Poly1305KeyGenerator.clamp(keyParameter.getKey());
        return keyParameter;
    }

    /* access modifiers changed from: protected */
    public void updateRecordMAC(Mac mac, byte[] bArr, int i, int i2) {
        mac.update(bArr, i, i2);
        byte[] longToLittleEndian = Pack.longToLittleEndian(((long) i2) & 4294967295L);
        mac.update(longToLittleEndian, 0, longToLittleEndian.length);
    }
}
