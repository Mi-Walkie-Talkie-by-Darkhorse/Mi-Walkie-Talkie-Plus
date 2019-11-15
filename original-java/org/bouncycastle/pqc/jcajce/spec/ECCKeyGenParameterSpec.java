package org.bouncycastle.pqc.jcajce.spec;

import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialRingGF2;

public class ECCKeyGenParameterSpec implements AlgorithmParameterSpec {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private int fieldPoly;
    private int m;
    private int n;
    private int t;

    public ECCKeyGenParameterSpec() {
        this(11, 50);
    }

    public ECCKeyGenParameterSpec(int i) throws InvalidParameterException {
        if (i < 1) {
            throw new InvalidParameterException("key size must be positive");
        }
        this.m = 0;
        this.n = 1;
        while (this.n < i) {
            this.n <<= 1;
            this.m++;
        }
        this.t = this.n >>> 1;
        this.t /= this.m;
        this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(this.m);
    }

    public ECCKeyGenParameterSpec(int i, int i2) throws InvalidParameterException {
        if (i < 1) {
            throw new InvalidParameterException("m must be positive");
        } else if (i > 32) {
            throw new InvalidParameterException("m is too large");
        } else {
            this.m = i;
            this.n = 1 << i;
            if (i2 < 0) {
                throw new InvalidParameterException("t must be positive");
            } else if (i2 > this.n) {
                throw new InvalidParameterException("t must be less than n = 2^m");
            } else {
                this.t = i2;
                this.fieldPoly = PolynomialRingGF2.getIrreduciblePolynomial(i);
            }
        }
    }

    public ECCKeyGenParameterSpec(int i, int i2, int i3) throws InvalidParameterException {
        this.m = i;
        if (i < 1) {
            throw new InvalidParameterException("m must be positive");
        } else if (i > 32) {
            throw new InvalidParameterException(" m is too large");
        } else {
            this.n = 1 << i;
            this.t = i2;
            if (i2 < 0) {
                throw new InvalidParameterException("t must be positive");
            } else if (i2 > this.n) {
                throw new InvalidParameterException("t must be less than n = 2^m");
            } else if (PolynomialRingGF2.degree(i3) != i || !PolynomialRingGF2.isIrreducible(i3)) {
                throw new InvalidParameterException("polynomial is not a field polynomial for GF(2^m)");
            } else {
                this.fieldPoly = i3;
            }
        }
    }

    public int getFieldPoly() {
        return this.fieldPoly;
    }

    public int getM() {
        return this.m;
    }

    public int getN() {
        return this.n;
    }

    public int getT() {
        return this.t;
    }
}
