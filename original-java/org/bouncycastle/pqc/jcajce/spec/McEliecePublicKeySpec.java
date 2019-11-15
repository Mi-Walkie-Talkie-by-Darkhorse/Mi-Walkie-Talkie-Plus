package org.bouncycastle.pqc.jcajce.spec;

import java.security.spec.KeySpec;
import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;

public class McEliecePublicKeySpec implements KeySpec {
    private GF2Matrix g;
    private int n;
    private String oid;
    private int t;

    public McEliecePublicKeySpec(String str, int i, int i2, GF2Matrix gF2Matrix) {
        this.oid = str;
        this.n = i;
        this.t = i2;
        this.g = new GF2Matrix(gF2Matrix);
    }

    public McEliecePublicKeySpec(String str, int i, int i2, byte[] bArr) {
        this.oid = str;
        this.n = i2;
        this.t = i;
        this.g = new GF2Matrix(bArr);
    }

    public GF2Matrix getG() {
        return this.g;
    }

    public int getN() {
        return this.n;
    }

    public String getOIDString() {
        return this.oid;
    }

    public int getT() {
        return this.t;
    }
}
