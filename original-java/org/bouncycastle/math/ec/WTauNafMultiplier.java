package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECPoint.AbstractF2m;

public class WTauNafMultiplier extends AbstractECMultiplier {
    static final String PRECOMP_NAME = "bc_wtnaf";

    private static AbstractF2m multiplyFromWTnaf(AbstractF2m abstractF2m, byte[] bArr, PreCompInfo preCompInfo) {
        AbstractF2m[] abstractF2mArr;
        ECCurve.AbstractF2m abstractF2m2 = (ECCurve.AbstractF2m) abstractF2m.getCurve();
        byte byteValue = abstractF2m2.getA().toBigInteger().byteValue();
        if (preCompInfo == null || !(preCompInfo instanceof WTauNafPreCompInfo)) {
            abstractF2mArr = Tnaf.getPreComp(abstractF2m, byteValue);
            WTauNafPreCompInfo wTauNafPreCompInfo = new WTauNafPreCompInfo();
            wTauNafPreCompInfo.setPreComp(abstractF2mArr);
            abstractF2m2.setPreCompInfo(abstractF2m, PRECOMP_NAME, wTauNafPreCompInfo);
        } else {
            abstractF2mArr = ((WTauNafPreCompInfo) preCompInfo).getPreComp();
        }
        AbstractF2m[] abstractF2mArr2 = new AbstractF2m[abstractF2mArr.length];
        for (int i = 0; i < abstractF2mArr.length; i++) {
            abstractF2mArr2[i] = (AbstractF2m) abstractF2mArr[i].negate();
        }
        AbstractF2m abstractF2m3 = (AbstractF2m) abstractF2m.getCurve().getInfinity();
        int i2 = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            i2++;
            byte b = bArr[length];
            if (b != 0) {
                abstractF2m3 = (AbstractF2m) abstractF2m3.tauPow(i2).add(b > 0 ? abstractF2mArr[b >>> 1] : abstractF2mArr2[(-b) >>> 1]);
                i2 = 0;
            }
        }
        return i2 > 0 ? abstractF2m3.tauPow(i2) : abstractF2m3;
    }

    private AbstractF2m multiplyWTnaf(AbstractF2m abstractF2m, ZTauElement zTauElement, PreCompInfo preCompInfo, byte b, byte b2) {
        return multiplyFromWTnaf(abstractF2m, Tnaf.tauAdicWNaf(b2, zTauElement, 4, BigInteger.valueOf(16), Tnaf.getTw(b2, 4), b == 0 ? Tnaf.alpha0 : Tnaf.alpha1), preCompInfo);
    }

    /* access modifiers changed from: protected */
    public ECPoint multiplyPositive(ECPoint eCPoint, BigInteger bigInteger) {
        if (!(eCPoint instanceof AbstractF2m)) {
            throw new IllegalArgumentException("Only ECPoint.AbstractF2m can be used in WTauNafMultiplier");
        }
        AbstractF2m abstractF2m = (AbstractF2m) eCPoint;
        ECCurve.AbstractF2m abstractF2m2 = (ECCurve.AbstractF2m) abstractF2m.getCurve();
        int fieldSize = abstractF2m2.getFieldSize();
        byte byteValue = abstractF2m2.getA().toBigInteger().byteValue();
        byte mu = Tnaf.getMu((int) byteValue);
        return multiplyWTnaf(abstractF2m, Tnaf.partModReduction(bigInteger, fieldSize, byteValue, abstractF2m2.getSi(), mu, 10), abstractF2m2.getPreCompInfo(abstractF2m, PRECOMP_NAME), byteValue, mu);
    }
}
