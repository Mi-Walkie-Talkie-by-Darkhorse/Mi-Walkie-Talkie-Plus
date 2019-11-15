package org.bouncycastle.math.ec;

import android.support.v4.internal.view.SupportMenu;
import java.math.BigInteger;

public class NafR2LMultiplier extends AbstractECMultiplier {
    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        int[] generateCompactNaf = WNafUtil.generateCompactNaf(bigInteger);
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int i = 0;
        for (int i2 : generateCompactNaf) {
            int i3 = i2 >> 16;
            eCPoint = eCPoint.timesPow2(i + (i2 & SupportMenu.USER_MASK));
            infinity = infinity.add(i3 < 0 ? eCPoint.negate() : eCPoint);
            i = 1;
        }
        return infinity;
    }
}
