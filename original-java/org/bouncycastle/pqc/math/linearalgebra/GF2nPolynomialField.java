package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
import java.util.Random;
import java.util.Vector;

public class GF2nPolynomialField extends GF2nField {
    private boolean isPentanomial = false;
    private boolean isTrinomial = false;
    private int[] pc = new int[3];
    GF2Polynomial[] squaringMatrix;
    private int tc;

    public GF2nPolynomialField(int i, SecureRandom secureRandom) {
        super(secureRandom);
        if (i < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = i;
        computeFieldPolynomial();
        computeSquaringMatrix();
        this.fields = new Vector();
        this.matrices = new Vector();
    }

    public GF2nPolynomialField(int i, SecureRandom secureRandom, GF2Polynomial gF2Polynomial) throws RuntimeException {
        super(secureRandom);
        if (i < 3) {
            throw new IllegalArgumentException("degree must be at least 3");
        } else if (gF2Polynomial.getLength() != i + 1) {
            throw new RuntimeException();
        } else if (!gF2Polynomial.isIrreducible()) {
            throw new RuntimeException();
        } else {
            this.mDegree = i;
            this.fieldPolynomial = gF2Polynomial;
            computeSquaringMatrix();
            int i2 = 2;
            for (int i3 = 1; i3 < this.fieldPolynomial.getLength() - 1; i3++) {
                if (this.fieldPolynomial.testBit(i3)) {
                    i2++;
                    if (i2 == 3) {
                        this.tc = i3;
                    }
                    if (i2 <= 5) {
                        this.pc[i2 - 3] = i3;
                    }
                }
            }
            if (i2 == 3) {
                this.isTrinomial = true;
            }
            if (i2 == 5) {
                this.isPentanomial = true;
            }
            this.fields = new Vector();
            this.matrices = new Vector();
        }
    }

    public GF2nPolynomialField(int i, SecureRandom secureRandom, boolean z) {
        super(secureRandom);
        if (i < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = i;
        if (z) {
            computeFieldPolynomial();
        } else {
            computeFieldPolynomial2();
        }
        computeSquaringMatrix();
        this.fields = new Vector();
        this.matrices = new Vector();
    }

    private void computeSquaringMatrix() {
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[(this.mDegree - 1)];
        this.squaringMatrix = new GF2Polynomial[this.mDegree];
        for (int i = 0; i < this.squaringMatrix.length; i++) {
            this.squaringMatrix[i] = new GF2Polynomial(this.mDegree, "ZERO");
        }
        for (int i2 = 0; i2 < this.mDegree - 1; i2++) {
            gF2PolynomialArr[i2] = new GF2Polynomial(1, "ONE").shiftLeft(this.mDegree + i2).remainder(this.fieldPolynomial);
        }
        for (int i3 = 1; i3 <= Math.abs(this.mDegree >> 1); i3++) {
            for (int i4 = 1; i4 <= this.mDegree; i4++) {
                if (gF2PolynomialArr[this.mDegree - (i3 << 1)].testBit(this.mDegree - i4)) {
                    this.squaringMatrix[i4 - 1].setBit(this.mDegree - i3);
                }
            }
        }
        int abs = Math.abs(this.mDegree >> 1);
        while (true) {
            abs++;
            if (abs <= this.mDegree) {
                this.squaringMatrix[((abs << 1) - this.mDegree) - 1].setBit(this.mDegree - abs);
            } else {
                return;
            }
        }
    }

    private boolean testPentanomials() {
        boolean z;
        this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1);
        this.fieldPolynomial.setBit(0);
        this.fieldPolynomial.setBit(this.mDegree);
        boolean z2 = false;
        int i = 0;
        int i2 = 1;
        loop0:
        while (true) {
            if (i2 > this.mDegree - 3 || z2) {
                break;
            }
            this.fieldPolynomial.setBit(i2);
            int i3 = i2 + 1;
            while (i3 <= this.mDegree - 2 && !z2) {
                this.fieldPolynomial.setBit(i3);
                for (int i4 = i3 + 1; i4 <= this.mDegree - 1 && !z2; i4++) {
                    this.fieldPolynomial.setBit(i4);
                    if (((i4 & 1) != 0) || ((((this.mDegree & 1) != 0) | ((i2 & 1) != 0)) | ((i3 & 1) != 0))) {
                        z2 = this.fieldPolynomial.isIrreducible();
                        i++;
                        if (z2) {
                            this.isPentanomial = true;
                            this.pc[0] = i2;
                            this.pc[1] = i3;
                            this.pc[2] = i4;
                            break loop0;
                        }
                    }
                    this.fieldPolynomial.resetBit(i4);
                }
                this.fieldPolynomial.resetBit(i3);
                i3++;
            }
            this.fieldPolynomial.resetBit(i2);
            i2++;
        }
        return z2;
    }

    private boolean testRandom() {
        this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1);
        int i = 0;
        do {
            i++;
            this.fieldPolynomial.randomize();
            this.fieldPolynomial.setBit(this.mDegree);
            this.fieldPolynomial.setBit(0);
        } while (!this.fieldPolynomial.isIrreducible());
        return true;
    }

    private boolean testTrinomials() {
        boolean z = false;
        this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1);
        this.fieldPolynomial.setBit(0);
        this.fieldPolynomial.setBit(this.mDegree);
        int i = 0;
        int i2 = 1;
        while (true) {
            if (i2 >= this.mDegree || z) {
                break;
            }
            this.fieldPolynomial.setBit(i2);
            z = this.fieldPolynomial.isIrreducible();
            i++;
            if (z) {
                this.isTrinomial = true;
                this.tc = i2;
                break;
            }
            this.fieldPolynomial.resetBit(i2);
            z = this.fieldPolynomial.isIrreducible();
            i2++;
        }
        return z;
    }

    /* access modifiers changed from: protected */
    public void computeCOBMatrix(GF2nField gF2nField) {
        GF2nElement randomRoot;
        GF2nElement[] gF2nElementArr;
        if (this.mDegree != gF2nField.mDegree) {
            throw new IllegalArgumentException("GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        } else if (gF2nField instanceof GF2nONBField) {
            gF2nField.computeCOBMatrix(this);
        } else {
            GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[this.mDegree];
            for (int i = 0; i < this.mDegree; i++) {
                gF2PolynomialArr[i] = new GF2Polynomial(this.mDegree);
            }
            do {
                randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
            } while (randomRoot.isZero());
            if (randomRoot instanceof GF2nONBElement) {
                gF2nElementArr = new GF2nONBElement[this.mDegree];
                gF2nElementArr[this.mDegree - 1] = GF2nONBElement.ONE((GF2nONBField) gF2nField);
            } else {
                gF2nElementArr = new GF2nPolynomialElement[this.mDegree];
                gF2nElementArr[this.mDegree - 1] = GF2nPolynomialElement.ONE((GF2nPolynomialField) gF2nField);
            }
            gF2nElementArr[this.mDegree - 2] = randomRoot;
            for (int i2 = this.mDegree - 3; i2 >= 0; i2--) {
                gF2nElementArr[i2] = (GF2nElement) gF2nElementArr[i2 + 1].multiply(randomRoot);
            }
            if (gF2nField instanceof GF2nONBField) {
                for (int i3 = 0; i3 < this.mDegree; i3++) {
                    for (int i4 = 0; i4 < this.mDegree; i4++) {
                        if (gF2nElementArr[i3].testBit((this.mDegree - i4) - 1)) {
                            gF2PolynomialArr[(this.mDegree - i4) - 1].setBit((this.mDegree - i3) - 1);
                        }
                    }
                }
            } else {
                for (int i5 = 0; i5 < this.mDegree; i5++) {
                    for (int i6 = 0; i6 < this.mDegree; i6++) {
                        if (gF2nElementArr[i5].testBit(i6)) {
                            gF2PolynomialArr[(this.mDegree - i6) - 1].setBit((this.mDegree - i5) - 1);
                        }
                    }
                }
            }
            this.fields.addElement(gF2nField);
            this.matrices.addElement(gF2PolynomialArr);
            gF2nField.fields.addElement(this);
            gF2nField.matrices.addElement(invertMatrix(gF2PolynomialArr));
        }
    }

    /* access modifiers changed from: protected */
    public void computeFieldPolynomial() {
        if (!testTrinomials() && !testPentanomials()) {
            testRandom();
        }
    }

    /* access modifiers changed from: protected */
    public void computeFieldPolynomial2() {
        if (!testTrinomials() && !testPentanomials()) {
            testRandom();
        }
    }

    public int[] getPc() throws RuntimeException {
        if (!this.isPentanomial) {
            throw new RuntimeException();
        }
        int[] iArr = new int[3];
        System.arraycopy(this.pc, 0, iArr, 0, 3);
        return iArr;
    }

    /* access modifiers changed from: protected */
    public GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, (GF2nField) this);
        int degree3 = gF2nPolynomial.getDegree();
        GF2nPolynomial gF2nPolynomial2 = gF2nPolynomial;
        while (degree3 > 1) {
            while (true) {
                GF2nPolynomialElement gF2nPolynomialElement = new GF2nPolynomialElement(this, (Random) this.random);
                GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(2, (GF2nElement) GF2nPolynomialElement.ZERO(this));
                gF2nPolynomial3.set(1, gF2nPolynomialElement);
                GF2nPolynomial gF2nPolynomial4 = new GF2nPolynomial(gF2nPolynomial3);
                for (int i = 1; i <= this.mDegree - 1; i++) {
                    gF2nPolynomial4 = gF2nPolynomial4.multiplyAndReduce(gF2nPolynomial4, gF2nPolynomial2).add(gF2nPolynomial3);
                }
                gcd = gF2nPolynomial4.gcd(gF2nPolynomial2);
                degree = gcd.getDegree();
                degree2 = gF2nPolynomial2.getDegree();
                if (degree != 0 && degree != degree2) {
                    break;
                }
            }
            GF2nPolynomial gF2nPolynomial5 = (degree << 1) > degree2 ? gF2nPolynomial2.quotient(gcd) : new GF2nPolynomial(gcd);
            gF2nPolynomial2 = gF2nPolynomial5;
            degree3 = gF2nPolynomial5.getDegree();
        }
        return gF2nPolynomial2.at(0);
    }

    public GF2Polynomial getSquaringVector(int i) {
        return new GF2Polynomial(this.squaringMatrix[i]);
    }

    public int getTc() throws RuntimeException {
        if (this.isTrinomial) {
            return this.tc;
        }
        throw new RuntimeException();
    }

    public boolean isPentanomial() {
        return this.isPentanomial;
    }

    public boolean isTrinomial() {
        return this.isTrinomial;
    }
}
