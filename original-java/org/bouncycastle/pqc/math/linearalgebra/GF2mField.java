package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

public class GF2mField {
    private int degree = 0;
    private int polynomial;

    public GF2mField(int i) {
        if (i >= 32) {
            throw new IllegalArgumentException(" Error: the degree of field is too large ");
        } else if (i < 1) {
            throw new IllegalArgumentException(" Error: the degree of field is non-positive ");
        } else {
            this.degree = i;
            this.polynomial = PolynomialRingGF2.getIrreduciblePolynomial(i);
        }
    }

    public GF2mField(int i, int i2) {
        if (i != PolynomialRingGF2.degree(i2)) {
            throw new IllegalArgumentException(" Error: the degree is not correct");
        } else if (!PolynomialRingGF2.isIrreducible(i2)) {
            throw new IllegalArgumentException(" Error: given polynomial is reducible");
        } else {
            this.degree = i;
            this.polynomial = i2;
        }
    }

    public GF2mField(GF2mField gF2mField) {
        this.degree = gF2mField.degree;
        this.polynomial = gF2mField.polynomial;
    }

    public GF2mField(byte[] bArr) {
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.polynomial = LittleEndianConversions.OS2IP(bArr);
        if (!PolynomialRingGF2.isIrreducible(this.polynomial)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.degree = PolynomialRingGF2.degree(this.polynomial);
    }

    private static String polyToString(int i) {
        String str = "";
        if (i == 0) {
            return "0";
        }
        if (((byte) (i & 1)) == 1) {
            str = "1";
        }
        int i2 = i >>> 1;
        int i3 = 1;
        while (i2 != 0) {
            if (((byte) (i2 & 1)) == 1) {
                str = str + "+x^" + i3;
            }
            i2 >>>= 1;
            i3++;
        }
        return str;
    }

    public int add(int i, int i2) {
        return i ^ i2;
    }

    public String elementToStr(int i) {
        String str = "";
        for (int i2 = 0; i2 < this.degree; i2++) {
            str = (((byte) i) & 1) == 0 ? "0" + str : "1" + str;
            i >>>= 1;
        }
        return str;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2mField)) {
            return false;
        }
        GF2mField gF2mField = (GF2mField) obj;
        return this.degree == gF2mField.degree && this.polynomial == gF2mField.polynomial;
    }

    public int exp(int i, int i2) {
        int i3;
        if (i2 == 0) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i2 < 0) {
            i = inverse(i);
            i2 = -i2;
            i3 = 1;
        } else {
            i3 = 1;
        }
        while (i2 != 0) {
            if ((i2 & 1) == 1) {
                i3 = mult(i3, i);
            }
            i = mult(i, i);
            i2 >>>= 1;
        }
        return i3;
    }

    public int getDegree() {
        return this.degree;
    }

    public byte[] getEncoded() {
        return LittleEndianConversions.I2OSP(this.polynomial);
    }

    public int getPolynomial() {
        return this.polynomial;
    }

    public int getRandomElement(SecureRandom secureRandom) {
        return RandUtils.nextInt(secureRandom, 1 << this.degree);
    }

    public int getRandomNonZeroElement() {
        return getRandomNonZeroElement(new SecureRandom());
    }

    public int getRandomNonZeroElement(SecureRandom secureRandom) {
        int i = 0;
        int nextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
        while (nextInt == 0 && i < 1048576) {
            nextInt = RandUtils.nextInt(secureRandom, 1 << this.degree);
            i++;
        }
        if (i == 1048576) {
            return 1;
        }
        return nextInt;
    }

    public int hashCode() {
        return this.polynomial;
    }

    public int inverse(int i) {
        return exp(i, (1 << this.degree) - 2);
    }

    public boolean isElementOfThisField(int i) {
        return this.degree == 31 ? i >= 0 : i >= 0 && i < (1 << this.degree);
    }

    public int mult(int i, int i2) {
        return PolynomialRingGF2.modMultiply(i, i2, this.polynomial);
    }

    public int sqRoot(int i) {
        for (int i2 = 1; i2 < this.degree; i2++) {
            i = mult(i, i);
        }
        return i;
    }

    public String toString() {
        return "Finite Field GF(2^" + this.degree + ") = " + "GF(2)[X]/<" + polyToString(this.polynomial) + "> ";
    }
}
