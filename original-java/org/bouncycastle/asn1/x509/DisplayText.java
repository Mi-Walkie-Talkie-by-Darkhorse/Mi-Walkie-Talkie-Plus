package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERUTF8String;
import org.bouncycastle.asn1.DERVisibleString;

public class DisplayText extends ASN1Object implements ASN1Choice {
    public static final int CONTENT_TYPE_BMPSTRING = 1;
    public static final int CONTENT_TYPE_IA5STRING = 0;
    public static final int CONTENT_TYPE_UTF8STRING = 2;
    public static final int CONTENT_TYPE_VISIBLESTRING = 3;
    public static final int DISPLAY_TEXT_MAXIMUM_SIZE = 200;
    int contentType;
    ASN1String contents;

    public DisplayText(int i, String str) {
        if (str.length() > 200) {
            str = str.substring(0, 200);
        }
        this.contentType = i;
        switch (i) {
            case 0:
                this.contents = new DERIA5String(str);
                return;
            case 1:
                this.contents = new DERBMPString(str);
                return;
            case 2:
                this.contents = new DERUTF8String(str);
                return;
            case 3:
                this.contents = new DERVisibleString(str);
                return;
            default:
                this.contents = new DERUTF8String(str);
                return;
        }
    }

    public DisplayText(String str) {
        if (str.length() > 200) {
            str = str.substring(0, 200);
        }
        this.contentType = 2;
        this.contents = new DERUTF8String(str);
    }

    private DisplayText(ASN1String aSN1String) {
        this.contents = aSN1String;
    }

    public static DisplayText getInstance(Object obj) {
        if (obj instanceof ASN1String) {
            return new DisplayText((ASN1String) obj);
        }
        if (obj == null || (obj instanceof DisplayText)) {
            return (DisplayText) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DisplayText getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public String getString() {
        return this.contents.getString();
    }

    public ASN1Primitive toASN1Primitive() {
        return (ASN1Primitive) this.contents;
    }
}
