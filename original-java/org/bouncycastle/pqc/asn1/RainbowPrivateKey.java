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
import org.bouncycastle.pqc.crypto.rainbow.Layer;
import org.bouncycastle.pqc.crypto.rainbow.util.RainbowUtil;

public class RainbowPrivateKey extends ASN1Object {
    private byte[] b1;
    private byte[] b2;
    private byte[][] invA1;
    private byte[][] invA2;
    private Layer[] layers;
    private ASN1ObjectIdentifier oid;
    private ASN1Integer version;
    private byte[] vi;

    private RainbowPrivateKey(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.getObjectAt(0) instanceof ASN1Integer) {
            this.version = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0));
        } else {
            this.oid = ASN1ObjectIdentifier.getInstance(aSN1Sequence.getObjectAt(0));
        }
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        this.invA1 = new byte[aSN1Sequence2.size()][];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= aSN1Sequence2.size()) {
                break;
            }
            this.invA1[i2] = ((ASN1OctetString) aSN1Sequence2.getObjectAt(i2)).getOctets();
            i = i2 + 1;
        }
        this.b1 = ((ASN1OctetString) ((ASN1Sequence) aSN1Sequence.getObjectAt(2)).getObjectAt(0)).getOctets();
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        this.invA2 = new byte[aSN1Sequence3.size()][];
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= aSN1Sequence3.size()) {
                break;
            }
            this.invA2[i4] = ((ASN1OctetString) aSN1Sequence3.getObjectAt(i4)).getOctets();
            i3 = i4 + 1;
        }
        this.b2 = ((ASN1OctetString) ((ASN1Sequence) aSN1Sequence.getObjectAt(4)).getObjectAt(0)).getOctets();
        this.vi = ((ASN1OctetString) ((ASN1Sequence) aSN1Sequence.getObjectAt(5)).getObjectAt(0)).getOctets();
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(6);
        byte[][][][] bArr = new byte[aSN1Sequence4.size()][][][];
        byte[][][][] bArr2 = new byte[aSN1Sequence4.size()][][][];
        byte[][][] bArr3 = new byte[aSN1Sequence4.size()][][];
        byte[][] bArr4 = new byte[aSN1Sequence4.size()][];
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= aSN1Sequence4.size()) {
                break;
            }
            ASN1Sequence aSN1Sequence5 = (ASN1Sequence) aSN1Sequence4.getObjectAt(i6);
            ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(0);
            bArr[i6] = new byte[aSN1Sequence6.size()][][];
            int i7 = 0;
            while (true) {
                int i8 = i7;
                if (i8 >= aSN1Sequence6.size()) {
                    break;
                }
                ASN1Sequence aSN1Sequence7 = (ASN1Sequence) aSN1Sequence6.getObjectAt(i8);
                bArr[i6][i8] = new byte[aSN1Sequence7.size()][];
                int i9 = 0;
                while (true) {
                    int i10 = i9;
                    if (i10 >= aSN1Sequence7.size()) {
                        break;
                    }
                    bArr[i6][i8][i10] = ((ASN1OctetString) aSN1Sequence7.getObjectAt(i10)).getOctets();
                    i9 = i10 + 1;
                }
                i7 = i8 + 1;
            }
            ASN1Sequence aSN1Sequence8 = (ASN1Sequence) aSN1Sequence5.getObjectAt(1);
            bArr2[i6] = new byte[aSN1Sequence8.size()][][];
            int i11 = 0;
            while (true) {
                int i12 = i11;
                if (i12 >= aSN1Sequence8.size()) {
                    break;
                }
                ASN1Sequence aSN1Sequence9 = (ASN1Sequence) aSN1Sequence8.getObjectAt(i12);
                bArr2[i6][i12] = new byte[aSN1Sequence9.size()][];
                int i13 = 0;
                while (true) {
                    int i14 = i13;
                    if (i14 >= aSN1Sequence9.size()) {
                        break;
                    }
                    bArr2[i6][i12][i14] = ((ASN1OctetString) aSN1Sequence9.getObjectAt(i14)).getOctets();
                    i13 = i14 + 1;
                }
                i11 = i12 + 1;
            }
            ASN1Sequence aSN1Sequence10 = (ASN1Sequence) aSN1Sequence5.getObjectAt(2);
            bArr3[i6] = new byte[aSN1Sequence10.size()][];
            int i15 = 0;
            while (true) {
                int i16 = i15;
                if (i16 >= aSN1Sequence10.size()) {
                    break;
                }
                bArr3[i6][i16] = ((ASN1OctetString) aSN1Sequence10.getObjectAt(i16)).getOctets();
                i15 = i16 + 1;
            }
            bArr4[i6] = ((ASN1OctetString) aSN1Sequence5.getObjectAt(3)).getOctets();
            i5 = i6 + 1;
        }
        int length = this.vi.length - 1;
        this.layers = new Layer[length];
        for (int i17 = 0; i17 < length; i17++) {
            this.layers[i17] = new Layer(this.vi[i17], this.vi[i17 + 1], RainbowUtil.convertArray(bArr[i17]), RainbowUtil.convertArray(bArr2[i17]), RainbowUtil.convertArray(bArr3[i17]), RainbowUtil.convertArray(bArr4[i17]));
        }
    }

    public RainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.version = new ASN1Integer(1);
        this.invA1 = RainbowUtil.convertArray(sArr);
        this.b1 = RainbowUtil.convertArray(sArr2);
        this.invA2 = RainbowUtil.convertArray(sArr3);
        this.b2 = RainbowUtil.convertArray(sArr4);
        this.vi = RainbowUtil.convertIntArray(iArr);
        this.layers = layerArr;
    }

    public static RainbowPrivateKey getInstance(Object obj) {
        if (obj instanceof RainbowPrivateKey) {
            return (RainbowPrivateKey) obj;
        }
        if (obj != null) {
            return new RainbowPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public short[] getB1() {
        return RainbowUtil.convertArray(this.b1);
    }

    public short[] getB2() {
        return RainbowUtil.convertArray(this.b2);
    }

    public short[][] getInvA1() {
        return RainbowUtil.convertArray(this.invA1);
    }

    public short[][] getInvA2() {
        return RainbowUtil.convertArray(this.invA2);
    }

    public Layer[] getLayers() {
        return this.layers;
    }

    public ASN1Integer getVersion() {
        return this.version;
    }

    public int[] getVi() {
        return RainbowUtil.convertArraytoInt(this.vi);
    }

    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.version != null) {
            aSN1EncodableVector.add(this.version);
        } else {
            aSN1EncodableVector.add(this.oid);
        }
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (byte[] dEROctetString : this.invA1) {
            aSN1EncodableVector2.add(new DEROctetString(dEROctetString));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        aSN1EncodableVector3.add(new DEROctetString(this.b1));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector3));
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        for (byte[] dEROctetString2 : this.invA2) {
            aSN1EncodableVector4.add(new DEROctetString(dEROctetString2));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector4));
        ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
        aSN1EncodableVector5.add(new DEROctetString(this.b2));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector5));
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        aSN1EncodableVector6.add(new DEROctetString(this.vi));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector6));
        ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
        for (int i = 0; i < this.layers.length; i++) {
            ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
            byte[][][] convertArray = RainbowUtil.convertArray(this.layers[i].getCoeffAlpha());
            ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
            for (int i2 = 0; i2 < convertArray.length; i2++) {
                ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
                for (byte[] dEROctetString3 : convertArray[i2]) {
                    aSN1EncodableVector10.add(new DEROctetString(dEROctetString3));
                }
                aSN1EncodableVector9.add(new DERSequence(aSN1EncodableVector10));
            }
            aSN1EncodableVector8.add(new DERSequence(aSN1EncodableVector9));
            byte[][][] convertArray2 = RainbowUtil.convertArray(this.layers[i].getCoeffBeta());
            ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
            for (int i3 = 0; i3 < convertArray2.length; i3++) {
                ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
                for (byte[] dEROctetString4 : convertArray2[i3]) {
                    aSN1EncodableVector12.add(new DEROctetString(dEROctetString4));
                }
                aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector12));
            }
            aSN1EncodableVector8.add(new DERSequence(aSN1EncodableVector11));
            byte[][] convertArray3 = RainbowUtil.convertArray(this.layers[i].getCoeffGamma());
            ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
            for (byte[] dEROctetString5 : convertArray3) {
                aSN1EncodableVector13.add(new DEROctetString(dEROctetString5));
            }
            aSN1EncodableVector8.add(new DERSequence(aSN1EncodableVector13));
            aSN1EncodableVector8.add(new DEROctetString(RainbowUtil.convertArray(this.layers[i].getCoeffEta())));
            aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector8));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector7));
        return new DERSequence(aSN1EncodableVector);
    }
}
