package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Iterable;

public abstract class ASN1Set extends ASN1Primitive implements Iterable<ASN1Encodable> {
    private boolean isSorted = false;
    private Vector set = new Vector();

    protected ASN1Set() {
    }

    protected ASN1Set(ASN1Encodable aSN1Encodable) {
        this.set.addElement(aSN1Encodable);
    }

    protected ASN1Set(ASN1EncodableVector aSN1EncodableVector, boolean z) {
        for (int i = 0; i != aSN1EncodableVector.size(); i++) {
            this.set.addElement(aSN1EncodableVector.get(i));
        }
        if (z) {
            sort();
        }
    }

    protected ASN1Set(ASN1Encodable[] aSN1EncodableArr, boolean z) {
        for (int i = 0; i != aSN1EncodableArr.length; i++) {
            this.set.addElement(aSN1EncodableArr[i]);
        }
        if (z) {
            sort();
        }
    }

    private byte[] getDEREncoded(ASN1Encodable aSN1Encodable) {
        try {
            return aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static ASN1Set getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1Set)) {
            return (ASN1Set) obj;
        }
        if (obj instanceof ASN1SetParser) {
            return getInstance(((ASN1SetParser) obj).toASN1Primitive());
        }
        if (obj instanceof byte[]) {
            try {
                return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct set from byte[]: " + e.getMessage());
            }
        } else {
            if (obj instanceof ASN1Encodable) {
                ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
                if (aSN1Primitive instanceof ASN1Set) {
                    return (ASN1Set) aSN1Primitive;
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
    }

    public static ASN1Set getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        if (z) {
            if (aSN1TaggedObject.isExplicit()) {
                return (ASN1Set) aSN1TaggedObject.getObject();
            }
            throw new IllegalArgumentException("object implicit - explicit expected.");
        } else if (aSN1TaggedObject.isExplicit()) {
            return aSN1TaggedObject instanceof BERTaggedObject ? new BERSet((ASN1Encodable) aSN1TaggedObject.getObject()) : new DLSet((ASN1Encodable) aSN1TaggedObject.getObject());
        } else {
            if (aSN1TaggedObject.getObject() instanceof ASN1Set) {
                return (ASN1Set) aSN1TaggedObject.getObject();
            }
            if (aSN1TaggedObject.getObject() instanceof ASN1Sequence) {
                ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1TaggedObject.getObject();
                return aSN1TaggedObject instanceof BERTaggedObject ? new BERSet(aSN1Sequence.toArray()) : new DLSet(aSN1Sequence.toArray());
            }
            throw new IllegalArgumentException("unknown object in getInstance: " + aSN1TaggedObject.getClass().getName());
        }
    }

    private ASN1Encodable getNext(Enumeration enumeration) {
        ASN1Encodable aSN1Encodable = (ASN1Encodable) enumeration.nextElement();
        return aSN1Encodable == null ? DERNull.INSTANCE : aSN1Encodable;
    }

    private boolean lessThanOrEqual(byte[] bArr, byte[] bArr2) {
        int min = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i != min; i++) {
            if (bArr[i] != bArr2[i]) {
                return (bArr[i] & 255) < (bArr2[i] & 255);
            }
        }
        return min == bArr.length;
    }

    /* access modifiers changed from: 0000 */
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1Set)) {
            return false;
        }
        ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
        if (size() != aSN1Set.size()) {
            return false;
        }
        Enumeration objects = getObjects();
        Enumeration objects2 = aSN1Set.getObjects();
        while (objects.hasMoreElements()) {
            ASN1Encodable next = getNext(objects);
            ASN1Encodable next2 = getNext(objects2);
            ASN1Primitive aSN1Primitive2 = next.toASN1Primitive();
            ASN1Primitive aSN1Primitive3 = next2.toASN1Primitive();
            if (aSN1Primitive2 != aSN1Primitive3 && !aSN1Primitive2.equals(aSN1Primitive3)) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public abstract void encode(ASN1OutputStream aSN1OutputStream) throws IOException;

    public ASN1Encodable getObjectAt(int i) {
        return (ASN1Encodable) this.set.elementAt(i);
    }

    public Enumeration getObjects() {
        return this.set.elements();
    }

    public int hashCode() {
        Enumeration objects = getObjects();
        int size = size();
        while (objects.hasMoreElements()) {
            size = (size * 17) ^ getNext(objects).hashCode();
        }
        return size;
    }

    /* access modifiers changed from: 0000 */
    public boolean isConstructed() {
        return true;
    }

    public Iterator<ASN1Encodable> iterator() {
        return new Arrays.Iterator(toArray());
    }

    public ASN1SetParser parser() {
        return new ASN1SetParser() {
            private int index;
            private final int max = ASN1Set.this.size();

            public ASN1Primitive getLoadedObject() {
                return this;
            }

            public ASN1Encodable readObject() throws IOException {
                if (this.index == this.max) {
                    return null;
                }
                ASN1Set aSN1Set = ASN1Set.this;
                int i = this.index;
                this.index = i + 1;
                ASN1Encodable objectAt = aSN1Set.getObjectAt(i);
                return objectAt instanceof ASN1Sequence ? ((ASN1Sequence) objectAt).parser() : objectAt instanceof ASN1Set ? ((ASN1Set) objectAt).parser() : objectAt;
            }

            public ASN1Primitive toASN1Primitive() {
                return this;
            }
        };
    }

    public int size() {
        return this.set.size();
    }

    /* access modifiers changed from: protected */
    public void sort() {
        boolean z;
        int i;
        if (!this.isSorted) {
            this.isSorted = true;
            if (this.set.size() > 1) {
                int size = this.set.size() - 1;
                boolean z2 = true;
                while (z2) {
                    byte[] dEREncoded = getDEREncoded((ASN1Encodable) this.set.elementAt(0));
                    int i2 = 0;
                    int i3 = 0;
                    z2 = false;
                    while (i3 != size) {
                        byte[] dEREncoded2 = getDEREncoded((ASN1Encodable) this.set.elementAt(i3 + 1));
                        if (lessThanOrEqual(dEREncoded, dEREncoded2)) {
                            i = i2;
                            z = z2;
                        } else {
                            Object elementAt = this.set.elementAt(i3);
                            this.set.setElementAt(this.set.elementAt(i3 + 1), i3);
                            this.set.setElementAt(elementAt, i3 + 1);
                            dEREncoded2 = dEREncoded;
                            z = true;
                            i = i3;
                        }
                        i3++;
                        z2 = z;
                        i2 = i;
                        dEREncoded = dEREncoded2;
                    }
                    size = i2;
                }
            }
        }
    }

    public ASN1Encodable[] toArray() {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[size()];
        for (int i = 0; i != size(); i++) {
            aSN1EncodableArr[i] = getObjectAt(i);
        }
        return aSN1EncodableArr;
    }

    /* access modifiers changed from: 0000 */
    public ASN1Primitive toDERObject() {
        if (this.isSorted) {
            DERSet dERSet = new DERSet();
            dERSet.set = this.set;
            return dERSet;
        }
        Vector vector = new Vector();
        for (int i = 0; i != this.set.size(); i++) {
            vector.addElement(this.set.elementAt(i));
        }
        DERSet dERSet2 = new DERSet();
        dERSet2.set = vector;
        dERSet2.sort();
        return dERSet2;
    }

    /* access modifiers changed from: 0000 */
    public ASN1Primitive toDLObject() {
        DLSet dLSet = new DLSet();
        dLSet.set = this.set;
        return dLSet;
    }

    public String toString() {
        return this.set.toString();
    }
}
