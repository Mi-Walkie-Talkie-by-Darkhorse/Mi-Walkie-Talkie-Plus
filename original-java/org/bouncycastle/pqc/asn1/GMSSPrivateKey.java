package org.bouncycastle.pqc.asn1;

import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.pqc.crypto.gmss.GMSSLeaf;
import org.bouncycastle.pqc.crypto.gmss.GMSSParameters;
import org.bouncycastle.pqc.crypto.gmss.GMSSRootCalc;
import org.bouncycastle.pqc.crypto.gmss.GMSSRootSig;
import org.bouncycastle.pqc.crypto.gmss.Treehash;

public class GMSSPrivateKey extends ASN1Object {
    private ASN1Primitive primitive;

    private GMSSPrivateKey(ASN1Sequence aSN1Sequence) {
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(0);
        int[] iArr = new int[aSN1Sequence2.size()];
        for (int i = 0; i < aSN1Sequence2.size(); i++) {
            iArr[i] = checkBigIntegerInIntRange(aSN1Sequence2.getObjectAt(i));
        }
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        byte[][] bArr = new byte[aSN1Sequence3.size()][];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = ((DEROctetString) aSN1Sequence3.getObjectAt(i2)).getOctets();
        }
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(2);
        byte[][] bArr2 = new byte[aSN1Sequence4.size()][];
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            bArr2[i3] = ((DEROctetString) aSN1Sequence4.getObjectAt(i3)).getOctets();
        }
        ASN1Sequence aSN1Sequence5 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        byte[][][] bArr3 = new byte[aSN1Sequence5.size()][][];
        for (int i4 = 0; i4 < bArr3.length; i4++) {
            ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Sequence5.getObjectAt(i4);
            bArr3[i4] = new byte[aSN1Sequence6.size()][];
            for (int i5 = 0; i5 < bArr3[i4].length; i5++) {
                bArr3[i4][i5] = ((DEROctetString) aSN1Sequence6.getObjectAt(i5)).getOctets();
            }
        }
        ASN1Sequence aSN1Sequence7 = (ASN1Sequence) aSN1Sequence.getObjectAt(4);
        byte[][][] bArr4 = new byte[aSN1Sequence7.size()][][];
        for (int i6 = 0; i6 < bArr4.length; i6++) {
            ASN1Sequence aSN1Sequence8 = (ASN1Sequence) aSN1Sequence7.getObjectAt(i6);
            bArr4[i6] = new byte[aSN1Sequence8.size()][];
            for (int i7 = 0; i7 < bArr4[i6].length; i7++) {
                bArr4[i6][i7] = ((DEROctetString) aSN1Sequence8.getObjectAt(i7)).getOctets();
            }
        }
        Treehash[][] treehashArr = new Treehash[((ASN1Sequence) aSN1Sequence.getObjectAt(5)).size()][];
    }

    public GMSSPrivateKey(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][][] bArr5, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, AlgorithmIdentifier algorithmIdentifier) {
        this.primitive = encode(iArr, bArr, bArr2, bArr3, bArr4, bArr5, treehashArr, treehashArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, gMSSLeafArr, gMSSLeafArr2, gMSSLeafArr3, iArr2, bArr6, gMSSRootCalcArr, bArr7, gMSSRootSigArr, gMSSParameters, new AlgorithmIdentifier[]{algorithmIdentifier});
    }

    private static int checkBigIntegerInIntRange(ASN1Encodable aSN1Encodable) {
        BigInteger value = ((ASN1Integer) aSN1Encodable).getValue();
        if (value.compareTo(BigInteger.valueOf(2147483647L)) <= 0 && value.compareTo(BigInteger.valueOf(-2147483648L)) >= 0) {
            return value.intValue();
        }
        throw new IllegalArgumentException("BigInteger not in Range: " + value.toString());
    }

    private ASN1Primitive encode(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Treehash[][] treehashArr, Treehash[][] treehashArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, GMSSLeaf[] gMSSLeafArr, GMSSLeaf[] gMSSLeafArr2, GMSSLeaf[] gMSSLeafArr3, int[] iArr2, byte[][] bArr6, GMSSRootCalc[] gMSSRootCalcArr, byte[][] bArr7, GMSSRootSig[] gMSSRootSigArr, GMSSParameters gMSSParameters, AlgorithmIdentifier[] algorithmIdentifierArr) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (int i : iArr) {
            aSN1EncodableVector2.add(new ASN1Integer((long) i));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        for (byte[] dEROctetString : bArr) {
            aSN1EncodableVector3.add(new DEROctetString(dEROctetString));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector3));
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        for (byte[] dEROctetString2 : bArr2) {
            aSN1EncodableVector4.add(new DEROctetString(dEROctetString2));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector4));
        ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        for (int i2 = 0; i2 < bArr3.length; i2++) {
            for (byte[] dEROctetString3 : bArr3[i2]) {
                aSN1EncodableVector5.add(new DEROctetString(dEROctetString3));
            }
            aSN1EncodableVector6.add(new DERSequence(aSN1EncodableVector5));
            aSN1EncodableVector5 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector6));
        ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
        for (int i3 = 0; i3 < bArr4.length; i3++) {
            for (byte[] dEROctetString4 : bArr4[i3]) {
                aSN1EncodableVector7.add(new DEROctetString(dEROctetString4));
            }
            aSN1EncodableVector8.add(new DERSequence(aSN1EncodableVector7));
            aSN1EncodableVector7 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector8));
        ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
        for (int i4 = 0; i4 < treehashArr.length; i4++) {
            int i5 = 0;
            while (i5 < treehashArr[i4].length) {
                aSN1EncodableVector11.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
                int i6 = treehashArr[i4][i5].getStatInt()[1];
                aSN1EncodableVector12.add(new DEROctetString(treehashArr[i4][i5].getStatByte()[0]));
                aSN1EncodableVector12.add(new DEROctetString(treehashArr[i4][i5].getStatByte()[1]));
                aSN1EncodableVector12.add(new DEROctetString(treehashArr[i4][i5].getStatByte()[2]));
                for (int i7 = 0; i7 < i6; i7++) {
                    aSN1EncodableVector12.add(new DEROctetString(treehashArr[i4][i5].getStatByte()[i7 + 3]));
                }
                aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector12));
                ASN1EncodableVector aSN1EncodableVector14 = new ASN1EncodableVector();
                aSN1EncodableVector13.add(new ASN1Integer((long) treehashArr[i4][i5].getStatInt()[0]));
                aSN1EncodableVector13.add(new ASN1Integer((long) i6));
                aSN1EncodableVector13.add(new ASN1Integer((long) treehashArr[i4][i5].getStatInt()[2]));
                aSN1EncodableVector13.add(new ASN1Integer((long) treehashArr[i4][i5].getStatInt()[3]));
                aSN1EncodableVector13.add(new ASN1Integer((long) treehashArr[i4][i5].getStatInt()[4]));
                aSN1EncodableVector13.add(new ASN1Integer((long) treehashArr[i4][i5].getStatInt()[5]));
                for (int i8 = 0; i8 < i6; i8++) {
                    aSN1EncodableVector13.add(new ASN1Integer((long) treehashArr[i4][i5].getStatInt()[i8 + 6]));
                }
                aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector13));
                ASN1EncodableVector aSN1EncodableVector15 = new ASN1EncodableVector();
                aSN1EncodableVector10.add(new DERSequence(aSN1EncodableVector11));
                aSN1EncodableVector11 = new ASN1EncodableVector();
                i5++;
                aSN1EncodableVector13 = aSN1EncodableVector15;
                aSN1EncodableVector12 = aSN1EncodableVector14;
            }
            aSN1EncodableVector9.add(new DERSequence(aSN1EncodableVector10));
            aSN1EncodableVector10 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector9));
        ASN1EncodableVector aSN1EncodableVector16 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector17 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector18 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector19 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector20 = new ASN1EncodableVector();
        for (int i9 = 0; i9 < treehashArr2.length; i9++) {
            int i10 = 0;
            while (i10 < treehashArr2[i9].length) {
                aSN1EncodableVector18.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
                int i11 = treehashArr2[i9][i10].getStatInt()[1];
                aSN1EncodableVector19.add(new DEROctetString(treehashArr2[i9][i10].getStatByte()[0]));
                aSN1EncodableVector19.add(new DEROctetString(treehashArr2[i9][i10].getStatByte()[1]));
                aSN1EncodableVector19.add(new DEROctetString(treehashArr2[i9][i10].getStatByte()[2]));
                for (int i12 = 0; i12 < i11; i12++) {
                    aSN1EncodableVector19.add(new DEROctetString(treehashArr2[i9][i10].getStatByte()[i12 + 3]));
                }
                aSN1EncodableVector18.add(new DERSequence(aSN1EncodableVector19));
                ASN1EncodableVector aSN1EncodableVector21 = new ASN1EncodableVector();
                aSN1EncodableVector20.add(new ASN1Integer((long) treehashArr2[i9][i10].getStatInt()[0]));
                aSN1EncodableVector20.add(new ASN1Integer((long) i11));
                aSN1EncodableVector20.add(new ASN1Integer((long) treehashArr2[i9][i10].getStatInt()[2]));
                aSN1EncodableVector20.add(new ASN1Integer((long) treehashArr2[i9][i10].getStatInt()[3]));
                aSN1EncodableVector20.add(new ASN1Integer((long) treehashArr2[i9][i10].getStatInt()[4]));
                aSN1EncodableVector20.add(new ASN1Integer((long) treehashArr2[i9][i10].getStatInt()[5]));
                for (int i13 = 0; i13 < i11; i13++) {
                    aSN1EncodableVector20.add(new ASN1Integer((long) treehashArr2[i9][i10].getStatInt()[i13 + 6]));
                }
                aSN1EncodableVector18.add(new DERSequence(aSN1EncodableVector20));
                ASN1EncodableVector aSN1EncodableVector22 = new ASN1EncodableVector();
                aSN1EncodableVector17.add(new DERSequence(aSN1EncodableVector18));
                aSN1EncodableVector18 = new ASN1EncodableVector();
                i10++;
                aSN1EncodableVector20 = aSN1EncodableVector22;
                aSN1EncodableVector19 = aSN1EncodableVector21;
            }
            aSN1EncodableVector16.add(new DERSequence((ASN1Encodable) new DERSequence(aSN1EncodableVector17)));
            aSN1EncodableVector17 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector16));
        ASN1EncodableVector aSN1EncodableVector23 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector24 = new ASN1EncodableVector();
        for (int i14 = 0; i14 < bArr5.length; i14++) {
            for (byte[] dEROctetString5 : bArr5[i14]) {
                aSN1EncodableVector23.add(new DEROctetString(dEROctetString5));
            }
            aSN1EncodableVector24.add(new DERSequence(aSN1EncodableVector23));
            aSN1EncodableVector23 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector24));
        ASN1EncodableVector aSN1EncodableVector25 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector26 = new ASN1EncodableVector();
        int i15 = 0;
        ASN1EncodableVector aSN1EncodableVector27 = aSN1EncodableVector25;
        while (true) {
            int i16 = i15;
            if (i16 >= vectorArr.length) {
                break;
            }
            int i17 = 0;
            while (true) {
                int i18 = i17;
                if (i18 >= vectorArr[i16].size()) {
                    break;
                }
                aSN1EncodableVector27.add(new DEROctetString((byte[]) vectorArr[i16].elementAt(i18)));
                i17 = i18 + 1;
            }
            aSN1EncodableVector26.add(new DERSequence(aSN1EncodableVector27));
            aSN1EncodableVector27 = new ASN1EncodableVector();
            i15 = i16 + 1;
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector26));
        ASN1EncodableVector aSN1EncodableVector28 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector29 = new ASN1EncodableVector();
        int i19 = 0;
        ASN1EncodableVector aSN1EncodableVector30 = aSN1EncodableVector28;
        while (true) {
            int i20 = i19;
            if (i20 >= vectorArr2.length) {
                break;
            }
            int i21 = 0;
            while (true) {
                int i22 = i21;
                if (i22 >= vectorArr2[i20].size()) {
                    break;
                }
                aSN1EncodableVector30.add(new DEROctetString((byte[]) vectorArr2[i20].elementAt(i22)));
                i21 = i22 + 1;
            }
            aSN1EncodableVector29.add(new DERSequence(aSN1EncodableVector30));
            aSN1EncodableVector30 = new ASN1EncodableVector();
            i19 = i20 + 1;
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector29));
        ASN1EncodableVector aSN1EncodableVector31 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector32 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector33 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector34 = aSN1EncodableVector31;
        ASN1EncodableVector aSN1EncodableVector35 = aSN1EncodableVector32;
        int i23 = 0;
        while (i23 < vectorArr3.length) {
            ASN1EncodableVector aSN1EncodableVector36 = aSN1EncodableVector34;
            for (int i24 = 0; i24 < vectorArr3[i23].length; i24++) {
                int i25 = 0;
                while (true) {
                    int i26 = i25;
                    if (i26 >= vectorArr3[i23][i24].size()) {
                        break;
                    }
                    aSN1EncodableVector36.add(new DEROctetString((byte[]) vectorArr3[i23][i24].elementAt(i26)));
                    i25 = i26 + 1;
                }
                aSN1EncodableVector35.add(new DERSequence(aSN1EncodableVector36));
                aSN1EncodableVector36 = new ASN1EncodableVector();
            }
            aSN1EncodableVector33.add(new DERSequence(aSN1EncodableVector35));
            aSN1EncodableVector35 = new ASN1EncodableVector();
            i23++;
            aSN1EncodableVector34 = aSN1EncodableVector36;
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector33));
        ASN1EncodableVector aSN1EncodableVector37 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector38 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector39 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector40 = aSN1EncodableVector37;
        ASN1EncodableVector aSN1EncodableVector41 = aSN1EncodableVector38;
        int i27 = 0;
        while (i27 < vectorArr4.length) {
            ASN1EncodableVector aSN1EncodableVector42 = aSN1EncodableVector40;
            for (int i28 = 0; i28 < vectorArr4[i27].length; i28++) {
                int i29 = 0;
                while (true) {
                    int i30 = i29;
                    if (i30 >= vectorArr4[i27][i28].size()) {
                        break;
                    }
                    aSN1EncodableVector42.add(new DEROctetString((byte[]) vectorArr4[i27][i28].elementAt(i30)));
                    i29 = i30 + 1;
                }
                aSN1EncodableVector41.add(new DERSequence(aSN1EncodableVector42));
                aSN1EncodableVector42 = new ASN1EncodableVector();
            }
            aSN1EncodableVector39.add(new DERSequence(aSN1EncodableVector41));
            aSN1EncodableVector41 = new ASN1EncodableVector();
            i27++;
            aSN1EncodableVector40 = aSN1EncodableVector42;
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector39));
        ASN1EncodableVector aSN1EncodableVector43 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector44 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector45 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector46 = new ASN1EncodableVector();
        for (int i31 = 0; i31 < gMSSLeafArr.length; i31++) {
            aSN1EncodableVector44.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
            byte[][] statByte = gMSSLeafArr[i31].getStatByte();
            aSN1EncodableVector45.add(new DEROctetString(statByte[0]));
            aSN1EncodableVector45.add(new DEROctetString(statByte[1]));
            aSN1EncodableVector45.add(new DEROctetString(statByte[2]));
            aSN1EncodableVector45.add(new DEROctetString(statByte[3]));
            aSN1EncodableVector44.add(new DERSequence(aSN1EncodableVector45));
            aSN1EncodableVector45 = new ASN1EncodableVector();
            int[] statInt = gMSSLeafArr[i31].getStatInt();
            aSN1EncodableVector46.add(new ASN1Integer((long) statInt[0]));
            aSN1EncodableVector46.add(new ASN1Integer((long) statInt[1]));
            aSN1EncodableVector46.add(new ASN1Integer((long) statInt[2]));
            aSN1EncodableVector46.add(new ASN1Integer((long) statInt[3]));
            aSN1EncodableVector44.add(new DERSequence(aSN1EncodableVector46));
            aSN1EncodableVector46 = new ASN1EncodableVector();
            aSN1EncodableVector43.add(new DERSequence(aSN1EncodableVector44));
            aSN1EncodableVector44 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector43));
        ASN1EncodableVector aSN1EncodableVector47 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector48 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector49 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector50 = new ASN1EncodableVector();
        for (int i32 = 0; i32 < gMSSLeafArr2.length; i32++) {
            aSN1EncodableVector48.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
            byte[][] statByte2 = gMSSLeafArr2[i32].getStatByte();
            aSN1EncodableVector49.add(new DEROctetString(statByte2[0]));
            aSN1EncodableVector49.add(new DEROctetString(statByte2[1]));
            aSN1EncodableVector49.add(new DEROctetString(statByte2[2]));
            aSN1EncodableVector49.add(new DEROctetString(statByte2[3]));
            aSN1EncodableVector48.add(new DERSequence(aSN1EncodableVector49));
            aSN1EncodableVector49 = new ASN1EncodableVector();
            int[] statInt2 = gMSSLeafArr2[i32].getStatInt();
            aSN1EncodableVector50.add(new ASN1Integer((long) statInt2[0]));
            aSN1EncodableVector50.add(new ASN1Integer((long) statInt2[1]));
            aSN1EncodableVector50.add(new ASN1Integer((long) statInt2[2]));
            aSN1EncodableVector50.add(new ASN1Integer((long) statInt2[3]));
            aSN1EncodableVector48.add(new DERSequence(aSN1EncodableVector50));
            aSN1EncodableVector50 = new ASN1EncodableVector();
            aSN1EncodableVector47.add(new DERSequence(aSN1EncodableVector48));
            aSN1EncodableVector48 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector47));
        ASN1EncodableVector aSN1EncodableVector51 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector52 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector53 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector54 = new ASN1EncodableVector();
        for (int i33 = 0; i33 < gMSSLeafArr3.length; i33++) {
            aSN1EncodableVector52.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
            byte[][] statByte3 = gMSSLeafArr3[i33].getStatByte();
            aSN1EncodableVector53.add(new DEROctetString(statByte3[0]));
            aSN1EncodableVector53.add(new DEROctetString(statByte3[1]));
            aSN1EncodableVector53.add(new DEROctetString(statByte3[2]));
            aSN1EncodableVector53.add(new DEROctetString(statByte3[3]));
            aSN1EncodableVector52.add(new DERSequence(aSN1EncodableVector53));
            aSN1EncodableVector53 = new ASN1EncodableVector();
            int[] statInt3 = gMSSLeafArr3[i33].getStatInt();
            aSN1EncodableVector54.add(new ASN1Integer((long) statInt3[0]));
            aSN1EncodableVector54.add(new ASN1Integer((long) statInt3[1]));
            aSN1EncodableVector54.add(new ASN1Integer((long) statInt3[2]));
            aSN1EncodableVector54.add(new ASN1Integer((long) statInt3[3]));
            aSN1EncodableVector52.add(new DERSequence(aSN1EncodableVector54));
            aSN1EncodableVector54 = new ASN1EncodableVector();
            aSN1EncodableVector51.add(new DERSequence(aSN1EncodableVector52));
            aSN1EncodableVector52 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector51));
        ASN1EncodableVector aSN1EncodableVector55 = new ASN1EncodableVector();
        for (int i34 : iArr2) {
            aSN1EncodableVector55.add(new ASN1Integer((long) i34));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector55));
        ASN1EncodableVector aSN1EncodableVector56 = new ASN1EncodableVector();
        for (byte[] dEROctetString6 : bArr6) {
            aSN1EncodableVector56.add(new DEROctetString(dEROctetString6));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector56));
        ASN1EncodableVector aSN1EncodableVector57 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector58 = new ASN1EncodableVector();
        new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector59 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector60 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector61 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector62 = aSN1EncodableVector58;
        ASN1EncodableVector aSN1EncodableVector63 = new ASN1EncodableVector();
        int i35 = 0;
        ASN1EncodableVector aSN1EncodableVector64 = aSN1EncodableVector61;
        ASN1EncodableVector aSN1EncodableVector65 = aSN1EncodableVector63;
        while (i35 < gMSSRootCalcArr.length) {
            aSN1EncodableVector62.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
            new ASN1EncodableVector();
            int i36 = gMSSRootCalcArr[i35].getStatInt()[0];
            int i37 = gMSSRootCalcArr[i35].getStatInt()[7];
            aSN1EncodableVector59.add(new DEROctetString(gMSSRootCalcArr[i35].getStatByte()[0]));
            for (int i38 = 0; i38 < i36; i38++) {
                aSN1EncodableVector59.add(new DEROctetString(gMSSRootCalcArr[i35].getStatByte()[i38 + 1]));
            }
            for (int i39 = 0; i39 < i37; i39++) {
                aSN1EncodableVector59.add(new DEROctetString(gMSSRootCalcArr[i35].getStatByte()[i36 + 1 + i39]));
            }
            aSN1EncodableVector62.add(new DERSequence(aSN1EncodableVector59));
            ASN1EncodableVector aSN1EncodableVector66 = new ASN1EncodableVector();
            aSN1EncodableVector60.add(new ASN1Integer((long) i36));
            aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[1]));
            aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[2]));
            aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[3]));
            aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[4]));
            aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[5]));
            aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[6]));
            aSN1EncodableVector60.add(new ASN1Integer((long) i37));
            for (int i40 = 0; i40 < i36; i40++) {
                aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[i40 + 8]));
            }
            for (int i41 = 0; i41 < i37; i41++) {
                aSN1EncodableVector60.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getStatInt()[i36 + 8 + i41]));
            }
            aSN1EncodableVector62.add(new DERSequence(aSN1EncodableVector60));
            ASN1EncodableVector aSN1EncodableVector67 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector68 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector69 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector70 = new ASN1EncodableVector();
            if (gMSSRootCalcArr[i35].getTreehash() != null) {
                for (int i42 = 0; i42 < gMSSRootCalcArr[i35].getTreehash().length; i42++) {
                    aSN1EncodableVector68.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
                    int i43 = gMSSRootCalcArr[i35].getTreehash()[i42].getStatInt()[1];
                    aSN1EncodableVector69.add(new DEROctetString(gMSSRootCalcArr[i35].getTreehash()[i42].getStatByte()[0]));
                    aSN1EncodableVector69.add(new DEROctetString(gMSSRootCalcArr[i35].getTreehash()[i42].getStatByte()[1]));
                    aSN1EncodableVector69.add(new DEROctetString(gMSSRootCalcArr[i35].getTreehash()[i42].getStatByte()[2]));
                    for (int i44 = 0; i44 < i43; i44++) {
                        aSN1EncodableVector69.add(new DEROctetString(gMSSRootCalcArr[i35].getTreehash()[i42].getStatByte()[i44 + 3]));
                    }
                    aSN1EncodableVector68.add(new DERSequence(aSN1EncodableVector69));
                    aSN1EncodableVector69 = new ASN1EncodableVector();
                    aSN1EncodableVector70.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getTreehash()[i42].getStatInt()[0]));
                    aSN1EncodableVector70.add(new ASN1Integer((long) i43));
                    aSN1EncodableVector70.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getTreehash()[i42].getStatInt()[2]));
                    aSN1EncodableVector70.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getTreehash()[i42].getStatInt()[3]));
                    aSN1EncodableVector70.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getTreehash()[i42].getStatInt()[4]));
                    aSN1EncodableVector70.add(new ASN1Integer((long) gMSSRootCalcArr[i35].getTreehash()[i42].getStatInt()[5]));
                    for (int i45 = 0; i45 < i43; i45++) {
                        ASN1Integer aSN1Integer = new ASN1Integer((long) gMSSRootCalcArr[i35].getTreehash()[i42].getStatInt()[i45 + 6]);
                        aSN1EncodableVector70.add(aSN1Integer);
                    }
                    aSN1EncodableVector68.add(new DERSequence(aSN1EncodableVector70));
                    aSN1EncodableVector70 = new ASN1EncodableVector();
                    aSN1EncodableVector64.add(new DERSequence(aSN1EncodableVector68));
                    aSN1EncodableVector68 = new ASN1EncodableVector();
                }
            }
            aSN1EncodableVector62.add(new DERSequence(aSN1EncodableVector64));
            ASN1EncodableVector aSN1EncodableVector71 = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector72 = new ASN1EncodableVector();
            if (gMSSRootCalcArr[i35].getRetain() != null) {
                int i46 = 0;
                ASN1EncodableVector aSN1EncodableVector73 = aSN1EncodableVector72;
                while (true) {
                    int i47 = i46;
                    if (i47 >= gMSSRootCalcArr[i35].getRetain().length) {
                        break;
                    }
                    int i48 = 0;
                    while (true) {
                        int i49 = i48;
                        if (i49 >= gMSSRootCalcArr[i35].getRetain()[i47].size()) {
                            break;
                        }
                        aSN1EncodableVector73.add(new DEROctetString((byte[]) gMSSRootCalcArr[i35].getRetain()[i47].elementAt(i49)));
                        i48 = i49 + 1;
                    }
                    aSN1EncodableVector65.add(new DERSequence(aSN1EncodableVector73));
                    aSN1EncodableVector73 = new ASN1EncodableVector();
                    i46 = i47 + 1;
                }
            }
            aSN1EncodableVector62.add(new DERSequence(aSN1EncodableVector65));
            aSN1EncodableVector65 = new ASN1EncodableVector();
            aSN1EncodableVector57.add(new DERSequence(aSN1EncodableVector62));
            aSN1EncodableVector62 = new ASN1EncodableVector();
            i35++;
            aSN1EncodableVector64 = aSN1EncodableVector71;
            aSN1EncodableVector60 = aSN1EncodableVector67;
            aSN1EncodableVector59 = aSN1EncodableVector66;
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector57));
        ASN1EncodableVector aSN1EncodableVector74 = new ASN1EncodableVector();
        for (byte[] dEROctetString7 : bArr7) {
            aSN1EncodableVector74.add(new DEROctetString(dEROctetString7));
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector74));
        ASN1EncodableVector aSN1EncodableVector75 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector76 = new ASN1EncodableVector();
        new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector77 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector78 = new ASN1EncodableVector();
        for (int i50 = 0; i50 < gMSSRootSigArr.length; i50++) {
            aSN1EncodableVector76.add(new DERSequence((ASN1Encodable) algorithmIdentifierArr[0]));
            new ASN1EncodableVector();
            aSN1EncodableVector77.add(new DEROctetString(gMSSRootSigArr[i50].getStatByte()[0]));
            aSN1EncodableVector77.add(new DEROctetString(gMSSRootSigArr[i50].getStatByte()[1]));
            aSN1EncodableVector77.add(new DEROctetString(gMSSRootSigArr[i50].getStatByte()[2]));
            aSN1EncodableVector77.add(new DEROctetString(gMSSRootSigArr[i50].getStatByte()[3]));
            aSN1EncodableVector77.add(new DEROctetString(gMSSRootSigArr[i50].getStatByte()[4]));
            aSN1EncodableVector76.add(new DERSequence(aSN1EncodableVector77));
            aSN1EncodableVector77 = new ASN1EncodableVector();
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[0]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[1]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[2]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[3]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[4]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[5]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[6]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[7]));
            aSN1EncodableVector78.add(new ASN1Integer((long) gMSSRootSigArr[i50].getStatInt()[8]));
            aSN1EncodableVector76.add(new DERSequence(aSN1EncodableVector78));
            aSN1EncodableVector78 = new ASN1EncodableVector();
            aSN1EncodableVector75.add(new DERSequence(aSN1EncodableVector76));
            aSN1EncodableVector76 = new ASN1EncodableVector();
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector75));
        ASN1EncodableVector aSN1EncodableVector79 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector80 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector81 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector82 = new ASN1EncodableVector();
        for (int i51 = 0; i51 < gMSSParameters.getHeightOfTrees().length; i51++) {
            aSN1EncodableVector80.add(new ASN1Integer((long) gMSSParameters.getHeightOfTrees()[i51]));
            aSN1EncodableVector81.add(new ASN1Integer((long) gMSSParameters.getWinternitzParameter()[i51]));
            aSN1EncodableVector82.add(new ASN1Integer((long) gMSSParameters.getK()[i51]));
        }
        aSN1EncodableVector79.add(new ASN1Integer((long) gMSSParameters.getNumOfLayers()));
        aSN1EncodableVector79.add(new DERSequence(aSN1EncodableVector80));
        aSN1EncodableVector79.add(new DERSequence(aSN1EncodableVector81));
        aSN1EncodableVector79.add(new DERSequence(aSN1EncodableVector82));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector79));
        ASN1EncodableVector aSN1EncodableVector83 = new ASN1EncodableVector();
        for (AlgorithmIdentifier add : algorithmIdentifierArr) {
            aSN1EncodableVector83.add(add);
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector83));
        return new DERSequence(aSN1EncodableVector);
    }

    public ASN1Primitive toASN1Primitive() {
        return this.primitive;
    }
}
