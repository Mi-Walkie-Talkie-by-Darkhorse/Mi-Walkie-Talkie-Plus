package org.bouncycastle.math.ec;

import java.math.BigInteger;

public class NafL2RMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        int[] generateCompactNaf = WNafUtil.generateCompactNaf(bigInteger);
        ECPoint normalize = eCPoint.normalize();
        ECPoint negate = normalize.negate();
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int length = generateCompactNaf.length;
        ECPoint eCPoint2 = infinity;
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return eCPoint2;
            }
            int i2 = generateCompactNaf[i];
            eCPoint2 = eCPoint2.twicePlus((i2 >> 16) < 0 ? negate : normalize).timesPow2(65535 & i2);
            length = i;
        }
    }
}
