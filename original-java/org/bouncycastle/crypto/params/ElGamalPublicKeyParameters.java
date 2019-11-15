package org.bouncycastle.crypto.params;

import java.math.BigInteger;

public class ElGamalPublicKeyParameters extends ElGamalKeyParameters {
    private BigInteger y;

    public ElGamalPublicKeyParameters(BigInteger bigInteger, ElGamalParameters elGamalParameters) {
        super(false, elGamalParameters);
        this.y = bigInteger;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalPublicKeyParameters)) {
            return false;
        }
        return ((ElGamalPublicKeyParameters) obj).getY().equals(this.y) && super.equals(obj);
    }

    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return this.y.hashCode() ^ super.hashCode();
    }
}
