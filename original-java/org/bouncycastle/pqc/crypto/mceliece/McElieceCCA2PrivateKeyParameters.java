package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
import org.bouncycastle.pqc.math.linearalgebra.GF2mField;
import org.bouncycastle.pqc.math.linearalgebra.Permutation;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

public class McElieceCCA2PrivateKeyParameters extends McElieceCCA2KeyParameters {
    private GF2mField field;
    private PolynomialGF2mSmallM goppaPoly;
    private GF2Matrix h;
    private int k;
    private int n;
    private String oid;
    private Permutation p;
    private PolynomialGF2mSmallM[] qInv;

    public McElieceCCA2PrivateKeyParameters(String str, int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, GF2Matrix gF2Matrix, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr, McElieceCCA2Parameters mcElieceCCA2Parameters) {
        super(true, mcElieceCCA2Parameters);
        this.oid = str;
        this.n = i;
        this.k = i2;
        this.field = gF2mField;
        this.goppaPoly = polynomialGF2mSmallM;
        this.p = permutation;
        this.h = gF2Matrix;
        this.qInv = polynomialGF2mSmallMArr;
    }

    public McElieceCCA2PrivateKeyParameters(String str, int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[][] bArr5, McElieceCCA2Parameters mcElieceCCA2Parameters) {
        super(true, mcElieceCCA2Parameters);
        this.oid = str;
        this.n = i;
        this.k = i2;
        this.field = new GF2mField(bArr);
        this.goppaPoly = new PolynomialGF2mSmallM(this.field, bArr2);
        this.p = new Permutation(bArr3);
        this.h = new GF2Matrix(bArr4);
        this.qInv = new PolynomialGF2mSmallM[bArr5.length];
        for (int i3 = 0; i3 < bArr5.length; i3++) {
            this.qInv[i3] = new PolynomialGF2mSmallM(this.field, bArr5[i3]);
        }
    }

    public GF2mField getField() {
        return this.field;
    }

    public PolynomialGF2mSmallM getGoppaPoly() {
        return this.goppaPoly;
    }

    public GF2Matrix getH() {
        return this.h;
    }

    public int getK() {
        return this.k;
    }

    public int getN() {
        return this.n;
    }

    public String getOIDString() {
        return this.oid;
    }

    public Permutation getP() {
        return this.p;
    }

    public PolynomialGF2mSmallM[] getQInv() {
        return this.qInv;
    }

    public int getT() {
        return this.goppaPoly.getDegree();
    }
}
