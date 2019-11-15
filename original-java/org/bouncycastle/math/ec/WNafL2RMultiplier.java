package org.bouncycastle.math.ec;

import android.support.v4.internal.view.SupportMenu;
import java.math.BigInteger;

public class WNafL2RMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public int getWindowSize(int i) {
        return WNafUtil.getWindowSize(i);
    }

    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECPoint eCPoint2;
        ECPoint eCPoint3;
        int max = Math.max(2, Math.min(16, getWindowSize(bigInteger.bitLength())));
        WNafPreCompInfo precompute = WNafUtil.precompute(eCPoint, max, true);
        ECPoint[] preComp = precompute.getPreComp();
        ECPoint[] preCompNeg = precompute.getPreCompNeg();
        int[] generateCompactWindowNaf = WNafUtil.generateCompactWindowNaf(max, bigInteger);
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int length = generateCompactWindowNaf.length;
        if (length > 1) {
            int i = length - 1;
            int i2 = generateCompactWindowNaf[i];
            int i3 = i2 >> 16;
            int i4 = i2 & SupportMenu.USER_MASK;
            int abs = Math.abs(i3);
            ECPoint[] eCPointArr = i3 < 0 ? preCompNeg : preComp;
            if ((abs << 2) < (1 << max)) {
                byte b = LongArray.bitLengths[abs];
                int i5 = max - b;
                eCPoint3 = eCPointArr[((1 << (max - 1)) - 1) >>> 1].add(eCPointArr[(((abs ^ (1 << (b - 1))) << i5) + 1) >>> 1]);
                i4 -= i5;
            } else {
                eCPoint3 = eCPointArr[abs >>> 1];
            }
            int i6 = i;
            eCPoint2 = eCPoint3.timesPow2(i4);
            length = i6;
        } else {
            eCPoint2 = infinity;
        }
        while (length > 0) {
            int i7 = length - 1;
            int i8 = generateCompactWindowNaf[i7];
            int i9 = i8 >> 16;
            eCPoint2 = eCPoint2.twicePlus((i9 < 0 ? preCompNeg : preComp)[Math.abs(i9) >>> 1]).timesPow2(i8 & SupportMenu.USER_MASK);
            length = i7;
        }
        return eCPoint2;
    }
}
