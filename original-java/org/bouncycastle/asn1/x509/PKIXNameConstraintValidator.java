package org.bouncycastle.asn1.x509;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Strings;

public class PKIXNameConstraintValidator implements NameConstraintValidator {
    private Set excludedSubtreesDN = new HashSet();
    private Set excludedSubtreesDNS = new HashSet();
    private Set excludedSubtreesEmail = new HashSet();
    private Set excludedSubtreesIP = new HashSet();
    private Set excludedSubtreesURI = new HashSet();
    private Set permittedSubtreesDN;
    private Set permittedSubtreesDNS;
    private Set permittedSubtreesEmail;
    private Set permittedSubtreesIP;
    private Set permittedSubtreesURI;

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, for r3v0, types: [java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkExcludedDN(java.util.Set<org.bouncycastle.asn1.ASN1Sequence> r3, org.bouncycastle.asn1.ASN1Sequence r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            java.util.Iterator r1 = r3.iterator()
        L_0x000b:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0006
            java.lang.Object r0 = r1.next()
            org.bouncycastle.asn1.ASN1Sequence r0 = (org.bouncycastle.asn1.ASN1Sequence) r0
            boolean r0 = withinDNSubtree(r4, r0)
            if (r0 == 0) goto L_0x000b
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "Subject distinguished name is from an excluded subtree"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkExcludedDN(java.util.Set, org.bouncycastle.asn1.ASN1Sequence):void");
    }

    private void checkExcludedDN(X500Name x500Name) throws NameConstraintValidatorException {
        checkExcludedDN(this.excludedSubtreesDN, ASN1Sequence.getInstance(x500Name));
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r4v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkExcludedDNS(java.util.Set<java.lang.String> r4, java.lang.String r5) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r3 = this;
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            java.util.Iterator r1 = r4.iterator()
        L_0x000b:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0006
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = r3.withinDomain(r5, r0)
            if (r2 != 0) goto L_0x0023
            boolean r0 = r5.equalsIgnoreCase(r0)
            if (r0 == 0) goto L_0x000b
        L_0x0023:
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "DNS is from an excluded subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkExcludedDNS(java.util.Set, java.lang.String):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r3v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkExcludedEmail(java.util.Set<java.lang.String> r3, java.lang.String r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            java.util.Iterator r1 = r3.iterator()
        L_0x000b:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0006
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = r2.emailIsConstrained(r4, r0)
            if (r0 == 0) goto L_0x000b
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "Email address is from an excluded subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkExcludedEmail(java.util.Set, java.lang.String):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<byte[]>, for r3v0, types: [java.util.Set, java.util.Set<byte[]>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkExcludedIP(java.util.Set<byte[]> r3, byte[] r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            java.util.Iterator r1 = r3.iterator()
        L_0x000b:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0006
            java.lang.Object r0 = r1.next()
            byte[] r0 = (byte[]) r0
            byte[] r0 = (byte[]) r0
            boolean r0 = r2.isIPConstrained(r4, r0)
            if (r0 == 0) goto L_0x000b
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "IP is from an excluded subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkExcludedIP(java.util.Set, byte[]):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r3v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkExcludedURI(java.util.Set<java.lang.String> r3, java.lang.String r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto L_0x0007
        L_0x0006:
            return
        L_0x0007:
            java.util.Iterator r1 = r3.iterator()
        L_0x000b:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0006
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = r2.isUriConstrained(r4, r0)
            if (r0 == 0) goto L_0x000b
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "URI is from an excluded subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkExcludedURI(java.util.Set, java.lang.String):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, for r3v0, types: [java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkPermittedDN(java.util.Set<org.bouncycastle.asn1.ASN1Sequence> r3, org.bouncycastle.asn1.ASN1Sequence r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            if (r3 != 0) goto L_0x0003
        L_0x0002:
            return
        L_0x0003:
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto L_0x000f
            int r0 = r4.size()
            if (r0 == 0) goto L_0x0002
        L_0x000f:
            java.util.Iterator r1 = r3.iterator()
        L_0x0013:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0026
            java.lang.Object r0 = r1.next()
            org.bouncycastle.asn1.ASN1Sequence r0 = (org.bouncycastle.asn1.ASN1Sequence) r0
            boolean r0 = withinDNSubtree(r4, r0)
            if (r0 == 0) goto L_0x0013
            goto L_0x0002
        L_0x0026:
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "Subject distinguished name is not from a permitted subtree"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkPermittedDN(java.util.Set, org.bouncycastle.asn1.ASN1Sequence):void");
    }

    private void checkPermittedDN(X500Name x500Name) throws NameConstraintValidatorException {
        checkPermittedDN(this.permittedSubtreesDN, ASN1Sequence.getInstance(x500Name.toASN1Primitive()));
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r4v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkPermittedDNS(java.util.Set<java.lang.String> r4, java.lang.String r5) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r3 = this;
            if (r4 != 0) goto L_0x0003
        L_0x0002:
            return
        L_0x0003:
            java.util.Iterator r1 = r4.iterator()
        L_0x0007:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0020
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r2 = r3.withinDomain(r5, r0)
            if (r2 != 0) goto L_0x0002
            boolean r0 = r5.equalsIgnoreCase(r0)
            if (r0 == 0) goto L_0x0007
            goto L_0x0002
        L_0x0020:
            int r0 = r5.length()
            if (r0 != 0) goto L_0x002c
            int r0 = r4.size()
            if (r0 == 0) goto L_0x0002
        L_0x002c:
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "DNS is not from a permitted subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkPermittedDNS(java.util.Set, java.lang.String):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r3v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkPermittedEmail(java.util.Set<java.lang.String> r3, java.lang.String r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            if (r3 != 0) goto L_0x0003
        L_0x0002:
            return
        L_0x0003:
            java.util.Iterator r1 = r3.iterator()
        L_0x0007:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x001a
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = r2.emailIsConstrained(r4, r0)
            if (r0 == 0) goto L_0x0007
            goto L_0x0002
        L_0x001a:
            int r0 = r4.length()
            if (r0 != 0) goto L_0x0026
            int r0 = r3.size()
            if (r0 == 0) goto L_0x0002
        L_0x0026:
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "Subject email address is not from a permitted subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkPermittedEmail(java.util.Set, java.lang.String):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<byte[]>, for r3v0, types: [java.util.Set, java.util.Set<byte[]>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkPermittedIP(java.util.Set<byte[]> r3, byte[] r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            if (r3 != 0) goto L_0x0003
        L_0x0002:
            return
        L_0x0003:
            java.util.Iterator r1 = r3.iterator()
        L_0x0007:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x001c
            java.lang.Object r0 = r1.next()
            byte[] r0 = (byte[]) r0
            byte[] r0 = (byte[]) r0
            boolean r0 = r2.isIPConstrained(r4, r0)
            if (r0 == 0) goto L_0x0007
            goto L_0x0002
        L_0x001c:
            int r0 = r4.length
            if (r0 != 0) goto L_0x0025
            int r0 = r3.size()
            if (r0 == 0) goto L_0x0002
        L_0x0025:
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "IP is not from a permitted subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkPermittedIP(java.util.Set, byte[]):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r3v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkPermittedURI(java.util.Set<java.lang.String> r3, java.lang.String r4) throws org.bouncycastle.asn1.x509.NameConstraintValidatorException {
        /*
            r2 = this;
            if (r3 != 0) goto L_0x0003
        L_0x0002:
            return
        L_0x0003:
            java.util.Iterator r1 = r3.iterator()
        L_0x0007:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x001a
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = r2.isUriConstrained(r4, r0)
            if (r0 == 0) goto L_0x0007
            goto L_0x0002
        L_0x001a:
            int r0 = r4.length()
            if (r0 != 0) goto L_0x0026
            int r0 = r3.size()
            if (r0 == 0) goto L_0x0002
        L_0x0026:
            org.bouncycastle.asn1.x509.NameConstraintValidatorException r0 = new org.bouncycastle.asn1.x509.NameConstraintValidatorException
            java.lang.String r1 = "URI is not from a permitted subtree."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.checkPermittedURI(java.util.Set, java.lang.String):void");
    }

    private boolean collectionsAreEqual(Collection collection, Collection collection2) {
        boolean z;
        if (collection == collection2) {
            return true;
        }
        if (collection == null || collection2 == null) {
            return false;
        }
        if (collection.size() != collection2.size()) {
            return false;
        }
        for (Object next : collection) {
            Iterator it = collection2.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (equals(next, it.next())) {
                        z = true;
                        continue;
                        break;
                    }
                } else {
                    z = false;
                    continue;
                    break;
                }
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    private static int compareTo(byte[] bArr, byte[] bArr2) {
        if (Arrays.areEqual(bArr, bArr2)) {
            return 0;
        }
        return Arrays.areEqual(max(bArr, bArr2), bArr) ? 1 : -1;
    }

    private boolean emailIsConstrained(String str, String str2) {
        String substring = str.substring(str.indexOf(64) + 1);
        if (str2.indexOf(64) != -1) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        } else if (str2.charAt(0) != '.') {
            if (substring.equalsIgnoreCase(str2)) {
                return true;
            }
        } else if (withinDomain(substring, str2)) {
            return true;
        }
        return false;
    }

    private boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return (!(obj instanceof byte[]) || !(obj2 instanceof byte[])) ? obj.equals(obj2) : Arrays.areEqual((byte[]) obj, (byte[]) obj2);
    }

    private static String extractHostFromURL(String str) {
        String substring = str.substring(str.indexOf(58) + 1);
        if (substring.indexOf("//") != -1) {
            substring = substring.substring(substring.indexOf("//") + 2);
        }
        if (substring.lastIndexOf(58) != -1) {
            substring = substring.substring(0, substring.lastIndexOf(58));
        }
        String substring2 = substring.substring(substring.indexOf(58) + 1);
        String substring3 = substring2.substring(substring2.indexOf(64) + 1);
        return substring3.indexOf(47) != -1 ? substring3.substring(0, substring3.indexOf(47)) : substring3;
    }

    private byte[][] extractIPsAndSubnetMasks(byte[] bArr, byte[] bArr2) {
        int length = bArr.length / 2;
        byte[] bArr3 = new byte[length];
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr, length, bArr4, 0, length);
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        System.arraycopy(bArr2, 0, bArr5, 0, length);
        System.arraycopy(bArr2, length, bArr6, 0, length);
        return new byte[][]{bArr3, bArr4, bArr5, bArr6};
    }

    private String extractNameAsString(GeneralName generalName) {
        return DERIA5String.getInstance(generalName.getName()).getString();
    }

    private int hashCollection(Collection collection) {
        int i = 0;
        if (collection == null) {
            return 0;
        }
        Iterator it = collection.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            Object next = it.next();
            i = (next instanceof byte[] ? Arrays.hashCode((byte[]) next) : next.hashCode()) + i2;
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, for r7v0, types: [java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, java.util.Set] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, for r8v0, types: [java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set intersectDN(java.util.Set<org.bouncycastle.asn1.ASN1Sequence> r7, java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree> r8) {
        /*
            r6 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r8.iterator()
        L_0x0009:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0051
            java.lang.Object r0 = r2.next()
            org.bouncycastle.asn1.x509.GeneralSubtree r0 = (org.bouncycastle.asn1.x509.GeneralSubtree) r0
            org.bouncycastle.asn1.x509.GeneralName r0 = r0.getBase()
            org.bouncycastle.asn1.ASN1Encodable r0 = r0.getName()
            org.bouncycastle.asn1.ASN1Primitive r0 = r0.toASN1Primitive()
            org.bouncycastle.asn1.ASN1Sequence r3 = org.bouncycastle.asn1.ASN1Sequence.getInstance(r0)
            if (r7 != 0) goto L_0x002d
            if (r3 == 0) goto L_0x0009
            r1.add(r3)
            goto L_0x0009
        L_0x002d:
            java.util.Iterator r4 = r7.iterator()
        L_0x0031:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0009
            java.lang.Object r0 = r4.next()
            org.bouncycastle.asn1.ASN1Sequence r0 = (org.bouncycastle.asn1.ASN1Sequence) r0
            boolean r5 = withinDNSubtree(r3, r0)
            if (r5 == 0) goto L_0x0047
            r1.add(r3)
            goto L_0x0031
        L_0x0047:
            boolean r5 = withinDNSubtree(r0, r3)
            if (r5 == 0) goto L_0x0031
            r1.add(r0)
            goto L_0x0031
        L_0x0051:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.intersectDN(java.util.Set, java.util.Set):java.util.Set");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r7v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, for r8v0, types: [java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set intersectDNS(java.util.Set<java.lang.String> r7, java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree> r8) {
        /*
            r6 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r8.iterator()
        L_0x0009:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0049
            java.lang.Object r0 = r2.next()
            org.bouncycastle.asn1.x509.GeneralSubtree r0 = (org.bouncycastle.asn1.x509.GeneralSubtree) r0
            org.bouncycastle.asn1.x509.GeneralName r0 = r0.getBase()
            java.lang.String r3 = r6.extractNameAsString(r0)
            if (r7 != 0) goto L_0x0025
            if (r3 == 0) goto L_0x0009
            r1.add(r3)
            goto L_0x0009
        L_0x0025:
            java.util.Iterator r4 = r7.iterator()
        L_0x0029:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0009
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r5 = r6.withinDomain(r0, r3)
            if (r5 == 0) goto L_0x003f
            r1.add(r0)
            goto L_0x0029
        L_0x003f:
            boolean r0 = r6.withinDomain(r3, r0)
            if (r0 == 0) goto L_0x0029
            r1.add(r3)
            goto L_0x0029
        L_0x0049:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.intersectDNS(java.util.Set, java.util.Set):java.util.Set");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r6v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, for r7v0, types: [java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set intersectEmail(java.util.Set<java.lang.String> r6, java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree> r7) {
        /*
            r5 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r7.iterator()
        L_0x0009:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0039
            java.lang.Object r0 = r2.next()
            org.bouncycastle.asn1.x509.GeneralSubtree r0 = (org.bouncycastle.asn1.x509.GeneralSubtree) r0
            org.bouncycastle.asn1.x509.GeneralName r0 = r0.getBase()
            java.lang.String r3 = r5.extractNameAsString(r0)
            if (r6 != 0) goto L_0x0025
            if (r3 == 0) goto L_0x0009
            r1.add(r3)
            goto L_0x0009
        L_0x0025:
            java.util.Iterator r4 = r6.iterator()
        L_0x0029:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0009
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            r5.intersectEmail(r3, r0, r1)
            goto L_0x0029
        L_0x0039:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.intersectEmail(java.util.Set, java.util.Set):java.util.Set");
    }

    private void intersectEmail(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (str.equalsIgnoreCase(str2)) {
                    set.add(str);
                }
            } else if (str2.startsWith(".")) {
                if (withinDomain(substring, str2)) {
                    set.add(str);
                }
            } else if (substring.equalsIgnoreCase(str2)) {
                set.add(str);
            }
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) != -1) {
                if (withinDomain(str2.substring(str.indexOf(64) + 1), str)) {
                    set.add(str2);
                }
            } else if (str2.startsWith(".")) {
                if (withinDomain(str, str2) || str.equalsIgnoreCase(str2)) {
                    set.add(str);
                } else if (withinDomain(str2, str)) {
                    set.add(str2);
                }
            } else if (withinDomain(str2, str)) {
                set.add(str2);
            }
        } else if (str2.indexOf(64) != -1) {
            if (str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                set.add(str2);
            }
        } else if (str2.startsWith(".")) {
            if (withinDomain(str, str2)) {
                set.add(str);
            }
        } else if (str.equalsIgnoreCase(str2)) {
            set.add(str);
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<byte[]>, for r6v0, types: [java.util.Set, java.util.Set<byte[]>] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, for r7v0, types: [java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set intersectIP(java.util.Set<byte[]> r6, java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree> r7) {
        /*
            r5 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r7.iterator()
        L_0x0009:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0047
            java.lang.Object r0 = r2.next()
            org.bouncycastle.asn1.x509.GeneralSubtree r0 = (org.bouncycastle.asn1.x509.GeneralSubtree) r0
            org.bouncycastle.asn1.x509.GeneralName r0 = r0.getBase()
            org.bouncycastle.asn1.ASN1Encodable r0 = r0.getName()
            org.bouncycastle.asn1.ASN1OctetString r0 = org.bouncycastle.asn1.ASN1OctetString.getInstance(r0)
            byte[] r3 = r0.getOctets()
            if (r6 != 0) goto L_0x002d
            if (r3 == 0) goto L_0x0009
            r1.add(r3)
            goto L_0x0009
        L_0x002d:
            java.util.Iterator r4 = r6.iterator()
        L_0x0031:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0009
            java.lang.Object r0 = r4.next()
            byte[] r0 = (byte[]) r0
            byte[] r0 = (byte[]) r0
            java.util.Set r0 = r5.intersectIPRange(r0, r3)
            r1.addAll(r0)
            goto L_0x0031
        L_0x0047:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.intersectIP(java.util.Set, java.util.Set):java.util.Set");
    }

    private Set intersectIPRange(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return Collections.EMPTY_SET;
        }
        byte[][] extractIPsAndSubnetMasks = extractIPsAndSubnetMasks(bArr, bArr2);
        byte[] bArr3 = extractIPsAndSubnetMasks[0];
        byte[] bArr4 = extractIPsAndSubnetMasks[1];
        byte[] bArr5 = extractIPsAndSubnetMasks[2];
        byte[] bArr6 = extractIPsAndSubnetMasks[3];
        byte[][] minMaxIPs = minMaxIPs(bArr3, bArr4, bArr5, bArr6);
        return compareTo(max(minMaxIPs[0], minMaxIPs[2]), min(minMaxIPs[1], minMaxIPs[3])) == 1 ? Collections.EMPTY_SET : Collections.singleton(ipWithSubnetMask(or(minMaxIPs[0], minMaxIPs[2]), or(bArr4, bArr6)));
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r6v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, for r7v0, types: [java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set intersectURI(java.util.Set<java.lang.String> r6, java.util.Set<org.bouncycastle.asn1.x509.GeneralSubtree> r7) {
        /*
            r5 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r7.iterator()
        L_0x0009:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0039
            java.lang.Object r0 = r2.next()
            org.bouncycastle.asn1.x509.GeneralSubtree r0 = (org.bouncycastle.asn1.x509.GeneralSubtree) r0
            org.bouncycastle.asn1.x509.GeneralName r0 = r0.getBase()
            java.lang.String r3 = r5.extractNameAsString(r0)
            if (r6 != 0) goto L_0x0025
            if (r3 == 0) goto L_0x0009
            r1.add(r3)
            goto L_0x0009
        L_0x0025:
            java.util.Iterator r4 = r6.iterator()
        L_0x0029:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x0009
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            r5.intersectURI(r0, r3, r1)
            goto L_0x0029
        L_0x0039:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.intersectURI(java.util.Set, java.util.Set):java.util.Set");
    }

    private void intersectURI(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (str.equalsIgnoreCase(str2)) {
                    set.add(str);
                }
            } else if (str2.startsWith(".")) {
                if (withinDomain(substring, str2)) {
                    set.add(str);
                }
            } else if (substring.equalsIgnoreCase(str2)) {
                set.add(str);
            }
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) != -1) {
                if (withinDomain(str2.substring(str.indexOf(64) + 1), str)) {
                    set.add(str2);
                }
            } else if (str2.startsWith(".")) {
                if (withinDomain(str, str2) || str.equalsIgnoreCase(str2)) {
                    set.add(str);
                } else if (withinDomain(str2, str)) {
                    set.add(str2);
                }
            } else if (withinDomain(str2, str)) {
                set.add(str2);
            }
        } else if (str2.indexOf(64) != -1) {
            if (str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                set.add(str2);
            }
        } else if (str2.startsWith(".")) {
            if (withinDomain(str, str2)) {
                set.add(str);
            }
        } else if (str.equalsIgnoreCase(str2)) {
            set.add(str);
        }
    }

    private byte[] ipWithSubnetMask(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[(length * 2)];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr2, 0, bArr3, length, length);
        return bArr3;
    }

    private boolean isIPConstrained(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length / 2) {
            return false;
        }
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr2, length, bArr3, 0, length);
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr4[i] = (byte) (bArr2[i] & bArr3[i]);
            bArr5[i] = (byte) (bArr[i] & bArr3[i]);
        }
        return Arrays.areEqual(bArr4, bArr5);
    }

    private boolean isUriConstrained(String str, String str2) {
        String extractHostFromURL = extractHostFromURL(str);
        if (!str2.startsWith(".")) {
            if (extractHostFromURL.equalsIgnoreCase(str2)) {
                return true;
            }
        } else if (withinDomain(extractHostFromURL, str2)) {
            return true;
        }
        return false;
    }

    private static byte[] max(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) > (bArr2[i] & 65535)) {
                return bArr;
            }
        }
        return bArr2;
    }

    private static byte[] min(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if ((bArr[i] & 65535) < (bArr2[i] & 65535)) {
                return bArr;
            }
        }
        return bArr2;
    }

    private byte[][] minMaxIPs(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int length = bArr.length;
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        byte[] bArr7 = new byte[length];
        byte[] bArr8 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr5[i] = (byte) (bArr[i] & bArr2[i]);
            bArr6[i] = (byte) ((bArr[i] & bArr2[i]) | (bArr2[i] ^ -1));
            bArr7[i] = (byte) (bArr3[i] & bArr4[i]);
            bArr8[i] = (byte) ((bArr3[i] & bArr4[i]) | (bArr4[i] ^ -1));
        }
        return new byte[][]{bArr5, bArr6, bArr7, bArr8};
    }

    private static byte[] or(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] | bArr2[i]);
        }
        return bArr3;
    }

    private String stringifyIP(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length / 2; i++) {
            str = str + Integer.toString(bArr[i] & 255) + ".";
        }
        String str2 = str.substring(0, str.length() - 1) + "/";
        for (int length = bArr.length / 2; length < bArr.length; length++) {
            str2 = str2 + Integer.toString(bArr[length] & 255) + ".";
        }
        return str2.substring(0, str2.length() - 1);
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<byte[]>, for r4v0, types: [java.util.Set, java.util.Set<byte[]>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String stringifyIPCollection(java.util.Set<byte[]> r4) {
        /*
            r3 = this;
            java.lang.String r0 = ""
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = "["
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.util.Iterator r1 = r4.iterator()
        L_0x0019:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0043
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.Object r0 = r1.next()
            byte[] r0 = (byte[]) r0
            byte[] r0 = (byte[]) r0
            java.lang.String r0 = r3.stringifyIP(r0)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r2 = ","
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            goto L_0x0019
        L_0x0043:
            int r1 = r0.length()
            r2 = 1
            if (r1 <= r2) goto L_0x0055
            r1 = 0
            int r2 = r0.length()
            int r2 = r2 + -1
            java.lang.String r0 = r0.substring(r1, r2)
        L_0x0055:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = "]"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.stringifyIPCollection(java.util.Set):java.lang.String");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, for r5v0, types: [java.util.Set<org.bouncycastle.asn1.ASN1Sequence>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set unionDN(java.util.Set<org.bouncycastle.asn1.ASN1Sequence> r5, org.bouncycastle.asn1.ASN1Sequence r6) {
        /*
            r4 = this;
            boolean r0 = r5.isEmpty()
            if (r0 == 0) goto L_0x000d
            if (r6 != 0) goto L_0x0009
        L_0x0008:
            return r5
        L_0x0009:
            r5.add(r6)
            goto L_0x0008
        L_0x000d:
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r5.iterator()
        L_0x0016:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x003d
            java.lang.Object r0 = r2.next()
            org.bouncycastle.asn1.ASN1Sequence r0 = (org.bouncycastle.asn1.ASN1Sequence) r0
            boolean r3 = withinDNSubtree(r6, r0)
            if (r3 == 0) goto L_0x002c
            r1.add(r0)
            goto L_0x0016
        L_0x002c:
            boolean r3 = withinDNSubtree(r0, r6)
            if (r3 == 0) goto L_0x0036
            r1.add(r6)
            goto L_0x0016
        L_0x0036:
            r1.add(r0)
            r1.add(r6)
            goto L_0x0016
        L_0x003d:
            r5 = r1
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.unionDN(java.util.Set, org.bouncycastle.asn1.ASN1Sequence):java.util.Set");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r5v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set unionDNS(java.util.Set<java.lang.String> r5, java.lang.String r6) {
        /*
            r4 = this;
            boolean r0 = r5.isEmpty()
            if (r0 == 0) goto L_0x000d
            if (r6 != 0) goto L_0x0009
        L_0x0008:
            return r5
        L_0x0009:
            r5.add(r6)
            goto L_0x0008
        L_0x000d:
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r5.iterator()
        L_0x0016:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x003d
            java.lang.Object r0 = r2.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r3 = r4.withinDomain(r0, r6)
            if (r3 == 0) goto L_0x002c
            r1.add(r6)
            goto L_0x0016
        L_0x002c:
            boolean r3 = r4.withinDomain(r6, r0)
            if (r3 == 0) goto L_0x0036
            r1.add(r0)
            goto L_0x0016
        L_0x0036:
            r1.add(r0)
            r1.add(r6)
            goto L_0x0016
        L_0x003d:
            r5 = r1
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.unionDNS(java.util.Set, java.lang.String):java.util.Set");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r4v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set unionEmail(java.util.Set<java.lang.String> r4, java.lang.String r5) {
        /*
            r3 = this;
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto L_0x000d
            if (r5 != 0) goto L_0x0009
        L_0x0008:
            return r4
        L_0x0009:
            r4.add(r5)
            goto L_0x0008
        L_0x000d:
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r4.iterator()
        L_0x0016:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0026
            java.lang.Object r0 = r2.next()
            java.lang.String r0 = (java.lang.String) r0
            r3.unionEmail(r0, r5, r1)
            goto L_0x0016
        L_0x0026:
            r4 = r1
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.unionEmail(java.util.Set, java.lang.String):java.util.Set");
    }

    private void unionEmail(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (str.equalsIgnoreCase(str2)) {
                    set.add(str);
                    return;
                }
                set.add(str);
                set.add(str2);
            } else if (str2.startsWith(".")) {
                if (withinDomain(substring, str2)) {
                    set.add(str2);
                    return;
                }
                set.add(str);
                set.add(str2);
            } else if (substring.equalsIgnoreCase(str2)) {
                set.add(str2);
            } else {
                set.add(str);
                set.add(str2);
            }
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) != -1) {
                if (withinDomain(str2.substring(str.indexOf(64) + 1), str)) {
                    set.add(str);
                    return;
                }
                set.add(str);
                set.add(str2);
            } else if (str2.startsWith(".")) {
                if (withinDomain(str, str2) || str.equalsIgnoreCase(str2)) {
                    set.add(str2);
                } else if (withinDomain(str2, str)) {
                    set.add(str);
                } else {
                    set.add(str);
                    set.add(str2);
                }
            } else if (withinDomain(str2, str)) {
                set.add(str);
            } else {
                set.add(str);
                set.add(str2);
            }
        } else if (str2.indexOf(64) != -1) {
            if (str2.substring(str.indexOf(64) + 1).equalsIgnoreCase(str)) {
                set.add(str);
                return;
            }
            set.add(str);
            set.add(str2);
        } else if (str2.startsWith(".")) {
            if (withinDomain(str, str2)) {
                set.add(str2);
                return;
            }
            set.add(str);
            set.add(str2);
        } else if (str.equalsIgnoreCase(str2)) {
            set.add(str);
        } else {
            set.add(str);
            set.add(str2);
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<byte[]>, for r4v0, types: [java.util.Set, java.util.Set<byte[]>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set unionIP(java.util.Set<byte[]> r4, byte[] r5) {
        /*
            r3 = this;
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto L_0x000d
            if (r5 != 0) goto L_0x0009
        L_0x0008:
            return r4
        L_0x0009:
            r4.add(r5)
            goto L_0x0008
        L_0x000d:
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r4.iterator()
        L_0x0016:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x002c
            java.lang.Object r0 = r2.next()
            byte[] r0 = (byte[]) r0
            byte[] r0 = (byte[]) r0
            java.util.Set r0 = r3.unionIPRange(r0, r5)
            r1.addAll(r0)
            goto L_0x0016
        L_0x002c:
            r4 = r1
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.unionIP(java.util.Set, byte[]):java.util.Set");
    }

    private Set unionIPRange(byte[] bArr, byte[] bArr2) {
        HashSet hashSet = new HashSet();
        if (Arrays.areEqual(bArr, bArr2)) {
            hashSet.add(bArr);
        } else {
            hashSet.add(bArr);
            hashSet.add(bArr2);
        }
        return hashSet;
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r4v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set unionURI(java.util.Set<java.lang.String> r4, java.lang.String r5) {
        /*
            r3 = this;
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto L_0x000d
            if (r5 != 0) goto L_0x0009
        L_0x0008:
            return r4
        L_0x0009:
            r4.add(r5)
            goto L_0x0008
        L_0x000d:
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r4.iterator()
        L_0x0016:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0026
            java.lang.Object r0 = r2.next()
            java.lang.String r0 = (java.lang.String) r0
            r3.unionURI(r0, r5, r1)
            goto L_0x0016
        L_0x0026:
            r4 = r1
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.PKIXNameConstraintValidator.unionURI(java.util.Set, java.lang.String):java.util.Set");
    }

    private void unionURI(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (str.equalsIgnoreCase(str2)) {
                    set.add(str);
                    return;
                }
                set.add(str);
                set.add(str2);
            } else if (str2.startsWith(".")) {
                if (withinDomain(substring, str2)) {
                    set.add(str2);
                    return;
                }
                set.add(str);
                set.add(str2);
            } else if (substring.equalsIgnoreCase(str2)) {
                set.add(str2);
            } else {
                set.add(str);
                set.add(str2);
            }
        } else if (str.startsWith(".")) {
            if (str2.indexOf(64) != -1) {
                if (withinDomain(str2.substring(str.indexOf(64) + 1), str)) {
                    set.add(str);
                    return;
                }
                set.add(str);
                set.add(str2);
            } else if (str2.startsWith(".")) {
                if (withinDomain(str, str2) || str.equalsIgnoreCase(str2)) {
                    set.add(str2);
                } else if (withinDomain(str2, str)) {
                    set.add(str);
                } else {
                    set.add(str);
                    set.add(str2);
                }
            } else if (withinDomain(str2, str)) {
                set.add(str);
            } else {
                set.add(str);
                set.add(str2);
            }
        } else if (str2.indexOf(64) != -1) {
            if (str2.substring(str.indexOf(64) + 1).equalsIgnoreCase(str)) {
                set.add(str);
                return;
            }
            set.add(str);
            set.add(str2);
        } else if (str2.startsWith(".")) {
            if (withinDomain(str, str2)) {
                set.add(str2);
                return;
            }
            set.add(str);
            set.add(str2);
        } else if (str.equalsIgnoreCase(str2)) {
            set.add(str);
        } else {
            set.add(str);
            set.add(str2);
        }
    }

    private static boolean withinDNSubtree(ASN1Sequence aSN1Sequence, ASN1Sequence aSN1Sequence2) {
        if (aSN1Sequence2.size() < 1 || aSN1Sequence2.size() > aSN1Sequence.size()) {
            return false;
        }
        for (int size = aSN1Sequence2.size() - 1; size >= 0; size--) {
            if (!aSN1Sequence2.getObjectAt(size).equals(aSN1Sequence.getObjectAt(size))) {
                return false;
            }
        }
        return true;
    }

    private boolean withinDomain(String str, String str2) {
        if (str2.startsWith(".")) {
            str2 = str2.substring(1);
        }
        String[] split = Strings.split(str2, '.');
        String[] split2 = Strings.split(str, '.');
        if (split2.length <= split.length) {
            return false;
        }
        int length = split2.length - split.length;
        for (int i = -1; i < split.length; i++) {
            if (i == -1) {
                if (split2[i + length].equals("")) {
                    return false;
                }
            } else if (!split[i].equalsIgnoreCase(split2[i + length])) {
                return false;
            }
        }
        return true;
    }

    public void addExcludedSubtree(GeneralSubtree generalSubtree) {
        GeneralName base = generalSubtree.getBase();
        switch (base.getTagNo()) {
            case 1:
                this.excludedSubtreesEmail = unionEmail(this.excludedSubtreesEmail, extractNameAsString(base));
                return;
            case 2:
                this.excludedSubtreesDNS = unionDNS(this.excludedSubtreesDNS, extractNameAsString(base));
                return;
            case 4:
                this.excludedSubtreesDN = unionDN(this.excludedSubtreesDN, (ASN1Sequence) base.getName().toASN1Primitive());
                return;
            case 6:
                this.excludedSubtreesURI = unionURI(this.excludedSubtreesURI, extractNameAsString(base));
                return;
            case 7:
                this.excludedSubtreesIP = unionIP(this.excludedSubtreesIP, ASN1OctetString.getInstance(base.getName()).getOctets());
                return;
            default:
                return;
        }
    }

    public void checkExcluded(GeneralName generalName) throws NameConstraintValidatorException {
        switch (generalName.getTagNo()) {
            case 1:
                checkExcludedEmail(this.excludedSubtreesEmail, extractNameAsString(generalName));
                return;
            case 2:
                checkExcludedDNS(this.excludedSubtreesDNS, DERIA5String.getInstance(generalName.getName()).getString());
                return;
            case 4:
                checkExcludedDN(X500Name.getInstance(generalName.getName()));
                return;
            case 6:
                checkExcludedURI(this.excludedSubtreesURI, DERIA5String.getInstance(generalName.getName()).getString());
                return;
            case 7:
                checkExcludedIP(this.excludedSubtreesIP, ASN1OctetString.getInstance(generalName.getName()).getOctets());
                return;
            default:
                return;
        }
    }

    public void checkPermitted(GeneralName generalName) throws NameConstraintValidatorException {
        switch (generalName.getTagNo()) {
            case 1:
                checkPermittedEmail(this.permittedSubtreesEmail, extractNameAsString(generalName));
                return;
            case 2:
                checkPermittedDNS(this.permittedSubtreesDNS, DERIA5String.getInstance(generalName.getName()).getString());
                return;
            case 4:
                checkPermittedDN(X500Name.getInstance(generalName.getName()));
                return;
            case 6:
                checkPermittedURI(this.permittedSubtreesURI, DERIA5String.getInstance(generalName.getName()).getString());
                return;
            case 7:
                checkPermittedIP(this.permittedSubtreesIP, ASN1OctetString.getInstance(generalName.getName()).getOctets());
                return;
            default:
                return;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PKIXNameConstraintValidator)) {
            return false;
        }
        PKIXNameConstraintValidator pKIXNameConstraintValidator = (PKIXNameConstraintValidator) obj;
        return collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesDN, this.excludedSubtreesDN) && collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesDNS, this.excludedSubtreesDNS) && collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesEmail, this.excludedSubtreesEmail) && collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesIP, this.excludedSubtreesIP) && collectionsAreEqual(pKIXNameConstraintValidator.excludedSubtreesURI, this.excludedSubtreesURI) && collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesDN, this.permittedSubtreesDN) && collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesDNS, this.permittedSubtreesDNS) && collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesEmail, this.permittedSubtreesEmail) && collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesIP, this.permittedSubtreesIP) && collectionsAreEqual(pKIXNameConstraintValidator.permittedSubtreesURI, this.permittedSubtreesURI);
    }

    public int hashCode() {
        return hashCollection(this.excludedSubtreesDN) + hashCollection(this.excludedSubtreesDNS) + hashCollection(this.excludedSubtreesEmail) + hashCollection(this.excludedSubtreesIP) + hashCollection(this.excludedSubtreesURI) + hashCollection(this.permittedSubtreesDN) + hashCollection(this.permittedSubtreesDNS) + hashCollection(this.permittedSubtreesEmail) + hashCollection(this.permittedSubtreesIP) + hashCollection(this.permittedSubtreesURI);
    }

    public void intersectEmptyPermittedSubtree(int i) {
        switch (i) {
            case 1:
                this.permittedSubtreesEmail = new HashSet();
                return;
            case 2:
                this.permittedSubtreesDNS = new HashSet();
                return;
            case 4:
                this.permittedSubtreesDN = new HashSet();
                return;
            case 6:
                this.permittedSubtreesURI = new HashSet();
                return;
            case 7:
                this.permittedSubtreesIP = new HashSet();
                return;
            default:
                return;
        }
    }

    public void intersectPermittedSubtree(GeneralSubtree generalSubtree) {
        intersectPermittedSubtree(new GeneralSubtree[]{generalSubtree});
    }

    public void intersectPermittedSubtree(GeneralSubtree[] generalSubtreeArr) {
        HashMap hashMap = new HashMap();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 == generalSubtreeArr.length) {
                break;
            }
            GeneralSubtree generalSubtree = generalSubtreeArr[i2];
            Integer valueOf = Integers.valueOf(generalSubtree.getBase().getTagNo());
            if (hashMap.get(valueOf) == null) {
                hashMap.put(valueOf, new HashSet());
            }
            ((Set) hashMap.get(valueOf)).add(generalSubtree);
            i = i2 + 1;
        }
        for (Entry entry : hashMap.entrySet()) {
            switch (((Integer) entry.getKey()).intValue()) {
                case 1:
                    this.permittedSubtreesEmail = intersectEmail(this.permittedSubtreesEmail, (Set) entry.getValue());
                    break;
                case 2:
                    this.permittedSubtreesDNS = intersectDNS(this.permittedSubtreesDNS, (Set) entry.getValue());
                    break;
                case 4:
                    this.permittedSubtreesDN = intersectDN(this.permittedSubtreesDN, (Set) entry.getValue());
                    break;
                case 6:
                    this.permittedSubtreesURI = intersectURI(this.permittedSubtreesURI, (Set) entry.getValue());
                    break;
                case 7:
                    this.permittedSubtreesIP = intersectIP(this.permittedSubtreesIP, (Set) entry.getValue());
                    break;
            }
        }
    }

    public String toString() {
        String str = "" + "permitted:\n";
        if (this.permittedSubtreesDN != null) {
            str = (str + "DN:\n") + this.permittedSubtreesDN.toString() + "\n";
        }
        if (this.permittedSubtreesDNS != null) {
            str = (str + "DNS:\n") + this.permittedSubtreesDNS.toString() + "\n";
        }
        if (this.permittedSubtreesEmail != null) {
            str = (str + "Email:\n") + this.permittedSubtreesEmail.toString() + "\n";
        }
        if (this.permittedSubtreesURI != null) {
            str = (str + "URI:\n") + this.permittedSubtreesURI.toString() + "\n";
        }
        if (this.permittedSubtreesIP != null) {
            str = (str + "IP:\n") + stringifyIPCollection(this.permittedSubtreesIP) + "\n";
        }
        String str2 = str + "excluded:\n";
        if (!this.excludedSubtreesDN.isEmpty()) {
            str2 = (str2 + "DN:\n") + this.excludedSubtreesDN.toString() + "\n";
        }
        if (!this.excludedSubtreesDNS.isEmpty()) {
            str2 = (str2 + "DNS:\n") + this.excludedSubtreesDNS.toString() + "\n";
        }
        if (!this.excludedSubtreesEmail.isEmpty()) {
            str2 = (str2 + "Email:\n") + this.excludedSubtreesEmail.toString() + "\n";
        }
        if (!this.excludedSubtreesURI.isEmpty()) {
            str2 = (str2 + "URI:\n") + this.excludedSubtreesURI.toString() + "\n";
        }
        if (this.excludedSubtreesIP.isEmpty()) {
            return str2;
        }
        return (str2 + "IP:\n") + stringifyIPCollection(this.excludedSubtreesIP) + "\n";
    }
}
