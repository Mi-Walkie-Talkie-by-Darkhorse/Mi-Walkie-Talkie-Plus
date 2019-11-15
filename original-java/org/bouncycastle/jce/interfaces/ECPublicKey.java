package org.bouncycastle.jce.interfaces;

import java.security.PublicKey;
import org.bouncycastle.math.ec.ECPoint;

public interface ECPublicKey extends PublicKey, ECKey {
    ECPoint getQ();
}
