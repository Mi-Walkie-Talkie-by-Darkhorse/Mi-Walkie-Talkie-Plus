package org.bouncycastle.math.ec;

import java.math.BigInteger;

public class DoubleAddMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint[] eCPointArr = {eCPoint.getCurve().getInfinity(), eCPoint};
        int bitLength = bigInteger.bitLength();
        for (int i = 0; i < bitLength; i++) {
            int i2 = bigInteger.testBit(i) ? 1 : 0;
            int i3 = 1 - i2;
            eCPointArr[i3] = eCPointArr[i3].twicePlus(eCPointArr[i2]);
        }
        return eCPointArr[0];
    }
}
