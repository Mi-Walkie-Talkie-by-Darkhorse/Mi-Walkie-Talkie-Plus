package org.bouncycastle.jcajce.spec;

import javax.crypto.spec.PBEKeySpec;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

public class PBKDF2KeySpec extends PBEKeySpec {
    private AlgorithmIdentifier prf;

    public PBKDF2KeySpec(char[] cArr, byte[] bArr, int i, int i2, AlgorithmIdentifier algorithmIdentifier) {
        super(cArr, bArr, i, i2);
        this.prf = algorithmIdentifier;
    }

    public AlgorithmIdentifier getPrf() {
        return this.prf;
    }
}
