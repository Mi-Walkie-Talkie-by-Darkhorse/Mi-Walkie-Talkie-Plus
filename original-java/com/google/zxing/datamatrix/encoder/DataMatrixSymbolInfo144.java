package com.google.zxing.datamatrix.encoder;

import org.bouncycastle.crypto.tls.CipherSuite;

final class DataMatrixSymbolInfo144 extends SymbolInfo {
    DataMatrixSymbolInfo144() {
        super(false, 1558, 620, 22, 22, 36, -1, 62);
    }

    public int getInterleavedBlockCount() {
        return 10;
    }

    public int getDataLengthForInterleavedBlock(int i) {
        return i <= 8 ? CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256 : CipherSuite.TLS_DH_anon_WITH_SEED_CBC_SHA;
    }
}
