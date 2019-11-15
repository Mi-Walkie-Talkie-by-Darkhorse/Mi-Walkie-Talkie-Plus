package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.apache.http.HttpStatus;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat448;
import org.bouncycastle.util.Arrays;

public class SecT409FieldElement extends ECFieldElement {
    protected long[] x;

    public SecT409FieldElement() {
        this.x = Nat448.create64();
    }

    public SecT409FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            throw new IllegalArgumentException("x value invalid for SecT409FieldElement");
        }
        this.x = SecT409Field.fromBigInteger(bigInteger);
    }

    protected SecT409FieldElement(long[] jArr) {
        this.x = jArr;
    }

    public ECFieldElement add(ECFieldElement eCFieldElement) {
        long[] create64 = Nat448.create64();
        SecT409Field.add(this.x, ((SecT409FieldElement) eCFieldElement).x, create64);
        return new SecT409FieldElement(create64);
    }

    public ECFieldElement addOne() {
        long[] create64 = Nat448.create64();
        SecT409Field.addOne(this.x, create64);
        return new SecT409FieldElement(create64);
    }

    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        return multiply(eCFieldElement.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecT409FieldElement)) {
            return false;
        }
        return Nat448.eq64(this.x, ((SecT409FieldElement) obj).x);
    }

    public String getFieldName() {
        return "SecT409Field";
    }

    public int getFieldSize() {
        return HttpStatus.SC_CONFLICT;
    }

    public int getK1() {
        return 87;
    }

    public int getK2() {
        return 0;
    }

    public int getK3() {
        return 0;
    }

    public int getM() {
        return HttpStatus.SC_CONFLICT;
    }

    public int getRepresentation() {
        return 2;
    }

    public int hashCode() {
        return 4090087 ^ Arrays.hashCode(this.x, 0, 7);
    }

    public ECFieldElement invert() {
        long[] create64 = Nat448.create64();
        SecT409Field.invert(this.x, create64);
        return new SecT409FieldElement(create64);
    }

    public boolean isOne() {
        return Nat448.isOne64(this.x);
    }

    public boolean isZero() {
        return Nat448.isZero64(this.x);
    }

    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        long[] create64 = Nat448.create64();
        SecT409Field.multiply(this.x, ((SecT409FieldElement) eCFieldElement).x, create64);
        return new SecT409FieldElement(create64);
    }

    public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiplyPlusProduct(eCFieldElement, eCFieldElement2, eCFieldElement3);
    }

    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        long[] jArr = this.x;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement).x;
        long[] jArr3 = ((SecT409FieldElement) eCFieldElement2).x;
        long[] jArr4 = ((SecT409FieldElement) eCFieldElement3).x;
        long[] create64 = Nat.create64(13);
        SecT409Field.multiplyAddToExt(jArr, jArr2, create64);
        SecT409Field.multiplyAddToExt(jArr3, jArr4, create64);
        long[] create642 = Nat448.create64();
        SecT409Field.reduce(create64, create642);
        return new SecT409FieldElement(create642);
    }

    public ECFieldElement negate() {
        return this;
    }

    public ECFieldElement sqrt() {
        long[] create64 = Nat448.create64();
        SecT409Field.sqrt(this.x, create64);
        return new SecT409FieldElement(create64);
    }

    public ECFieldElement square() {
        long[] create64 = Nat448.create64();
        SecT409Field.square(this.x, create64);
        return new SecT409FieldElement(create64);
    }

    public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return squarePlusProduct(eCFieldElement, eCFieldElement2);
    }

    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        long[] jArr = this.x;
        long[] jArr2 = ((SecT409FieldElement) eCFieldElement).x;
        long[] jArr3 = ((SecT409FieldElement) eCFieldElement2).x;
        long[] create64 = Nat.create64(13);
        SecT409Field.squareAddToExt(jArr, create64);
        SecT409Field.multiplyAddToExt(jArr2, jArr3, create64);
        long[] create642 = Nat448.create64();
        SecT409Field.reduce(create64, create642);
        return new SecT409FieldElement(create642);
    }

    public ECFieldElement squarePow(int i) {
        if (i < 1) {
            return this;
        }
        long[] create64 = Nat448.create64();
        SecT409Field.squareN(this.x, i, create64);
        return new SecT409FieldElement(create64);
    }

    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        return add(eCFieldElement);
    }

    public boolean testBitZero() {
        return (this.x[0] & 1) != 0;
    }

    public BigInteger toBigInteger() {
        return Nat448.toBigInteger64(this.x);
    }
}
