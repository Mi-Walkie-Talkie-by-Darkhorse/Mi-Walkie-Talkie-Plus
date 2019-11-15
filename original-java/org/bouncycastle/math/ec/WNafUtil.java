package org.bouncycastle.math.ec;

import java.math.BigInteger;

public abstract class WNafUtil {
    private static final int[] DEFAULT_WINDOW_SIZE_CUTOFFS = {13, 41, 121, 337, 897, 2305};
    private static final byte[] EMPTY_BYTES = new byte[0];
    private static final int[] EMPTY_INTS = new int[0];
    private static final ECPoint[] EMPTY_POINTS = new ECPoint[0];
    public static final String PRECOMP_NAME = "bc_wnaf";

    public static int[] generateCompactNaf(BigInteger bigInteger) {
        int i;
        int i2;
        if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        } else if (bigInteger.signum() == 0) {
            return EMPTY_INTS;
        } else {
            BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
            int bitLength = add.bitLength();
            int[] iArr = new int[(bitLength >> 1)];
            BigInteger xor = add.xor(bigInteger);
            int i3 = bitLength - 1;
            int i4 = 0;
            int i5 = 0;
            int i6 = 1;
            while (i6 < i3) {
                if (!xor.testBit(i6)) {
                    int i7 = i6;
                    i2 = i4 + 1;
                    i = i7;
                } else {
                    int i8 = i5 + 1;
                    iArr[i5] = ((bigInteger.testBit(i6) ? -1 : 1) << 16) | i4;
                    i = i6 + 1;
                    i2 = 1;
                    i5 = i8;
                }
                i4 = i2;
                i6 = i + 1;
            }
            int i9 = i5 + 1;
            iArr[i5] = 65536 | i4;
            return iArr.length > i9 ? trim(iArr, i9) : iArr;
        }
    }

    public static int[] generateCompactWindowNaf(int i, BigInteger bigInteger) {
        if (i == 2) {
            return generateCompactNaf(bigInteger);
        }
        if (i < 2 || i > 16) {
            throw new IllegalArgumentException("'width' must be in the range [2, 16]");
        } else if ((bigInteger.bitLength() >>> 16) != 0) {
            throw new IllegalArgumentException("'k' must have bitlength < 2^16");
        } else if (bigInteger.signum() == 0) {
            return EMPTY_INTS;
        } else {
            int[] iArr = new int[((bigInteger.bitLength() / i) + 1)];
            int i2 = 1 << i;
            int i3 = i2 - 1;
            int i4 = i2 >>> 1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 <= bigInteger.bitLength()) {
                if (bigInteger.testBit(i5) == z) {
                    i5++;
                } else {
                    bigInteger = bigInteger.shiftRight(i5);
                    int intValue = bigInteger.intValue() & i3;
                    if (z) {
                        intValue++;
                    }
                    z = (intValue & i4) != 0;
                    int i7 = z ? intValue - i2 : intValue;
                    if (i6 > 0) {
                        i5--;
                    }
                    int i8 = i5;
                    int i9 = i6 + 1;
                    iArr[i6] = i8 | (i7 << 16);
                    i6 = i9;
                    i5 = i;
                }
            }
            return iArr.length > i6 ? trim(iArr, i6) : iArr;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0084 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] generateJSF(java.math.BigInteger r12, java.math.BigInteger r13) {
        /*
            int r0 = r12.bitLength()
            int r1 = r13.bitLength()
            int r0 = java.lang.Math.max(r0, r1)
            int r0 = r0 + 1
            byte[] r3 = new byte[r0]
            r1 = 0
            r5 = 0
            r4 = 0
            r0 = 0
            r8 = r0
            r9 = r1
            r2 = r12
            r0 = r4
            r1 = r13
            r4 = r5
        L_0x001a:
            r5 = r4 | r0
            if (r5 != 0) goto L_0x002a
            int r5 = r2.bitLength()
            if (r5 > r8) goto L_0x002a
            int r5 = r1.bitLength()
            if (r5 <= r8) goto L_0x0093
        L_0x002a:
            int r5 = r2.intValue()
            int r5 = r5 >>> r8
            int r5 = r5 + r4
            r6 = r5 & 7
            int r5 = r1.intValue()
            int r5 = r5 >>> r8
            int r5 = r5 + r0
            r10 = r5 & 7
            r5 = r6 & 1
            if (r5 == 0) goto L_0x00a3
            r7 = r6 & 2
            int r5 = r5 - r7
            int r7 = r6 + r5
            r11 = 4
            if (r7 != r11) goto L_0x00a3
            r7 = r10 & 3
            r11 = 2
            if (r7 != r11) goto L_0x00a3
            int r5 = -r5
            r7 = r5
        L_0x004d:
            r5 = r10 & 1
            if (r5 == 0) goto L_0x00a1
            r11 = r10 & 2
            int r5 = r5 - r11
            int r10 = r10 + r5
            r11 = 4
            if (r10 != r11) goto L_0x00a1
            r6 = r6 & 3
            r10 = 2
            if (r6 != r10) goto L_0x00a1
            int r5 = -r5
            r6 = r5
        L_0x005f:
            int r5 = r4 << 1
            int r10 = r7 + 1
            if (r5 != r10) goto L_0x009f
            r4 = r4 ^ 1
            r5 = r4
        L_0x0068:
            int r4 = r0 << 1
            int r10 = r6 + 1
            if (r4 != r10) goto L_0x009d
            r0 = r0 ^ 1
            r4 = r0
        L_0x0071:
            int r0 = r8 + 1
            r8 = 30
            if (r0 != r8) goto L_0x0084
            r0 = 0
            r8 = 30
            java.math.BigInteger r2 = r2.shiftRight(r8)
            r8 = 30
            java.math.BigInteger r1 = r1.shiftRight(r8)
        L_0x0084:
            int r8 = r9 + 1
            int r7 = r7 << 4
            r6 = r6 & 15
            r6 = r6 | r7
            byte r6 = (byte) r6
            r3[r9] = r6
            r9 = r8
            r8 = r0
            r0 = r4
            r4 = r5
            goto L_0x001a
        L_0x0093:
            int r0 = r3.length
            if (r0 <= r9) goto L_0x009b
            byte[] r0 = trim(r3, r9)
        L_0x009a:
            return r0
        L_0x009b:
            r0 = r3
            goto L_0x009a
        L_0x009d:
            r4 = r0
            goto L_0x0071
        L_0x009f:
            r5 = r4
            goto L_0x0068
        L_0x00a1:
            r6 = r5
            goto L_0x005f
        L_0x00a3:
            r7 = r5
            goto L_0x004d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.math.ec.WNafUtil.generateJSF(java.math.BigInteger, java.math.BigInteger):byte[]");
    }

    public static byte[] generateNaf(BigInteger bigInteger) {
        int i;
        if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        }
        BigInteger add = bigInteger.shiftLeft(1).add(bigInteger);
        int bitLength = add.bitLength() - 1;
        byte[] bArr = new byte[bitLength];
        BigInteger xor = add.xor(bigInteger);
        int i2 = 1;
        while (i2 < bitLength) {
            if (xor.testBit(i2)) {
                bArr[i2 - 1] = (byte) (bigInteger.testBit(i2) ? -1 : 1);
                i = i2 + 1;
            } else {
                i = i2;
            }
            i2 = i + 1;
        }
        bArr[bitLength - 1] = 1;
        return bArr;
    }

    public static byte[] generateWindowNaf(int i, BigInteger bigInteger) {
        if (i == 2) {
            return generateNaf(bigInteger);
        }
        if (i < 2 || i > 8) {
            throw new IllegalArgumentException("'width' must be in the range [2, 8]");
        } else if (bigInteger.signum() == 0) {
            return EMPTY_BYTES;
        } else {
            byte[] bArr = new byte[(bigInteger.bitLength() + 1)];
            int i2 = 1 << i;
            int i3 = i2 - 1;
            int i4 = i2 >>> 1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 <= bigInteger.bitLength()) {
                if (bigInteger.testBit(i5) == z) {
                    i5++;
                } else {
                    bigInteger = bigInteger.shiftRight(i5);
                    int intValue = bigInteger.intValue() & i3;
                    if (z) {
                        intValue++;
                    }
                    z = (intValue & i4) != 0;
                    if (z) {
                        intValue -= i2;
                    }
                    if (i6 > 0) {
                        i5--;
                    }
                    int i7 = i6 + i5;
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) intValue;
                    i6 = i8;
                    i5 = i;
                }
            }
            return bArr.length > i6 ? trim(bArr, i6) : bArr;
        }
    }

    public static int getNafWeight(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return 0;
        }
        return bigInteger.shiftLeft(1).add(bigInteger).xor(bigInteger).bitCount();
    }

    public static WNafPreCompInfo getWNafPreCompInfo(ECPoint eCPoint) {
        return getWNafPreCompInfo(eCPoint.getCurve().getPreCompInfo(eCPoint, PRECOMP_NAME));
    }

    public static WNafPreCompInfo getWNafPreCompInfo(PreCompInfo preCompInfo) {
        return (preCompInfo == null || !(preCompInfo instanceof WNafPreCompInfo)) ? new WNafPreCompInfo() : (WNafPreCompInfo) preCompInfo;
    }

    public static int getWindowSize(int i) {
        return getWindowSize(i, DEFAULT_WINDOW_SIZE_CUTOFFS);
    }

    public static int getWindowSize(int i, int[] iArr) {
        int i2 = 0;
        while (i2 < iArr.length && i >= iArr[i2]) {
            i2++;
        }
        return i2 + 2;
    }

    public static ECPoint mapPointWithPrecomp(ECPoint eCPoint, int i, boolean z, ECPointMap eCPointMap) {
        ECCurve curve = eCPoint.getCurve();
        WNafPreCompInfo precompute = precompute(eCPoint, i, z);
        ECPoint map = eCPointMap.map(eCPoint);
        WNafPreCompInfo wNafPreCompInfo = getWNafPreCompInfo(curve.getPreCompInfo(map, PRECOMP_NAME));
        ECPoint twice = precompute.getTwice();
        if (twice != null) {
            wNafPreCompInfo.setTwice(eCPointMap.map(twice));
        }
        ECPoint[] preComp = precompute.getPreComp();
        ECPoint[] eCPointArr = new ECPoint[preComp.length];
        for (int i2 = 0; i2 < preComp.length; i2++) {
            eCPointArr[i2] = eCPointMap.map(preComp[i2]);
        }
        wNafPreCompInfo.setPreComp(eCPointArr);
        if (z) {
            ECPoint[] eCPointArr2 = new ECPoint[eCPointArr.length];
            for (int i3 = 0; i3 < eCPointArr2.length; i3++) {
                eCPointArr2[i3] = eCPointArr[i3].negate();
            }
            wNafPreCompInfo.setPreCompNeg(eCPointArr2);
        }
        curve.setPreCompInfo(map, PRECOMP_NAME, wNafPreCompInfo);
        return map;
    }

    public static WNafPreCompInfo precompute(ECPoint eCPoint, int i, boolean z) {
        int length;
        ECPoint[] eCPointArr;
        int i2;
        int i3;
        int i4;
        ECCurve curve = eCPoint.getCurve();
        WNafPreCompInfo wNafPreCompInfo = getWNafPreCompInfo(curve.getPreCompInfo(eCPoint, PRECOMP_NAME));
        int max = 1 << Math.max(0, i - 2);
        ECPoint[] preComp = wNafPreCompInfo.getPreComp();
        if (preComp == null) {
            preComp = EMPTY_POINTS;
            length = 0;
        } else {
            length = preComp.length;
        }
        if (length < max) {
            ECPoint[] resizeTable = resizeTable(preComp, max);
            if (max == 1) {
                resizeTable[0] = eCPoint.normalize();
                preComp = resizeTable;
            } else {
                if (length == 0) {
                    resizeTable[0] = eCPoint;
                    i3 = 1;
                } else {
                    i3 = length;
                }
                ECFieldElement eCFieldElement = null;
                if (max == 2) {
                    resizeTable[1] = eCPoint.threeTimes();
                } else {
                    ECPoint twice = wNafPreCompInfo.getTwice();
                    ECPoint eCPoint2 = resizeTable[i3 - 1];
                    if (twice == null) {
                        twice = resizeTable[0].twice();
                        wNafPreCompInfo.setTwice(twice);
                        if (ECAlgorithms.isFpCurve(curve) && curve.getFieldSize() >= 64) {
                            switch (curve.getCoordinateSystem()) {
                                case 2:
                                case 3:
                                case 4:
                                    ECFieldElement zCoord = twice.getZCoord(0);
                                    twice = curve.createPoint(twice.getXCoord().toBigInteger(), twice.getYCoord().toBigInteger());
                                    ECFieldElement square = zCoord.square();
                                    ECPoint scaleY = eCPoint2.scaleX(square).scaleY(square.multiply(zCoord));
                                    if (length != 0) {
                                        eCPoint2 = scaleY;
                                        eCFieldElement = zCoord;
                                        i4 = i3;
                                        break;
                                    } else {
                                        resizeTable[0] = scaleY;
                                        eCPoint2 = scaleY;
                                        eCFieldElement = zCoord;
                                        i4 = i3;
                                        break;
                                    }
                            }
                        }
                    }
                    i4 = i3;
                    while (i4 < max) {
                        int i5 = i4 + 1;
                        eCPoint2 = eCPoint2.add(twice);
                        resizeTable[i4] = eCPoint2;
                        i4 = i5;
                    }
                }
                curve.normalizeAll(resizeTable, length, max - length, eCFieldElement);
                preComp = resizeTable;
            }
        }
        wNafPreCompInfo.setPreComp(preComp);
        if (z) {
            ECPoint[] preCompNeg = wNafPreCompInfo.getPreCompNeg();
            if (preCompNeg == null) {
                eCPointArr = new ECPoint[max];
                i2 = 0;
            } else {
                i2 = preCompNeg.length;
                eCPointArr = i2 < max ? resizeTable(preCompNeg, max) : preCompNeg;
            }
            while (i2 < max) {
                eCPointArr[i2] = preComp[i2].negate();
                i2++;
            }
            wNafPreCompInfo.setPreCompNeg(eCPointArr);
        }
        curve.setPreCompInfo(eCPoint, PRECOMP_NAME, wNafPreCompInfo);
        return wNafPreCompInfo;
    }

    private static ECPoint[] resizeTable(ECPoint[] eCPointArr, int i) {
        ECPoint[] eCPointArr2 = new ECPoint[i];
        System.arraycopy(eCPointArr, 0, eCPointArr2, 0, eCPointArr.length);
        return eCPointArr2;
    }

    private static byte[] trim(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        return bArr2;
    }

    private static int[] trim(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        return iArr2;
    }
}
