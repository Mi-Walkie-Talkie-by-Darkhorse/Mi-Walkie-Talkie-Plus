package org.bouncycastle.asn1.cmp;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;

public class PKIStatusInfo extends ASN1Object {
    DERBitString failInfo;
    ASN1Integer status;
    PKIFreeText statusString;

    private PKIStatusInfo(ASN1Sequence aSN1Sequence) {
        this.status = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0));
        this.statusString = null;
        this.failInfo = null;
        if (aSN1Sequence.size() > 2) {
            this.statusString = PKIFreeText.getInstance(aSN1Sequence.getObjectAt(1));
            this.failInfo = DERBitString.getInstance(aSN1Sequence.getObjectAt(2));
        } else if (aSN1Sequence.size() > 1) {
            ASN1Encodable objectAt = aSN1Sequence.getObjectAt(1);
            if (objectAt instanceof DERBitString) {
                this.failInfo = DERBitString.getInstance(objectAt);
            } else {
                this.statusString = PKIFreeText.getInstance(objectAt);
            }
        }
    }

    public PKIStatusInfo(PKIStatus pKIStatus) {
        this.status = ASN1Integer.getInstance(pKIStatus.toASN1Primitive());
    }

    public PKIStatusInfo(PKIStatus pKIStatus, PKIFreeText pKIFreeText) {
        this.status = ASN1Integer.getInstance(pKIStatus.toASN1Primitive());
        this.statusString = pKIFreeText;
    }

    public PKIStatusInfo(PKIStatus pKIStatus, PKIFreeText pKIFreeText, PKIFailureInfo pKIFailureInfo) {
        this.status = ASN1Integer.getInstance(pKIStatus.toASN1Primitive());
        this.statusString = pKIFreeText;
        this.failInfo = pKIFailureInfo;
    }

    public static PKIStatusInfo getInstance(Object obj) {
        if (obj instanceof PKIStatusInfo) {
            return (PKIStatusInfo) obj;
        }
        if (obj != null) {
            return new PKIStatusInfo(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static PKIStatusInfo getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public DERBitString getFailInfo() {
        return this.failInfo;
    }

    public BigInteger getStatus() {
        return this.status.getValue();
    }

    public PKIFreeText getStatusString() {
        return this.statusString;
    }

    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.status);
        if (this.statusString != null) {
            aSN1EncodableVector.add(this.statusString);
        }
        if (this.failInfo != null) {
            aSN1EncodableVector.add(this.failInfo);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
