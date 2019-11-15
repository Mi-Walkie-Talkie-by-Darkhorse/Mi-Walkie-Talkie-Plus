package org.bouncycastle.pqc.math.linearalgebra;

import java.math.BigInteger;
import java.util.Random;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

public class GF2nPolynomialElement extends GF2nElement {
    private static final int[] bitMask = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, PKIFailureInfo.duplicateCertReq, 1073741824, Integer.MIN_VALUE, 0};
    private GF2Polynomial polynomial;

    public GF2nPolynomialElement(GF2nPolynomialElement gF2nPolynomialElement) {
        this.mField = gF2nPolynomialElement.mField;
        this.mDegree = gF2nPolynomialElement.mDegree;
        this.polynomial = new GF2Polynomial(gF2nPolynomialElement.polynomial);
    }

    public GF2nPolynomialElement(GF2nPolynomialField gF2nPolynomialField, Random random) {
        this.mField = gF2nPolynomialField;
        this.mDegree = this.mField.getDegree();
        this.polynomial = new GF2Polynomial(this.mDegree);
        randomize(random);
    }

    public GF2nPolynomialElement(GF2nPolynomialField gF2nPolynomialField, GF2Polynomial gF2Polynomial) {
        this.mField = gF2nPolynomialField;
        this.mDegree = this.mField.getDegree();
        this.polynomial = new GF2Polynomial(gF2Polynomial);
        this.polynomial.expandN(this.mDegree);
    }

    public GF2nPolynomialElement(GF2nPolynomialField gF2nPolynomialField, byte[] bArr) {
        this.mField = gF2nPolynomialField;
        this.mDegree = this.mField.getDegree();
        this.polynomial = new GF2Polynomial(this.mDegree, bArr);
        this.polynomial.expandN(this.mDegree);
    }

    public GF2nPolynomialElement(GF2nPolynomialField gF2nPolynomialField, int[] iArr) {
        this.mField = gF2nPolynomialField;
        this.mDegree = this.mField.getDegree();
        this.polynomial = new GF2Polynomial(this.mDegree, iArr);
        this.polynomial.expandN(gF2nPolynomialField.mDegree);
    }

    public static GF2nPolynomialElement ONE(GF2nPolynomialField gF2nPolynomialField) {
        return new GF2nPolynomialElement(gF2nPolynomialField, new GF2Polynomial(gF2nPolynomialField.getDegree(), new int[]{1}));
    }

    public static GF2nPolynomialElement ZERO(GF2nPolynomialField gF2nPolynomialField) {
        return new GF2nPolynomialElement(gF2nPolynomialField, new GF2Polynomial(gF2nPolynomialField.getDegree()));
    }

    private GF2Polynomial getGF2Polynomial() {
        return new GF2Polynomial(this.polynomial);
    }

    private GF2nPolynomialElement halfTrace() throws RuntimeException {
        if ((this.mDegree & 1) == 0) {
            throw new RuntimeException();
        }
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        for (int i = 1; i <= ((this.mDegree - 1) >> 1); i++) {
            gF2nPolynomialElement.squareThis();
            gF2nPolynomialElement.squareThis();
            gF2nPolynomialElement.addToThis(this);
        }
        return gF2nPolynomialElement;
    }

    private void randomize(Random random) {
        this.polynomial.expandN(this.mDegree);
        this.polynomial.randomize(random);
    }

    private void reducePentanomialBitwise(int[] iArr) {
        int i = this.mDegree - iArr[2];
        int i2 = this.mDegree - iArr[1];
        int i3 = this.mDegree - iArr[0];
        int length = this.polynomial.getLength();
        while (true) {
            length--;
            if (length < this.mDegree) {
                this.polynomial.reduceN();
                this.polynomial.expandN(this.mDegree);
                return;
            } else if (this.polynomial.testBit(length)) {
                this.polynomial.xorBit(length);
                this.polynomial.xorBit(length - i);
                this.polynomial.xorBit(length - i2);
                this.polynomial.xorBit(length - i3);
                this.polynomial.xorBit(length - this.mDegree);
            }
        }
    }

    private void reduceThis() {
        if (this.polynomial.getLength() > this.mDegree) {
            if (((GF2nPolynomialField) this.mField).isTrinomial()) {
                try {
                    int tc = ((GF2nPolynomialField) this.mField).getTc();
                    if (this.mDegree - tc <= 32 || this.polynomial.getLength() > (this.mDegree << 1)) {
                        reduceTrinomialBitwise(tc);
                    } else {
                        this.polynomial.reduceTrinomial(this.mDegree, tc);
                    }
                } catch (RuntimeException e) {
                    throw new RuntimeException("GF2nPolynomialElement.reduce: the field polynomial is not a trinomial");
                }
            } else if (((GF2nPolynomialField) this.mField).isPentanomial()) {
                try {
                    int[] pc = ((GF2nPolynomialField) this.mField).getPc();
                    if (this.mDegree - pc[2] <= 32 || this.polynomial.getLength() > (this.mDegree << 1)) {
                        reducePentanomialBitwise(pc);
                    } else {
                        this.polynomial.reducePentanomial(this.mDegree, pc);
                    }
                } catch (RuntimeException e2) {
                    throw new RuntimeException("GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial");
                }
            } else {
                this.polynomial = this.polynomial.remainder(this.mField.getFieldPolynomial());
                this.polynomial.expandN(this.mDegree);
            }
        } else if (this.polynomial.getLength() < this.mDegree) {
            this.polynomial.expandN(this.mDegree);
        }
    }

    private void reduceTrinomialBitwise(int i) {
        int i2 = this.mDegree - i;
        int length = this.polynomial.getLength();
        while (true) {
            length--;
            if (length < this.mDegree) {
                this.polynomial.reduceN();
                this.polynomial.expandN(this.mDegree);
                return;
            } else if (this.polynomial.testBit(length)) {
                this.polynomial.xorBit(length);
                this.polynomial.xorBit(length - i2);
                this.polynomial.xorBit(length - this.mDegree);
            }
        }
    }

    public GFElement add(GFElement gFElement) throws RuntimeException {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.addToThis(gFElement);
        return gF2nPolynomialElement;
    }

    public void addToThis(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof GF2nPolynomialElement)) {
            throw new RuntimeException();
        } else if (!this.mField.equals(((GF2nPolynomialElement) gFElement).mField)) {
            throw new RuntimeException();
        } else {
            this.polynomial.addToThis(((GF2nPolynomialElement) gFElement).polynomial);
        }
    }

    /* access modifiers changed from: 0000 */
    public void assignOne() {
        this.polynomial.assignOne();
    }

    /* access modifiers changed from: 0000 */
    public void assignZero() {
        this.polynomial.assignZero();
    }

    public Object clone() {
        return new GF2nPolynomialElement(this);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nPolynomialElement)) {
            return false;
        }
        GF2nPolynomialElement gF2nPolynomialElement = (GF2nPolynomialElement) obj;
        if (this.mField == gF2nPolynomialElement.mField || this.mField.getFieldPolynomial().equals(gF2nPolynomialElement.mField.getFieldPolynomial())) {
            return this.polynomial.equals(gF2nPolynomialElement.polynomial);
        }
        return false;
    }

    public int hashCode() {
        return this.mField.hashCode() + this.polynomial.hashCode();
    }

    public GF2nElement increase() {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.increaseThis();
        return gF2nPolynomialElement;
    }

    public void increaseThis() {
        this.polynomial.increaseThis();
    }

    public GFElement invert() throws ArithmeticException {
        return invertMAIA();
    }

    public GF2nPolynomialElement invertEEA() throws ArithmeticException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 32, "ONE");
        gF2Polynomial.reduceN();
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree + 32);
        gF2Polynomial2.reduceN();
        GF2Polynomial gF2Polynomial3 = getGF2Polynomial();
        GF2Polynomial fieldPolynomial = this.mField.getFieldPolynomial();
        gF2Polynomial3.reduceN();
        while (!gF2Polynomial3.isOne()) {
            gF2Polynomial3.reduceN();
            fieldPolynomial.reduceN();
            int length = gF2Polynomial3.getLength() - fieldPolynomial.getLength();
            if (length < 0) {
                length = -length;
                gF2Polynomial.reduceN();
                GF2Polynomial gF2Polynomial4 = gF2Polynomial3;
                gF2Polynomial3 = fieldPolynomial;
                fieldPolynomial = gF2Polynomial4;
                GF2Polynomial gF2Polynomial5 = gF2Polynomial;
                gF2Polynomial = gF2Polynomial2;
                gF2Polynomial2 = gF2Polynomial5;
            }
            gF2Polynomial3.shiftLeftAddThis(fieldPolynomial, length);
            gF2Polynomial.shiftLeftAddThis(gF2Polynomial2, length);
        }
        gF2Polynomial.reduceN();
        return new GF2nPolynomialElement((GF2nPolynomialField) this.mField, gF2Polynomial);
    }

    public GF2nPolynomialElement invertMAIA() throws ArithmeticException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree, "ONE");
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree);
        GF2Polynomial gF2Polynomial3 = getGF2Polynomial();
        GF2Polynomial fieldPolynomial = this.mField.getFieldPolynomial();
        while (true) {
            if (!gF2Polynomial3.testBit(0)) {
                gF2Polynomial3.shiftRightThis();
                if (!gF2Polynomial.testBit(0)) {
                    gF2Polynomial.shiftRightThis();
                } else {
                    gF2Polynomial.addToThis(this.mField.getFieldPolynomial());
                    gF2Polynomial.shiftRightThis();
                }
            } else if (gF2Polynomial3.isOne()) {
                return new GF2nPolynomialElement((GF2nPolynomialField) this.mField, gF2Polynomial);
            } else {
                gF2Polynomial3.reduceN();
                fieldPolynomial.reduceN();
                if (gF2Polynomial3.getLength() < fieldPolynomial.getLength()) {
                    GF2Polynomial gF2Polynomial4 = gF2Polynomial3;
                    gF2Polynomial3 = fieldPolynomial;
                    fieldPolynomial = gF2Polynomial4;
                    GF2Polynomial gF2Polynomial5 = gF2Polynomial;
                    gF2Polynomial = gF2Polynomial2;
                    gF2Polynomial2 = gF2Polynomial5;
                }
                gF2Polynomial3.addToThis(fieldPolynomial);
                gF2Polynomial.addToThis(gF2Polynomial2);
            }
        }
    }

    public GF2nPolynomialElement invertSquare() throws ArithmeticException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        int degree = this.mField.getDegree() - 1;
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.polynomial.expandN((this.mDegree << 1) + 32);
        gF2nPolynomialElement.polynomial.reduceN();
        int i = 1;
        int floorLog = IntegerFunctions.floorLog(degree) - 1;
        while (floorLog >= 0) {
            GF2nPolynomialElement gF2nPolynomialElement2 = new GF2nPolynomialElement(gF2nPolynomialElement);
            for (int i2 = 1; i2 <= i; i2++) {
                gF2nPolynomialElement2.squareThisPreCalc();
            }
            gF2nPolynomialElement.multiplyThisBy(gF2nPolynomialElement2);
            int i3 = i << 1;
            if ((bitMask[floorLog] & degree) != 0) {
                gF2nPolynomialElement.squareThisPreCalc();
                gF2nPolynomialElement.multiplyThisBy(this);
                i3++;
            }
            floorLog--;
            i = i3;
        }
        gF2nPolynomialElement.squareThisPreCalc();
        return gF2nPolynomialElement;
    }

    public boolean isOne() {
        return this.polynomial.isOne();
    }

    public boolean isZero() {
        return this.polynomial.isZero();
    }

    public GFElement multiply(GFElement gFElement) throws RuntimeException {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.multiplyThisBy(gFElement);
        return gF2nPolynomialElement;
    }

    public void multiplyThisBy(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof GF2nPolynomialElement)) {
            throw new RuntimeException();
        } else if (!this.mField.equals(((GF2nPolynomialElement) gFElement).mField)) {
            throw new RuntimeException();
        } else if (equals(gFElement)) {
            squareThis();
        } else {
            this.polynomial = this.polynomial.multiply(((GF2nPolynomialElement) gFElement).polynomial);
            reduceThis();
        }
    }

    public GF2nPolynomialElement power(int i) {
        if (i == 1) {
            return new GF2nPolynomialElement(this);
        }
        GF2nPolynomialElement ONE = ONE((GF2nPolynomialField) this.mField);
        if (i == 0) {
            return ONE;
        }
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.polynomial.expandN((gF2nPolynomialElement.mDegree << 1) + 32);
        gF2nPolynomialElement.polynomial.reduceN();
        for (int i2 = 0; i2 < this.mDegree; i2++) {
            if (((1 << i2) & i) != 0) {
                ONE.multiplyThisBy(gF2nPolynomialElement);
            }
            gF2nPolynomialElement.square();
        }
        return ONE;
    }

    public GF2nElement solveQuadraticEquation() throws RuntimeException {
        GF2nPolynomialElement ZERO;
        GF2nPolynomialElement gF2nPolynomialElement;
        if (isZero()) {
            return ZERO((GF2nPolynomialField) this.mField);
        }
        if ((this.mDegree & 1) == 1) {
            return halfTrace();
        }
        do {
            GF2nPolynomialElement gF2nPolynomialElement2 = new GF2nPolynomialElement((GF2nPolynomialField) this.mField, new Random());
            ZERO = ZERO((GF2nPolynomialField) this.mField);
            gF2nPolynomialElement = (GF2nPolynomialElement) gF2nPolynomialElement2.clone();
            for (int i = 1; i < this.mDegree; i++) {
                ZERO.squareThis();
                gF2nPolynomialElement.squareThis();
                ZERO.addToThis(gF2nPolynomialElement.multiply(this));
                gF2nPolynomialElement.addToThis(gF2nPolynomialElement2);
            }
        } while (gF2nPolynomialElement.isZero());
        if (equals(ZERO.square().add(ZERO))) {
            return ZERO;
        }
        throw new RuntimeException();
    }

    public GF2nElement square() {
        return squarePreCalc();
    }

    public GF2nPolynomialElement squareBitwise() {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.squareThisBitwise();
        gF2nPolynomialElement.reduceThis();
        return gF2nPolynomialElement;
    }

    public GF2nPolynomialElement squareMatrix() {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.squareThisMatrix();
        gF2nPolynomialElement.reduceThis();
        return gF2nPolynomialElement;
    }

    public GF2nPolynomialElement squarePreCalc() {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.squareThisPreCalc();
        gF2nPolynomialElement.reduceThis();
        return gF2nPolynomialElement;
    }

    public GF2nElement squareRoot() {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        gF2nPolynomialElement.squareRootThis();
        return gF2nPolynomialElement;
    }

    public void squareRootThis() {
        this.polynomial.expandN((this.mDegree << 1) + 32);
        this.polynomial.reduceN();
        for (int i = 0; i < this.mField.getDegree() - 1; i++) {
            squareThis();
        }
    }

    public void squareThis() {
        squareThisPreCalc();
    }

    public void squareThisBitwise() {
        this.polynomial.squareThisBitwise();
        reduceThis();
    }

    public void squareThisMatrix() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mDegree) {
                if (this.polynomial.vectorMult(((GF2nPolynomialField) this.mField).squaringMatrix[(this.mDegree - i2) - 1])) {
                    gF2Polynomial.setBit(i2);
                }
                i = i2 + 1;
            } else {
                this.polynomial = gF2Polynomial;
                return;
            }
        }
    }

    public void squareThisPreCalc() {
        this.polynomial.squareThisPreCalc();
        reduceThis();
    }

    /* access modifiers changed from: 0000 */
    public boolean testBit(int i) {
        return this.polynomial.testBit(i);
    }

    public boolean testRightmostBit() {
        return this.polynomial.testBit(0);
    }

    public byte[] toByteArray() {
        return this.polynomial.toByteArray();
    }

    public BigInteger toFlexiBigInt() {
        return this.polynomial.toFlexiBigInt();
    }

    public String toString() {
        return this.polynomial.toString(16);
    }

    public String toString(int i) {
        return this.polynomial.toString(i);
    }

    public int trace() {
        GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this);
        for (int i = 1; i < this.mDegree; i++) {
            gF2nPolynomialElement.squareThis();
            gF2nPolynomialElement.addToThis(this);
        }
        return gF2nPolynomialElement.isOne() ? 1 : 0;
    }
}
