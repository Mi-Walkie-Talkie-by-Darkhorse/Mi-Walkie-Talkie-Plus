package org.bouncycastle.math.ec;

import java.math.BigInteger;
import org.bouncycastle.math.ec.ECCurve.AbstractF2m;
import org.bouncycastle.math.ec.endo.ECEndomorphism;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;
import org.bouncycastle.math.field.FiniteField;
import org.bouncycastle.math.field.PolynomialExtensionField;

public class ECAlgorithms {
    static ECPoint implShamirsTrickJsf(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECCurve curve = eCPoint.getCurve();
        ECPoint infinity = curve.getInfinity();
        ECPoint add = eCPoint.add(eCPoint2);
        ECPoint[] eCPointArr = {eCPoint2, eCPoint.subtract(eCPoint2), eCPoint, add};
        curve.normalizeAll(eCPointArr);
        ECPoint[] eCPointArr2 = {eCPointArr[3].negate(), eCPointArr[2].negate(), eCPointArr[1].negate(), eCPointArr[0].negate(), infinity, eCPointArr[0], eCPointArr[1], eCPointArr[2], eCPointArr[3]};
        byte[] generateJSF = WNafUtil.generateJSF(bigInteger, bigInteger2);
        int length = generateJSF.length;
        while (true) {
            length--;
            if (length < 0) {
                return infinity;
            }
            byte b = generateJSF[length];
            infinity = infinity.twicePlus(eCPointArr2[((b << 28) >> 28) + (((b << 24) >> 28) * 3) + 4]);
        }
    }

    static ECPoint implShamirsTrickWNaf(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        boolean z = false;
        boolean z2 = bigInteger.signum() < 0;
        if (bigInteger2.signum() < 0) {
            z = true;
        }
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int max = Math.max(2, Math.min(16, WNafUtil.getWindowSize(abs.bitLength())));
        int max2 = Math.max(2, Math.min(16, WNafUtil.getWindowSize(abs2.bitLength())));
        WNafPreCompInfo precompute = WNafUtil.precompute(eCPoint, max, true);
        WNafPreCompInfo precompute2 = WNafUtil.precompute(eCPoint2, max2, true);
        return implShamirsTrickWNaf(z2 ? precompute.getPreCompNeg() : precompute.getPreComp(), z2 ? precompute.getPreComp() : precompute.getPreCompNeg(), WNafUtil.generateWindowNaf(max, abs), z ? precompute2.getPreCompNeg() : precompute2.getPreComp(), z ? precompute2.getPreComp() : precompute2.getPreCompNeg(), WNafUtil.generateWindowNaf(max2, abs2));
    }

    static ECPoint implShamirsTrickWNaf(ECPoint eCPoint, BigInteger bigInteger, ECPointMap eCPointMap, BigInteger bigInteger2) {
        boolean z = false;
        boolean z2 = bigInteger.signum() < 0;
        if (bigInteger2.signum() < 0) {
            z = true;
        }
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int max = Math.max(2, Math.min(16, WNafUtil.getWindowSize(Math.max(abs.bitLength(), abs2.bitLength()))));
        ECPoint mapPointWithPrecomp = WNafUtil.mapPointWithPrecomp(eCPoint, max, true, eCPointMap);
        WNafPreCompInfo wNafPreCompInfo = WNafUtil.getWNafPreCompInfo(eCPoint);
        WNafPreCompInfo wNafPreCompInfo2 = WNafUtil.getWNafPreCompInfo(mapPointWithPrecomp);
        return implShamirsTrickWNaf(z2 ? wNafPreCompInfo.getPreCompNeg() : wNafPreCompInfo.getPreComp(), z2 ? wNafPreCompInfo.getPreComp() : wNafPreCompInfo.getPreCompNeg(), WNafUtil.generateWindowNaf(max, abs), z ? wNafPreCompInfo2.getPreCompNeg() : wNafPreCompInfo2.getPreComp(), z ? wNafPreCompInfo2.getPreComp() : wNafPreCompInfo2.getPreCompNeg(), WNafUtil.generateWindowNaf(max, abs2));
    }

    private static ECPoint implShamirsTrickWNaf(ECPoint[] eCPointArr, ECPoint[] eCPointArr2, byte[] bArr, ECPoint[] eCPointArr3, ECPoint[] eCPointArr4, byte[] bArr2) {
        ECPoint eCPoint;
        int i;
        ECPoint eCPoint2;
        int max = Math.max(bArr.length, bArr2.length);
        ECPoint infinity = eCPointArr[0].getCurve().getInfinity();
        int i2 = max - 1;
        int i3 = 0;
        ECPoint eCPoint3 = infinity;
        while (i2 >= 0) {
            byte b = i2 < bArr.length ? bArr[i2] : 0;
            byte b2 = i2 < bArr2.length ? bArr2[i2] : 0;
            if ((b | b2) == 0) {
                i = i3 + 1;
            } else {
                if (b != 0) {
                    eCPoint = infinity.add((b < 0 ? eCPointArr2 : eCPointArr)[Math.abs(b) >>> 1]);
                } else {
                    eCPoint = infinity;
                }
                if (b2 != 0) {
                    eCPoint = eCPoint.add((b2 < 0 ? eCPointArr4 : eCPointArr3)[Math.abs(b2) >>> 1]);
                }
                if (i3 > 0) {
                    eCPoint2 = eCPoint3.timesPow2(i3);
                    i = 0;
                } else {
                    i = i3;
                    eCPoint2 = eCPoint3;
                }
                eCPoint3 = eCPoint2.twicePlus(eCPoint);
            }
            i2--;
            i3 = i;
        }
        return i3 > 0 ? eCPoint3.timesPow2(i3) : eCPoint3;
    }

    static ECPoint implSumOfMultiplies(ECPoint[] eCPointArr, ECPointMap eCPointMap, BigInteger[] bigIntegerArr) {
        int length = eCPointArr.length;
        int i = length << 1;
        boolean[] zArr = new boolean[i];
        WNafPreCompInfo[] wNafPreCompInfoArr = new WNafPreCompInfo[i];
        byte[][] bArr = new byte[i][];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 << 1;
            int i4 = i3 + 1;
            BigInteger bigInteger = bigIntegerArr[i3];
            zArr[i3] = bigInteger.signum() < 0;
            BigInteger abs = bigInteger.abs();
            BigInteger bigInteger2 = bigIntegerArr[i4];
            zArr[i4] = bigInteger2.signum() < 0;
            BigInteger abs2 = bigInteger2.abs();
            int max = Math.max(2, Math.min(16, WNafUtil.getWindowSize(Math.max(abs.bitLength(), abs2.bitLength()))));
            ECPoint eCPoint = eCPointArr[i2];
            ECPoint mapPointWithPrecomp = WNafUtil.mapPointWithPrecomp(eCPoint, max, true, eCPointMap);
            wNafPreCompInfoArr[i3] = WNafUtil.getWNafPreCompInfo(eCPoint);
            wNafPreCompInfoArr[i4] = WNafUtil.getWNafPreCompInfo(mapPointWithPrecomp);
            bArr[i3] = WNafUtil.generateWindowNaf(max, abs);
            bArr[i4] = WNafUtil.generateWindowNaf(max, abs2);
        }
        return implSumOfMultiplies(zArr, wNafPreCompInfoArr, bArr);
    }

    static ECPoint implSumOfMultiplies(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr) {
        int length = eCPointArr.length;
        boolean[] zArr = new boolean[length];
        WNafPreCompInfo[] wNafPreCompInfoArr = new WNafPreCompInfo[length];
        byte[][] bArr = new byte[length][];
        for (int i = 0; i < length; i++) {
            BigInteger bigInteger = bigIntegerArr[i];
            zArr[i] = bigInteger.signum() < 0;
            BigInteger abs = bigInteger.abs();
            int max = Math.max(2, Math.min(16, WNafUtil.getWindowSize(abs.bitLength())));
            wNafPreCompInfoArr[i] = WNafUtil.precompute(eCPointArr[i], max, true);
            bArr[i] = WNafUtil.generateWindowNaf(max, abs);
        }
        return implSumOfMultiplies(zArr, wNafPreCompInfoArr, bArr);
    }

    private static ECPoint implSumOfMultiplies(boolean[] zArr, WNafPreCompInfo[] wNafPreCompInfoArr, byte[][] bArr) {
        int i;
        ECPoint eCPoint;
        ECPoint eCPoint2;
        int i2 = 0;
        for (byte[] length : bArr) {
            i2 = Math.max(i2, length.length);
        }
        ECPoint infinity = wNafPreCompInfoArr[0].getPreComp()[0].getCurve().getInfinity();
        int i3 = i2 - 1;
        int i4 = 0;
        ECPoint eCPoint3 = infinity;
        while (i3 >= 0) {
            int i5 = 0;
            ECPoint eCPoint4 = infinity;
            while (i5 < r8) {
                byte[] bArr2 = bArr[i5];
                byte b = i3 < bArr2.length ? bArr2[i3] : 0;
                if (b != 0) {
                    int abs = Math.abs(b);
                    WNafPreCompInfo wNafPreCompInfo = wNafPreCompInfoArr[i5];
                    eCPoint2 = eCPoint4.add(((b < 0) == zArr[i5] ? wNafPreCompInfo.getPreComp() : wNafPreCompInfo.getPreCompNeg())[abs >>> 1]);
                } else {
                    eCPoint2 = eCPoint4;
                }
                i5++;
                eCPoint4 = eCPoint2;
            }
            if (eCPoint4 == infinity) {
                i = i4 + 1;
            } else {
                if (i4 > 0) {
                    eCPoint = eCPoint3.timesPow2(i4);
                    i = 0;
                } else {
                    i = i4;
                    eCPoint = eCPoint3;
                }
                eCPoint3 = eCPoint.twicePlus(eCPoint4);
            }
            i3--;
            i4 = i;
        }
        return i4 > 0 ? eCPoint3.timesPow2(i4) : eCPoint3;
    }

    static ECPoint implSumOfMultipliesGLV(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr, GLVEndomorphism gLVEndomorphism) {
        int i = 0;
        BigInteger order = eCPointArr[0].getCurve().getOrder();
        BigInteger[] bigIntegerArr2 = new BigInteger[(r4 << 1)];
        int i2 = 0;
        for (int i3 = 0; i3 < r4; i3++) {
            BigInteger[] decomposeScalar = gLVEndomorphism.decomposeScalar(bigIntegerArr[i3].mod(order));
            int i4 = i2 + 1;
            bigIntegerArr2[i2] = decomposeScalar[0];
            i2 = i4 + 1;
            bigIntegerArr2[i4] = decomposeScalar[1];
        }
        ECPointMap pointMap = gLVEndomorphism.getPointMap();
        if (gLVEndomorphism.hasEfficientPointMap()) {
            return implSumOfMultiplies(eCPointArr, pointMap, bigIntegerArr2);
        }
        ECPoint[] eCPointArr2 = new ECPoint[(r4 << 1)];
        for (ECPoint eCPoint : eCPointArr) {
            ECPoint map = pointMap.map(eCPoint);
            int i5 = i + 1;
            eCPointArr2[i] = eCPoint;
            i = i5 + 1;
            eCPointArr2[i5] = map;
        }
        return implSumOfMultiplies(eCPointArr2, bigIntegerArr2);
    }

    public static ECPoint importPoint(ECCurve eCCurve, ECPoint eCPoint) {
        if (eCCurve.equals(eCPoint.getCurve())) {
            return eCCurve.importPoint(eCPoint);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static boolean isF2mCurve(ECCurve eCCurve) {
        return isF2mField(eCCurve.getField());
    }

    public static boolean isF2mField(FiniteField finiteField) {
        return finiteField.getDimension() > 1 && finiteField.getCharacteristic().equals(ECConstants.TWO) && (finiteField instanceof PolynomialExtensionField);
    }

    public static boolean isFpCurve(ECCurve eCCurve) {
        return isFpField(eCCurve.getField());
    }

    public static boolean isFpField(FiniteField finiteField) {
        return finiteField.getDimension() == 1;
    }

    public static void montgomeryTrick(ECFieldElement[] eCFieldElementArr, int i, int i2) {
        montgomeryTrick(eCFieldElementArr, i, i2, null);
    }

    public static void montgomeryTrick(ECFieldElement[] eCFieldElementArr, int i, int i2, ECFieldElement eCFieldElement) {
        int i3 = 0;
        ECFieldElement[] eCFieldElementArr2 = new ECFieldElement[i2];
        eCFieldElementArr2[0] = eCFieldElementArr[i];
        while (true) {
            i3++;
            if (i3 >= i2) {
                break;
            }
            eCFieldElementArr2[i3] = eCFieldElementArr2[i3 - 1].multiply(eCFieldElementArr[i + i3]);
        }
        int i4 = i3 - 1;
        if (eCFieldElement != null) {
            eCFieldElementArr2[i4] = eCFieldElementArr2[i4].multiply(eCFieldElement);
        }
        ECFieldElement invert = eCFieldElementArr2[i4].invert();
        while (i4 > 0) {
            int i5 = i4 - 1;
            int i6 = i4 + i;
            ECFieldElement eCFieldElement2 = eCFieldElementArr[i6];
            eCFieldElementArr[i6] = eCFieldElementArr2[i5].multiply(invert);
            invert = invert.multiply(eCFieldElement2);
            i4 = i5;
        }
        eCFieldElementArr[i] = invert;
    }

    public static ECPoint referenceMultiply(ECPoint eCPoint, BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        ECPoint infinity = eCPoint.getCurve().getInfinity();
        int bitLength = abs.bitLength();
        if (bitLength > 0) {
            if (abs.testBit(0)) {
                infinity = eCPoint;
            }
            for (int i = 1; i < bitLength; i++) {
                eCPoint = eCPoint.twice();
                if (abs.testBit(i)) {
                    infinity = infinity.add(eCPoint);
                }
            }
        }
        return bigInteger.signum() < 0 ? infinity.negate() : infinity;
    }

    public static ECPoint shamirsTrick(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        return validatePoint(implShamirsTrickJsf(eCPoint, bigInteger, importPoint(eCPoint.getCurve(), eCPoint2), bigInteger2));
    }

    public static ECPoint sumOfMultiplies(ECPoint[] eCPointArr, BigInteger[] bigIntegerArr) {
        if (eCPointArr == null || bigIntegerArr == null || eCPointArr.length != bigIntegerArr.length || eCPointArr.length < 1) {
            throw new IllegalArgumentException("point and scalar arrays should be non-null, and of equal, non-zero, length");
        }
        int length = eCPointArr.length;
        switch (length) {
            case 1:
                return eCPointArr[0].multiply(bigIntegerArr[0]);
            case 2:
                return sumOfTwoMultiplies(eCPointArr[0], bigIntegerArr[0], eCPointArr[1], bigIntegerArr[1]);
            default:
                ECPoint eCPoint = eCPointArr[0];
                ECCurve curve = eCPoint.getCurve();
                ECPoint[] eCPointArr2 = new ECPoint[length];
                eCPointArr2[0] = eCPoint;
                for (int i = 1; i < length; i++) {
                    eCPointArr2[i] = importPoint(curve, eCPointArr[i]);
                }
                ECEndomorphism endomorphism = curve.getEndomorphism();
                return endomorphism instanceof GLVEndomorphism ? validatePoint(implSumOfMultipliesGLV(eCPointArr2, bigIntegerArr, (GLVEndomorphism) endomorphism)) : validatePoint(implSumOfMultiplies(eCPointArr2, bigIntegerArr));
        }
    }

    public static ECPoint sumOfTwoMultiplies(ECPoint eCPoint, BigInteger bigInteger, ECPoint eCPoint2, BigInteger bigInteger2) {
        ECCurve curve = eCPoint.getCurve();
        ECPoint importPoint = importPoint(curve, eCPoint2);
        if ((curve instanceof AbstractF2m) && ((AbstractF2m) curve).isKoblitz()) {
            return validatePoint(eCPoint.multiply(bigInteger).add(importPoint.multiply(bigInteger2)));
        }
        ECEndomorphism endomorphism = curve.getEndomorphism();
        if (!(endomorphism instanceof GLVEndomorphism)) {
            return validatePoint(implShamirsTrickWNaf(eCPoint, bigInteger, importPoint, bigInteger2));
        }
        return validatePoint(implSumOfMultipliesGLV(new ECPoint[]{eCPoint, importPoint}, new BigInteger[]{bigInteger, bigInteger2}, (GLVEndomorphism) endomorphism));
    }

    public static ECPoint validatePoint(ECPoint eCPoint) {
        if (eCPoint.isValid()) {
            return eCPoint;
        }
        throw new IllegalArgumentException("Invalid point");
    }
}
