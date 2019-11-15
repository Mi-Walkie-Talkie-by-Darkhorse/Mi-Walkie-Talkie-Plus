package org.bouncycastle.math.ec;

import java.math.BigInteger;

public class ZSignedDigitR2LMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int bitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        ECPoint timesPow2 = eCPoint.timesPow2(lowestSetBit);
        ECPoint eCPoint2 = infinity;
        while (true) {
            int i = lowestSetBit + 1;
            if (i >= bitLength) {
                return eCPoint2.add(timesPow2);
            }
            ECPoint add = eCPoint2.add(bigInteger.testBit(i) ? timesPow2 : timesPow2.negate());
            timesPow2 = timesPow2.twice();
            eCPoint2 = add;
            lowestSetBit = i;
        }
    }
}
