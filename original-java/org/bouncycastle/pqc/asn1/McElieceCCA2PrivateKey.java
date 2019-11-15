package org.bouncycastle.pqc.asn1;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;
import org.bouncycastle.pqc.math.linearalgebra.GF2mField;
import org.bouncycastle.pqc.math.linearalgebra.Permutation;
import org.bouncycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

public class McElieceCCA2PrivateKey extends ASN1Object {
    private byte[] encField;
    private byte[] encGp;
    private byte[] encH;
    private byte[] encP;
    private byte[][] encqInv;
    private int k;
    private int n;
    private ASN1ObjectIdentifier oid;

    public McElieceCCA2PrivateKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, GF2Matrix gF2Matrix, PolynomialGF2mSmallM[] polynomialGF2mSmallMArr) {
        this.oid = aSN1ObjectIdentifier;
        this.n = i;
        this.k = i2;
        this.encField = gF2mField.getEncoded();
        this.encGp = polynomialGF2mSmallM.getEncoded();
        this.encP = permutation.getEncoded();
        this.encH = gF2Matrix.getEncoded();
        this.encqInv = new byte[polynomialGF2mSmallMArr.length][];
        for (int i3 = 0; i3 != polynomialGF2mSmallMArr.length; i3++) {
            this.encqInv[i3] = polynomialGF2mSmallMArr[i3].getEncoded();
        }
    }

    private McElieceCCA2PrivateKey(ASN1Sequence aSN1Sequence) {
        int i = 0;
        this.oid = (ASN1ObjectIdentifier) aSN1Sequence.getObjectAt(0);
        this.n = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).getValue().intValue();
        this.k = ((ASN1Integer) aSN1Sequence.getObjectAt(2)).getValue().intValue();
        this.encField = ((ASN1OctetString) aSN1Sequence.getObjectAt(3)).getOctets();
        this.encGp = ((ASN1OctetString) aSN1Sequence.getObjectAt(4)).getOctets();
        this.encP = ((ASN1OctetString) aSN1Sequence.getObjectAt(5)).getOctets();
        this.encH = ((ASN1OctetString) aSN1Sequence.getObjectAt(6)).getOctets();
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(7);
        this.encqInv = new byte[aSN1Sequence2.size()][];
        while (true) {
            int i2 = i;
            if (i2 < aSN1Sequence2.size()) {
                this.encqInv[i2] = ((ASN1OctetString) aSN1Sequence2.getObjectAt(i2)).getOctets();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public static McElieceCCA2PrivateKey getInstance(Object obj) {
        if (obj instanceof McElieceCCA2PrivateKey) {
            return (McElieceCCA2PrivateKey) obj;
        }
        if (obj != null) {
            return new McElieceCCA2PrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2mField getField() {
        return new GF2mField(this.encField);
    }

    public PolynomialGF2mSmallM getGoppaPoly() {
        return new PolynomialGF2mSmallM(getField(), this.encGp);
    }

    public GF2Matrix getH() {
        return new GF2Matrix(this.encH);
    }

    public int getK() {
        return this.k;
    }

    public int getN() {
        return this.n;
    }

    public ASN1ObjectIdentifier getOID() {
        return this.oid;
    }

    public Permutation getP() {
        return new Permutation(this.encP);
    }

    public PolynomialGF2mSmallM[] getQInv() {
        PolynomialGF2mSmallM[] polynomialGF2mSmallMArr = new PolynomialGF2mSmallM[this.encqInv.length];
        GF2mField field = getField();
        for (int i = 0; i < this.encqInv.length; i++) {
            polynomialGF2mSmallMArr[i] = new PolynomialGF2mSmallM(field, this.encqInv[i]);
        }
        return polynomialGF2mSmallMArr;
    }

    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.oid);
        aSN1EncodableVector.add(new ASN1Integer((long) this.n));
        aSN1EncodableVector.add(new ASN1Integer((long) this.k));
        aSN1EncodableVector.add(new DEROctetString(this.encField));
        aSN1EncodableVector.add(new DEROctetString(this.encGp));
        aSN1EncodableVector.add(new DEROctetString(this.encP));
        aSN1EncodableVector.add(new DEROctetString(this.encH));
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (byte[] dEROctetString : this.encqInv) {
            aSN1EncodableVector2.add(new DEROctetString(dEROctetString));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        return new DERSequence(aSN1EncodableVector);
    }
}
