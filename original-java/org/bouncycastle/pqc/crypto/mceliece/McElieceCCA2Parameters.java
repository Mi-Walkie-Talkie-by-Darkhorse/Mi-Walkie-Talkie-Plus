package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;

public class McElieceCCA2Parameters extends McElieceParameters {
    public Digest digest;

    public McElieceCCA2Parameters() {
        this.digest = new SHA256Digest();
    }

    public McElieceCCA2Parameters(int i, int i2) {
        super(i, i2);
        this.digest = new SHA256Digest();
    }

    public McElieceCCA2Parameters(Digest digest2) {
        this.digest = digest2;
    }

    public Digest getDigest() {
        return this.digest;
    }
}
