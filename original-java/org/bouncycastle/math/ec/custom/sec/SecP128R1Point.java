package org.bouncycastle.math.ec.custom.sec;

import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.math.ec.ECPoint.AbstractFp;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat128;

public class SecP128R1Point extends AbstractFp {
    public SecP128R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP128R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        boolean z2 = true;
        super(eCCurve, eCFieldElement, eCFieldElement2);
        boolean z3 = eCFieldElement == null;
        if (eCFieldElement2 != null) {
            z2 = false;
        }
        if (z3 != z2) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    SecP128R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.withCompression = z;
    }

    public ECPoint add(ECPoint eCPoint) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        if (this == eCPoint) {
            return twice();
        }
        ECCurve curve = getCurve();
        SecP128R1FieldElement secP128R1FieldElement = (SecP128R1FieldElement) this.x;
        SecP128R1FieldElement secP128R1FieldElement2 = (SecP128R1FieldElement) this.y;
        SecP128R1FieldElement secP128R1FieldElement3 = (SecP128R1FieldElement) eCPoint.getXCoord();
        SecP128R1FieldElement secP128R1FieldElement4 = (SecP128R1FieldElement) eCPoint.getYCoord();
        SecP128R1FieldElement secP128R1FieldElement5 = (SecP128R1FieldElement) this.zs[0];
        SecP128R1FieldElement secP128R1FieldElement6 = (SecP128R1FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat128.createExt();
        int[] create = Nat128.create();
        int[] create2 = Nat128.create();
        int[] create3 = Nat128.create();
        boolean isOne = secP128R1FieldElement5.isOne();
        if (isOne) {
            int[] iArr5 = secP128R1FieldElement3.x;
            iArr = secP128R1FieldElement4.x;
            iArr2 = iArr5;
        } else {
            SecP128R1Field.square(secP128R1FieldElement5.x, create2);
            SecP128R1Field.multiply(create2, secP128R1FieldElement3.x, create);
            SecP128R1Field.multiply(create2, secP128R1FieldElement5.x, create2);
            SecP128R1Field.multiply(create2, secP128R1FieldElement4.x, create2);
            iArr = create2;
            iArr2 = create;
        }
        boolean isOne2 = secP128R1FieldElement6.isOne();
        if (isOne2) {
            int[] iArr6 = secP128R1FieldElement.x;
            iArr3 = secP128R1FieldElement2.x;
            iArr4 = iArr6;
        } else {
            SecP128R1Field.square(secP128R1FieldElement6.x, create3);
            SecP128R1Field.multiply(create3, secP128R1FieldElement.x, createExt);
            SecP128R1Field.multiply(create3, secP128R1FieldElement6.x, create3);
            SecP128R1Field.multiply(create3, secP128R1FieldElement2.x, create3);
            iArr3 = create3;
            iArr4 = createExt;
        }
        int[] create4 = Nat128.create();
        SecP128R1Field.subtract(iArr4, iArr2, create4);
        SecP128R1Field.subtract(iArr3, iArr, create);
        if (Nat128.isZero(create4)) {
            return Nat128.isZero(create) ? twice() : curve.getInfinity();
        }
        SecP128R1Field.square(create4, create2);
        int[] create5 = Nat128.create();
        SecP128R1Field.multiply(create2, create4, create5);
        SecP128R1Field.multiply(create2, iArr4, create2);
        SecP128R1Field.negate(create5, create5);
        Nat128.mul(iArr3, create5, createExt);
        SecP128R1Field.reduce32(Nat128.addBothTo(create2, create2, create5), create5);
        SecP128R1FieldElement secP128R1FieldElement7 = new SecP128R1FieldElement(create3);
        SecP128R1Field.square(create, secP128R1FieldElement7.x);
        SecP128R1Field.subtract(secP128R1FieldElement7.x, create5, secP128R1FieldElement7.x);
        SecP128R1FieldElement secP128R1FieldElement8 = new SecP128R1FieldElement(create5);
        SecP128R1Field.subtract(create2, secP128R1FieldElement7.x, secP128R1FieldElement8.x);
        SecP128R1Field.multiplyAddToExt(secP128R1FieldElement8.x, create, createExt);
        SecP128R1Field.reduce(createExt, secP128R1FieldElement8.x);
        SecP128R1FieldElement secP128R1FieldElement9 = new SecP128R1FieldElement(create4);
        if (!isOne) {
            SecP128R1Field.multiply(secP128R1FieldElement9.x, secP128R1FieldElement5.x, secP128R1FieldElement9.x);
        }
        if (!isOne2) {
            SecP128R1Field.multiply(secP128R1FieldElement9.x, secP128R1FieldElement6.x, secP128R1FieldElement9.x);
        }
        return new SecP128R1Point(curve, secP128R1FieldElement7, secP128R1FieldElement8, new ECFieldElement[]{secP128R1FieldElement9}, this.withCompression);
    }

    /* access modifiers changed from: protected */
    public ECPoint detach() {
        return new SecP128R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    public ECPoint negate() {
        return isInfinity() ? this : new SecP128R1Point(this.curve, this.x, this.y.negate(), this.zs, this.withCompression);
    }

    public ECPoint threeTimes() {
        return (isInfinity() || this.y.isZero()) ? this : twice().add(this);
    }

    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SecP128R1FieldElement secP128R1FieldElement = (SecP128R1FieldElement) this.y;
        if (secP128R1FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP128R1FieldElement secP128R1FieldElement2 = (SecP128R1FieldElement) this.x;
        SecP128R1FieldElement secP128R1FieldElement3 = (SecP128R1FieldElement) this.zs[0];
        int[] create = Nat128.create();
        int[] create2 = Nat128.create();
        int[] create3 = Nat128.create();
        SecP128R1Field.square(secP128R1FieldElement.x, create3);
        int[] create4 = Nat128.create();
        SecP128R1Field.square(create3, create4);
        boolean isOne = secP128R1FieldElement3.isOne();
        int[] iArr = secP128R1FieldElement3.x;
        if (!isOne) {
            SecP128R1Field.square(secP128R1FieldElement3.x, create2);
            iArr = create2;
        }
        SecP128R1Field.subtract(secP128R1FieldElement2.x, iArr, create);
        SecP128R1Field.add(secP128R1FieldElement2.x, iArr, create2);
        SecP128R1Field.multiply(create2, create, create2);
        SecP128R1Field.reduce32(Nat128.addBothTo(create2, create2, create2), create2);
        SecP128R1Field.multiply(create3, secP128R1FieldElement2.x, create3);
        SecP128R1Field.reduce32(Nat.shiftUpBits(4, create3, 2, 0), create3);
        SecP128R1Field.reduce32(Nat.shiftUpBits(4, create4, 3, 0, create), create);
        SecP128R1FieldElement secP128R1FieldElement4 = new SecP128R1FieldElement(create4);
        SecP128R1Field.square(create2, secP128R1FieldElement4.x);
        SecP128R1Field.subtract(secP128R1FieldElement4.x, create3, secP128R1FieldElement4.x);
        SecP128R1Field.subtract(secP128R1FieldElement4.x, create3, secP128R1FieldElement4.x);
        SecP128R1FieldElement secP128R1FieldElement5 = new SecP128R1FieldElement(create3);
        SecP128R1Field.subtract(create3, secP128R1FieldElement4.x, secP128R1FieldElement5.x);
        SecP128R1Field.multiply(secP128R1FieldElement5.x, create2, secP128R1FieldElement5.x);
        SecP128R1Field.subtract(secP128R1FieldElement5.x, create, secP128R1FieldElement5.x);
        SecP128R1FieldElement secP128R1FieldElement6 = new SecP128R1FieldElement(create2);
        SecP128R1Field.twice(secP128R1FieldElement.x, secP128R1FieldElement6.x);
        if (!isOne) {
            SecP128R1Field.multiply(secP128R1FieldElement6.x, secP128R1FieldElement3.x, secP128R1FieldElement6.x);
        }
        return new SecP128R1Point(curve, secP128R1FieldElement4, secP128R1FieldElement5, new ECFieldElement[]{secP128R1FieldElement6}, this.withCompression);
    }

    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : !isInfinity() ? eCPoint.isInfinity() ? twice() : !this.y.isZero() ? twice().add(eCPoint) : eCPoint : eCPoint;
    }
}
