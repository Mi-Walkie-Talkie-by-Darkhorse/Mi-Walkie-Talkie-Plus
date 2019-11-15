package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

public class McElieceCCA2KeyParameters extends AsymmetricKeyParameter {
    private McElieceCCA2Parameters params;

    public McElieceCCA2KeyParameters(boolean z, McElieceCCA2Parameters mcElieceCCA2Parameters) {
        super(z);
        this.params = mcElieceCCA2Parameters;
    }

    public McElieceCCA2Parameters getParameters() {
        return this.params;
    }
}
