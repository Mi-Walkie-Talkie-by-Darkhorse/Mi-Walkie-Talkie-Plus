package org.bouncycastle.asn1.dvcs;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cmp.PKIStatusInfo;
import org.bouncycastle.asn1.x509.GeneralName;

public class DVCSErrorNotice extends ASN1Object {
    private GeneralName transactionIdentifier;
    private PKIStatusInfo transactionStatus;

    private DVCSErrorNotice(ASN1Sequence aSN1Sequence) {
        this.transactionStatus = PKIStatusInfo.getInstance(aSN1Sequence.getObjectAt(0));
        if (aSN1Sequence.size() > 1) {
            this.transactionIdentifier = GeneralName.getInstance(aSN1Sequence.getObjectAt(1));
        }
    }

    public DVCSErrorNotice(PKIStatusInfo pKIStatusInfo) {
        this(pKIStatusInfo, null);
    }

    public DVCSErrorNotice(PKIStatusInfo pKIStatusInfo, GeneralName generalName) {
        this.transactionStatus = pKIStatusInfo;
        this.transactionIdentifier = generalName;
    }

    public static DVCSErrorNotice getInstance(Object obj) {
        if (obj instanceof DVCSErrorNotice) {
            return (DVCSErrorNotice) obj;
        }
        if (obj != null) {
            return new DVCSErrorNotice(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DVCSErrorNotice getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public GeneralName getTransactionIdentifier() {
        return this.transactionIdentifier;
    }

    public PKIStatusInfo getTransactionStatus() {
        return this.transactionStatus;
    }

    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.transactionStatus);
        if (this.transactionIdentifier != null) {
            aSN1EncodableVector.add(this.transactionIdentifier);
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        return "DVCSErrorNotice {\ntransactionStatus: " + this.transactionStatus + "\n" + (this.transactionIdentifier != null ? "transactionIdentifier: " + this.transactionIdentifier + "\n" : "") + "}\n";
    }
}
