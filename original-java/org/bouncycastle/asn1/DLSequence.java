package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

public class DLSequence extends ASN1Sequence {
    private int bodyLength = -1;

    public DLSequence() {
    }

    public DLSequence(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public DLSequence(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector);
    }

    public DLSequence(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr);
    }

    private int getBodyLength() throws IOException {
        int i;
        if (this.bodyLength < 0) {
            int i2 = 0;
            Enumeration objects = getObjects();
            while (true) {
                i = i2;
                if (!objects.hasMoreElements()) {
                    break;
                }
                i2 = ((ASN1Encodable) objects.nextElement()).toASN1Primitive().toDLObject().encodedLength() + i;
            }
            this.bodyLength = i;
        }
        return this.bodyLength;
    }

    /* access modifiers changed from: 0000 */
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        ASN1OutputStream dLSubStream = aSN1OutputStream.getDLSubStream();
        int bodyLength2 = getBodyLength();
        aSN1OutputStream.write(48);
        aSN1OutputStream.writeLength(bodyLength2);
        Enumeration objects = getObjects();
        while (objects.hasMoreElements()) {
            dLSubStream.writeObject((ASN1Encodable) objects.nextElement());
        }
    }

    /* access modifiers changed from: 0000 */
    public int encodedLength() throws IOException {
        int bodyLength2 = getBodyLength();
        return bodyLength2 + StreamUtil.calculateBodyLength(bodyLength2) + 1;
    }
}
