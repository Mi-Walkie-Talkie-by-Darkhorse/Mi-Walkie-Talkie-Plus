package org.bouncycastle.crypto.params;

import java.math.BigInteger;

public class DHPrivateKeyParameters extends DHKeyParameters {
    private BigInteger x;

    public DHPrivateKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(true, dHParameters);
        this.x = bigInteger;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPrivateKeyParameters)) {
            return false;
        }
        return ((DHPrivateKeyParameters) obj).getX().equals(this.x) && super.equals(obj);
    }

    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return this.x.hashCode() ^ super.hashCode();
    }
}
