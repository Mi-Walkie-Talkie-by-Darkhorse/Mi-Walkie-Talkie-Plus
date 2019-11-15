package org.bouncycastle.jcajce.provider.asymmetric.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

public class PKCS12BagAttributeCarrierImpl implements PKCS12BagAttributeCarrier {
    private Hashtable pkcs12Attributes;
    private Vector pkcs12Ordering;

    public PKCS12BagAttributeCarrierImpl() {
        this(new Hashtable(), new Vector());
    }

    PKCS12BagAttributeCarrierImpl(Hashtable hashtable, Vector vector) {
        this.pkcs12Attributes = hashtable;
        this.pkcs12Ordering = vector;
    }

    /* access modifiers changed from: 0000 */
    public Hashtable getAttributes() {
        return this.pkcs12Attributes;
    }

    public ASN1Encodable getBagAttribute(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (ASN1Encodable) this.pkcs12Attributes.get(aSN1ObjectIdentifier);
    }

    public Enumeration getBagAttributeKeys() {
        return this.pkcs12Ordering.elements();
    }

    /* access modifiers changed from: 0000 */
    public Vector getOrdering() {
        return this.pkcs12Ordering;
    }

    public void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Object readObject = objectInputStream.readObject();
        if (readObject instanceof Hashtable) {
            this.pkcs12Attributes = (Hashtable) readObject;
            this.pkcs12Ordering = (Vector) objectInputStream.readObject();
            return;
        }
        ASN1InputStream aSN1InputStream = new ASN1InputStream((byte[]) readObject);
        while (true) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1InputStream.readObject();
            if (aSN1ObjectIdentifier != null) {
                setBagAttribute(aSN1ObjectIdentifier, aSN1InputStream.readObject());
            } else {
                return;
            }
        }
    }

    public void setBagAttribute(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        if (this.pkcs12Attributes.containsKey(aSN1ObjectIdentifier)) {
            this.pkcs12Attributes.put(aSN1ObjectIdentifier, aSN1Encodable);
            return;
        }
        this.pkcs12Attributes.put(aSN1ObjectIdentifier, aSN1Encodable);
        this.pkcs12Ordering.addElement(aSN1ObjectIdentifier);
    }

    /* access modifiers changed from: 0000 */
    public int size() {
        return this.pkcs12Ordering.size();
    }

    public void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        if (this.pkcs12Ordering.size() == 0) {
            objectOutputStream.writeObject(new Hashtable());
            objectOutputStream.writeObject(new Vector());
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        Enumeration bagAttributeKeys = getBagAttributeKeys();
        while (bagAttributeKeys.hasMoreElements()) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) bagAttributeKeys.nextElement();
            aSN1OutputStream.writeObject(aSN1ObjectIdentifier);
            aSN1OutputStream.writeObject((ASN1Encodable) this.pkcs12Attributes.get(aSN1ObjectIdentifier));
        }
        objectOutputStream.writeObject(byteArrayOutputStream.toByteArray());
    }
}
