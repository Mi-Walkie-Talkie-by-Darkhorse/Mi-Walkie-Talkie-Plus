package org.bouncycastle.pqc.jcajce.spec;

import org.bouncycastle.pqc.crypto.gmss.GMSSParameters;

public class GMSSPublicKeySpec extends GMSSKeySpec {
    private byte[] gmssPublicKey;

    public GMSSPublicKeySpec(byte[] bArr, GMSSParameters gMSSParameters) {
        super(gMSSParameters);
        this.gmssPublicKey = bArr;
    }

    public byte[] getPublicKey() {
        return this.gmssPublicKey;
    }
}
