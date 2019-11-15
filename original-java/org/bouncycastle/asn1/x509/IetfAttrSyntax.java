package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTF8String;

public class IetfAttrSyntax extends ASN1Object {
    public static final int VALUE_OCTETS = 1;
    public static final int VALUE_OID = 2;
    public static final int VALUE_UTF8 = 3;
    GeneralNames policyAuthority = null;
    int valueChoice = -1;
    Vector values = new Vector();

    private IetfAttrSyntax(ASN1Sequence aSN1Sequence) {
        int i;
        int i2;
        if (aSN1Sequence.getObjectAt(0) instanceof ASN1TaggedObject) {
            this.policyAuthority = GeneralNames.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(0), false);
            i = 1;
        } else if (aSN1Sequence.size() == 2) {
            this.policyAuthority = GeneralNames.getInstance(aSN1Sequence.getObjectAt(0));
            i = 1;
        } else {
            i = 0;
        }
        if (!(aSN1Sequence.getObjectAt(i) instanceof ASN1Sequence)) {
            throw new IllegalArgumentException("Non-IetfAttrSyntax encoding");
        }
        Enumeration objects = ((ASN1Sequence) aSN1Sequence.getObjectAt(i)).getObjects();
        while (objects.hasMoreElements()) {
            ASN1Primitive aSN1Primitive = (ASN1Primitive) objects.nextElement();
            if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
                i2 = 2;
            } else if (aSN1Primitive instanceof DERUTF8String) {
                i2 = 3;
            } else if (aSN1Primitive instanceof DEROctetString) {
                i2 = 1;
            } else {
                throw new IllegalArgumentException("Bad value type encoding IetfAttrSyntax");
            }
            if (this.valueChoice < 0) {
                this.valueChoice = i2;
            }
            if (i2 != this.valueChoice) {
                throw new IllegalArgumentException("Mix of value types in IetfAttrSyntax");
            }
            this.values.addElement(aSN1Primitive);
        }
    }

    public static IetfAttrSyntax getInstance(Object obj) {
        if (obj instanceof IetfAttrSyntax) {
            return (IetfAttrSyntax) obj;
        }
        if (obj != null) {
            return new IetfAttrSyntax(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GeneralNames getPolicyAuthority() {
        return this.policyAuthority;
    }

    public int getValueType() {
        return this.valueChoice;
    }

    public Object[] getValues() {
        int i = 0;
        if (getValueType() == 1) {
            ASN1OctetString[] aSN1OctetStringArr = new ASN1OctetString[this.values.size()];
            while (true) {
                int i2 = i;
                if (i2 == aSN1OctetStringArr.length) {
                    return aSN1OctetStringArr;
                }
                aSN1OctetStringArr[i2] = (ASN1OctetString) this.values.elementAt(i2);
                i = i2 + 1;
            }
        } else if (getValueType() == 2) {
            ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[this.values.size()];
            while (true) {
                int i3 = i;
                if (i3 == aSN1ObjectIdentifierArr.length) {
                    return aSN1ObjectIdentifierArr;
                }
                aSN1ObjectIdentifierArr[i3] = (ASN1ObjectIdentifier) this.values.elementAt(i3);
                i = i3 + 1;
            }
        } else {
            DERUTF8String[] dERUTF8StringArr = new DERUTF8String[this.values.size()];
            while (true) {
                int i4 = i;
                if (i4 == dERUTF8StringArr.length) {
                    return dERUTF8StringArr;
                }
                dERUTF8StringArr[i4] = (DERUTF8String) this.values.elementAt(i4);
                i = i4 + 1;
            }
        }
    }

    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.policyAuthority != null) {
            aSN1EncodableVector.add(new DERTaggedObject(0, this.policyAuthority));
        }
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        Enumeration elements = this.values.elements();
        while (elements.hasMoreElements()) {
            aSN1EncodableVector2.add((ASN1Encodable) elements.nextElement());
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        return new DERSequence(aSN1EncodableVector);
    }
}
