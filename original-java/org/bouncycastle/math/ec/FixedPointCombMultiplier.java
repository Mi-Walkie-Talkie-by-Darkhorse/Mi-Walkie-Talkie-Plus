package org.bouncycastle.math.ec;

import java.math.BigInteger;

public class FixedPointCombMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public int getWidthForCombSize(int i) {
        return i > 257 ? 6 : 5;
    }

    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECCurve curve = eCPoint.getCurve();
        int combSize = FixedPointUtil.getCombSize(curve);
        if (bigInteger.bitLength() > combSize) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        FixedPointPreCompInfo precompute = FixedPointUtil.precompute(eCPoint, getWidthForCombSize(combSize));
        ECPoint[] preComp = precompute.getPreComp();
        int width = precompute.getWidth();
        int i = ((combSize + width) - 1) / width;
        int i2 = (i * width) - 1;
        int i3 = 0;
        ECPoint infinity = curve.getInfinity();
        while (i3 < i) {
            int i4 = 0;
            for (int i5 = i2 - i3; i5 >= 0; i5 -= i) {
                i4 <<= 1;
                if (bigInteger.testBit(i5)) {
                    i4 |= 1;
                }
            }
            i3++;
            infinity = infinity.twicePlus(preComp[i4]);
        }
        return infinity;
    }
}
