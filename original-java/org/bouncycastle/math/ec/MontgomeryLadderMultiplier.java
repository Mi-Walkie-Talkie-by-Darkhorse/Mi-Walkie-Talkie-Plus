package org.bouncycastle.math.ec;

import java.math.BigInteger;

public class MontgomeryLadderMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint[] eCPointArr = {eCPoint.getCurve().getInfinity(), eCPoint};
        int bitLength = bigInteger.bitLength();
        while (true) {
            int i = bitLength - 1;
            if (i < 0) {
                return eCPointArr[0];
            }
            int i2 = bigInteger.testBit(i) ? 1 : 0;
            int i3 = 1 - i2;
            eCPointArr[i3] = eCPointArr[i3].add(eCPointArr[i2]);
            eCPointArr[i2] = eCPointArr[i2].twice();
            bitLength = i;
        }
    }
}
