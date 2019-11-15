package org.bouncycastle.math.ec;

import java.math.BigInteger;

public class ZSignedDigitL2RMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint normalize = eCPoint.normalize();
        ECPoint negate = normalize.negate();
        int bitLength = bigInteger.bitLength();
        int lowestSetBit = bigInteger.getLowestSetBit();
        ECPoint eCPoint2 = normalize;
        while (true) {
            int i = bitLength - 1;
            if (i <= lowestSetBit) {
                return eCPoint2.timesPow2(lowestSetBit);
            }
            eCPoint2 = eCPoint2.twicePlus(bigInteger.testBit(i) ? normalize : negate);
            bitLength = i;
        }
    }
}
