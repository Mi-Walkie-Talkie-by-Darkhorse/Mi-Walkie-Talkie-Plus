package org.bouncycastle.math.ec;

import android.support.v4.internal.view.SupportMenu;
import java.math.BigInteger;

public class MixedNafR2LMultiplier extends AbstractECMultiplier {
    protected int additionCoord;
    protected int doublingCoord;

    public MixedNafR2LMultiplier() {
        this(2, 4);
    }

    public MixedNafR2LMultiplier(int i, int i2) {
        this.additionCoord = i;
        this.doublingCoord = i2;
    }

    /* access modifiers changed from: protected */
    public ECCurve configureCurve(ECCurve eCCurve, int i) {
        if (eCCurve.getCoordinateSystem() == i) {
            return eCCurve;
        }
        if (eCCurve.supportsCoordinateSystem(i)) {
            return eCCurve.configure().setCoordinateSystem(i).create();
        }
        throw new IllegalArgumentException("Coordinate system " + i + " not supported by this curve");
    }

    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        ECCurve curve = eCPoint.getCurve();
        ECCurve configureCurve = configureCurve(curve, this.additionCoord);
        ECCurve configureCurve2 = configureCurve(curve, this.doublingCoord);
        int[] generateCompactNaf = WNafUtil.generateCompactNaf(bigInteger);
        ECPoint infinity = configureCurve.getInfinity();
        ECPoint importPoint = configureCurve2.importPoint(eCPoint);
        int i = 0;
        for (int i2 : generateCompactNaf) {
            int i3 = i2 >> 16;
            importPoint = importPoint.timesPow2(i + (i2 & SupportMenu.USER_MASK));
            ECPoint importPoint2 = configureCurve.importPoint(importPoint);
            if (i3 < 0) {
                importPoint2 = importPoint2.negate();
            }
            infinity = infinity.add(importPoint2);
            i = 1;
        }
        return curve.importPoint(infinity);
    }
}
