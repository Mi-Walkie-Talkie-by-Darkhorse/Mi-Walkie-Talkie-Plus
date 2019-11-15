package org.bouncycastle.x509.util;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import javax.naming.NamingException;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.x509.Certificate;
import org.bouncycastle.asn1.x509.CertificatePair;
import org.bouncycastle.jce.X509LDAPCertStoreParameters;
import org.bouncycastle.jce.provider.X509CertPairParser;
import org.bouncycastle.util.StoreException;
import org.bouncycastle.x509.X509AttributeCertStoreSelector;
import org.bouncycastle.x509.X509CRLStoreSelector;
import org.bouncycastle.x509.X509CertPairStoreSelector;
import org.bouncycastle.x509.X509CertStoreSelector;
import org.bouncycastle.x509.X509CertificatePair;

public class LDAPStoreHelper {
    private static String LDAP_PROVIDER = "com.sun.jndi.ldap.LdapCtxFactory";
    private static String REFERRALS_IGNORE = "ignore";
    private static final String SEARCH_SECURITY_LEVEL = "none";
    private static final String URL_CONTEXT_PREFIX = "com.sun.jndi.url";
    private static int cacheSize = 32;
    private static long lifeTime = 60000;
    private Map cacheMap = new HashMap(cacheSize);
    private X509LDAPCertStoreParameters params;

    public LDAPStoreHelper(X509LDAPCertStoreParameters x509LDAPCertStoreParameters) {
        this.params = x509LDAPCertStoreParameters;
    }

    private synchronized void addToCache(String str, List list) {
        Object obj;
        long j;
        Date date = new Date(System.currentTimeMillis());
        ArrayList arrayList = new ArrayList();
        arrayList.add(date);
        arrayList.add(list);
        if (this.cacheMap.containsKey(str)) {
            this.cacheMap.put(str, arrayList);
        } else {
            if (this.cacheMap.size() >= cacheSize) {
                long time = date.getTime();
                Object obj2 = null;
                for (Entry entry : this.cacheMap.entrySet()) {
                    long time2 = ((Date) ((List) entry.getValue()).get(0)).getTime();
                    if (time2 < time) {
                        obj = entry.getKey();
                        j = time2;
                    } else {
                        obj = obj2;
                        j = time;
                    }
                    time = j;
                    obj2 = obj;
                }
                this.cacheMap.remove(obj2);
            }
            this.cacheMap.put(str, arrayList);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00dd A[LOOP:1: B:32:0x00d7->B:34:0x00dd, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List attrCertSubjectSerialSearch(org.bouncycastle.x509.X509AttributeCertStoreSelector r8, java.lang.String[] r9, java.lang.String[] r10, java.lang.String[] r11) throws org.bouncycastle.util.StoreException {
        /*
            r7 = this;
            r1 = 0
            r2 = 0
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.HashSet r4 = new java.util.HashSet
            r4.<init>()
            org.bouncycastle.x509.AttributeCertificateHolder r0 = r8.getHolder()
            if (r0 == 0) goto L_0x0107
            org.bouncycastle.x509.AttributeCertificateHolder r0 = r8.getHolder()
            java.math.BigInteger r0 = r0.getSerialNumber()
            if (r0 == 0) goto L_0x002b
            org.bouncycastle.x509.AttributeCertificateHolder r0 = r8.getHolder()
            java.math.BigInteger r0 = r0.getSerialNumber()
            java.lang.String r0 = r0.toString()
            r4.add(r0)
        L_0x002b:
            org.bouncycastle.x509.AttributeCertificateHolder r0 = r8.getHolder()
            java.security.Principal[] r0 = r0.getEntityNames()
            if (r0 == 0) goto L_0x0107
            org.bouncycastle.x509.AttributeCertificateHolder r0 = r8.getHolder()
            java.security.Principal[] r0 = r0.getEntityNames()
        L_0x003d:
            org.bouncycastle.x509.X509AttributeCertificate r5 = r8.getAttributeCert()
            if (r5 == 0) goto L_0x006c
            org.bouncycastle.x509.X509AttributeCertificate r5 = r8.getAttributeCert()
            org.bouncycastle.x509.AttributeCertificateHolder r5 = r5.getHolder()
            java.security.Principal[] r5 = r5.getEntityNames()
            if (r5 == 0) goto L_0x005d
            org.bouncycastle.x509.X509AttributeCertificate r0 = r8.getAttributeCert()
            org.bouncycastle.x509.AttributeCertificateHolder r0 = r0.getHolder()
            java.security.Principal[] r0 = r0.getEntityNames()
        L_0x005d:
            org.bouncycastle.x509.X509AttributeCertificate r5 = r8.getAttributeCert()
            java.math.BigInteger r5 = r5.getSerialNumber()
            java.lang.String r5 = r5.toString()
            r4.add(r5)
        L_0x006c:
            if (r0 == 0) goto L_0x007e
            r1 = r0[r2]
            boolean r1 = r1 instanceof javax.security.auth.x500.X500Principal
            if (r1 == 0) goto L_0x00be
            r0 = r0[r2]
            javax.security.auth.x500.X500Principal r0 = (javax.security.auth.x500.X500Principal) r0
            java.lang.String r1 = "RFC1779"
            java.lang.String r1 = r0.getName(r1)
        L_0x007e:
            java.math.BigInteger r0 = r8.getSerialNumber()
            if (r0 == 0) goto L_0x008f
            java.math.BigInteger r0 = r8.getSerialNumber()
            java.lang.String r0 = r0.toString()
            r4.add(r0)
        L_0x008f:
            if (r1 == 0) goto L_0x00c5
            r0 = r2
        L_0x0092:
            int r2 = r11.length
            if (r0 >= r2) goto L_0x00c5
            r2 = r11[r0]
            java.lang.String r2 = r7.parseDN(r1, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "*"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r2 = r5.append(r2)
            java.lang.String r5 = "*"
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            java.util.List r2 = r7.search(r10, r2, r9)
            r3.addAll(r2)
            int r0 = r0 + 1
            goto L_0x0092
        L_0x00be:
            r0 = r0[r2]
            java.lang.String r1 = r0.getName()
            goto L_0x007e
        L_0x00c5:
            int r0 = r4.size()
            if (r0 <= 0) goto L_0x00f5
            org.bouncycastle.jce.X509LDAPCertStoreParameters r0 = r7.params
            java.lang.String r0 = r0.getSearchForSerialNumberIn()
            if (r0 == 0) goto L_0x00f5
            java.util.Iterator r2 = r4.iterator()
        L_0x00d7:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x00f5
            java.lang.Object r0 = r2.next()
            java.lang.String r0 = (java.lang.String) r0
            org.bouncycastle.jce.X509LDAPCertStoreParameters r5 = r7.params
            java.lang.String r5 = r5.getSearchForSerialNumberIn()
            java.lang.String[] r5 = r7.splitString(r5)
            java.util.List r0 = r7.search(r5, r0, r9)
            r3.addAll(r0)
            goto L_0x00d7
        L_0x00f5:
            int r0 = r4.size()
            if (r0 != 0) goto L_0x0106
            if (r1 != 0) goto L_0x0106
            java.lang.String r0 = "*"
            java.util.List r0 = r7.search(r10, r0, r9)
            r3.addAll(r0)
        L_0x0106:
            return r3
        L_0x0107:
            r0 = r1
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.util.LDAPStoreHelper.attrCertSubjectSerialSearch(org.bouncycastle.x509.X509AttributeCertStoreSelector, java.lang.String[], java.lang.String[], java.lang.String[]):java.util.List");
    }

    private List cRLIssuerSearch(X509CRLStoreSelector x509CRLStoreSelector, String[] strArr, String[] strArr2, String[] strArr3) throws StoreException {
        String str;
        ArrayList arrayList = new ArrayList();
        String str2 = null;
        HashSet hashSet = new HashSet();
        if (x509CRLStoreSelector.getIssuers() != null) {
            hashSet.addAll(x509CRLStoreSelector.getIssuers());
        }
        if (x509CRLStoreSelector.getCertificateChecking() != null) {
            hashSet.add(getCertificateIssuer(x509CRLStoreSelector.getCertificateChecking()));
        }
        if (x509CRLStoreSelector.getAttrCertificateChecking() != null) {
            Principal[] principals = x509CRLStoreSelector.getAttrCertificateChecking().getIssuer().getPrincipals();
            for (int i = 0; i < principals.length; i++) {
                if (principals[i] instanceof X500Principal) {
                    hashSet.add(principals[i]);
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (true) {
            str = str2;
            if (!it.hasNext()) {
                break;
            }
            str2 = ((X500Principal) it.next()).getName("RFC1779");
            for (String parseDN : strArr3) {
                arrayList.addAll(search(strArr2, "*" + parseDN(str2, parseDN) + "*", strArr));
            }
        }
        if (str == null) {
            arrayList.addAll(search(strArr2, "*", strArr));
        }
        return arrayList;
    }

    private List certSubjectSerialSearch(X509CertStoreSelector x509CertStoreSelector, String[] strArr, String[] strArr2, String[] strArr3) throws StoreException {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        String str3 = null;
        String subjectAsString = getSubjectAsString(x509CertStoreSelector);
        if (x509CertStoreSelector.getSerialNumber() != null) {
            str3 = x509CertStoreSelector.getSerialNumber().toString();
        }
        if (x509CertStoreSelector.getCertificate() != null) {
            str = x509CertStoreSelector.getCertificate().getSubjectX500Principal().getName("RFC1779");
            str2 = x509CertStoreSelector.getCertificate().getSerialNumber().toString();
        } else {
            str = subjectAsString;
            str2 = str3;
        }
        if (str != null) {
            for (String parseDN : strArr3) {
                arrayList.addAll(search(strArr2, "*" + parseDN(str, parseDN) + "*", strArr));
            }
        }
        if (!(str2 == null || this.params.getSearchForSerialNumberIn() == null)) {
            arrayList.addAll(search(splitString(this.params.getSearchForSerialNumberIn()), str2, strArr));
        }
        if (str2 == null && str == null) {
            arrayList.addAll(search(strArr2, "*", strArr));
        }
        return arrayList;
    }

    private DirContext connectLDAP() throws NamingException {
        Properties properties = new Properties();
        properties.setProperty("java.naming.factory.initial", LDAP_PROVIDER);
        properties.setProperty("java.naming.batchsize", "0");
        properties.setProperty("java.naming.provider.url", this.params.getLdapURL());
        properties.setProperty("java.naming.factory.url.pkgs", URL_CONTEXT_PREFIX);
        properties.setProperty("java.naming.referral", REFERRALS_IGNORE);
        properties.setProperty("java.naming.security.authentication", "none");
        return new InitialDirContext(properties);
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<byte[]>, for r6v0, types: [java.util.List, java.util.List<byte[]>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set createAttributeCertificates(java.util.List<byte[]> r6, org.bouncycastle.x509.X509AttributeCertStoreSelector r7) throws org.bouncycastle.util.StoreException {
        /*
            r5 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r6.iterator()
            org.bouncycastle.jce.provider.X509AttrCertParser r3 = new org.bouncycastle.jce.provider.X509AttrCertParser
            r3.<init>()
        L_0x000e:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0036
            java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch:{ StreamParsingException -> 0x0034 }
            java.lang.Object r0 = r2.next()     // Catch:{ StreamParsingException -> 0x0034 }
            byte[] r0 = (byte[]) r0     // Catch:{ StreamParsingException -> 0x0034 }
            byte[] r0 = (byte[]) r0     // Catch:{ StreamParsingException -> 0x0034 }
            r4.<init>(r0)     // Catch:{ StreamParsingException -> 0x0034 }
            r3.engineInit(r4)     // Catch:{ StreamParsingException -> 0x0034 }
            java.lang.Object r0 = r3.engineRead()     // Catch:{ StreamParsingException -> 0x0034 }
            org.bouncycastle.x509.X509AttributeCertificate r0 = (org.bouncycastle.x509.X509AttributeCertificate) r0     // Catch:{ StreamParsingException -> 0x0034 }
            boolean r4 = r7.match(r0)     // Catch:{ StreamParsingException -> 0x0034 }
            if (r4 == 0) goto L_0x000e
            r1.add(r0)     // Catch:{ StreamParsingException -> 0x0034 }
            goto L_0x000e
        L_0x0034:
            r0 = move-exception
            goto L_0x000e
        L_0x0036:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.util.LDAPStoreHelper.createAttributeCertificates(java.util.List, org.bouncycastle.x509.X509AttributeCertStoreSelector):java.util.Set");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<byte[]>, for r6v0, types: [java.util.List, java.util.List<byte[]>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set createCRLs(java.util.List<byte[]> r6, org.bouncycastle.x509.X509CRLStoreSelector r7) throws org.bouncycastle.util.StoreException {
        /*
            r5 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            org.bouncycastle.jce.provider.X509CRLParser r2 = new org.bouncycastle.jce.provider.X509CRLParser
            r2.<init>()
            java.util.Iterator r3 = r6.iterator()
        L_0x000e:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L_0x0036
            java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch:{ StreamParsingException -> 0x0034 }
            java.lang.Object r0 = r3.next()     // Catch:{ StreamParsingException -> 0x0034 }
            byte[] r0 = (byte[]) r0     // Catch:{ StreamParsingException -> 0x0034 }
            byte[] r0 = (byte[]) r0     // Catch:{ StreamParsingException -> 0x0034 }
            r4.<init>(r0)     // Catch:{ StreamParsingException -> 0x0034 }
            r2.engineInit(r4)     // Catch:{ StreamParsingException -> 0x0034 }
            java.lang.Object r0 = r2.engineRead()     // Catch:{ StreamParsingException -> 0x0034 }
            java.security.cert.X509CRL r0 = (java.security.cert.X509CRL) r0     // Catch:{ StreamParsingException -> 0x0034 }
            boolean r4 = r7.match(r0)     // Catch:{ StreamParsingException -> 0x0034 }
            if (r4 == 0) goto L_0x000e
            r1.add(r0)     // Catch:{ StreamParsingException -> 0x0034 }
            goto L_0x000e
        L_0x0034:
            r0 = move-exception
            goto L_0x000e
        L_0x0036:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.util.LDAPStoreHelper.createCRLs(java.util.List, org.bouncycastle.x509.X509CRLStoreSelector):java.util.Set");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<byte[]>, for r6v0, types: [java.util.List, java.util.List<byte[]>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Set createCerts(java.util.List<byte[]> r6, org.bouncycastle.x509.X509CertStoreSelector r7) throws org.bouncycastle.util.StoreException {
        /*
            r5 = this;
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            java.util.Iterator r2 = r6.iterator()
            org.bouncycastle.jce.provider.X509CertParser r3 = new org.bouncycastle.jce.provider.X509CertParser
            r3.<init>()
        L_0x000e:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0036
            java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch:{ Exception -> 0x0034 }
            java.lang.Object r0 = r2.next()     // Catch:{ Exception -> 0x0034 }
            byte[] r0 = (byte[]) r0     // Catch:{ Exception -> 0x0034 }
            byte[] r0 = (byte[]) r0     // Catch:{ Exception -> 0x0034 }
            r4.<init>(r0)     // Catch:{ Exception -> 0x0034 }
            r3.engineInit(r4)     // Catch:{ Exception -> 0x0034 }
            java.lang.Object r0 = r3.engineRead()     // Catch:{ Exception -> 0x0034 }
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0     // Catch:{ Exception -> 0x0034 }
            boolean r4 = r7.match(r0)     // Catch:{ Exception -> 0x0034 }
            if (r4 == 0) goto L_0x000e
            r1.add(r0)     // Catch:{ Exception -> 0x0034 }
            goto L_0x000e
        L_0x0034:
            r0 = move-exception
            goto L_0x000e
        L_0x0036:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.util.LDAPStoreHelper.createCerts(java.util.List, org.bouncycastle.x509.X509CertStoreSelector):java.util.Set");
    }

    private Set createCrossCertificatePairs(List list, X509CertPairStoreSelector x509CertPairStoreSelector) throws StoreException {
        int i;
        X509CertificatePair x509CertificatePair;
        HashSet hashSet = new HashSet();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                return hashSet;
            }
            try {
                X509CertPairParser x509CertPairParser = new X509CertPairParser();
                x509CertPairParser.engineInit(new ByteArrayInputStream((byte[]) list.get(i3)));
                x509CertificatePair = (X509CertificatePair) x509CertPairParser.engineRead();
                i = i3;
            } catch (StreamParsingException e) {
                try {
                    i = i3 + 1;
                    x509CertificatePair = new X509CertificatePair(new CertificatePair(Certificate.getInstance(new ASN1InputStream((byte[]) list.get(i3)).readObject()), Certificate.getInstance(new ASN1InputStream((byte[]) list.get(i3 + 1)).readObject())));
                } catch (CertificateParsingException e2) {
                    i = i3;
                } catch (IOException e3) {
                    i = i3;
                }
            }
            try {
                if (x509CertPairStoreSelector.match(x509CertificatePair)) {
                    hashSet.add(x509CertificatePair);
                }
            } catch (IOException | CertificateParsingException e4) {
            }
            i2 = i + 1;
        }
    }

    private List crossCertificatePairSubjectSearch(X509CertPairStoreSelector x509CertPairStoreSelector, String[] strArr, String[] strArr2, String[] strArr3) throws StoreException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        if (x509CertPairStoreSelector.getForwardSelector() != null) {
            str = getSubjectAsString(x509CertPairStoreSelector.getForwardSelector());
        }
        String str2 = (x509CertPairStoreSelector.getCertPair() == null || x509CertPairStoreSelector.getCertPair().getForward() == null) ? str : x509CertPairStoreSelector.getCertPair().getForward().getSubjectX500Principal().getName("RFC1779");
        if (str2 != null) {
            for (String parseDN : strArr3) {
                arrayList.addAll(search(strArr2, "*" + parseDN(str2, parseDN) + "*", strArr));
            }
        }
        if (str2 == null) {
            arrayList.addAll(search(strArr2, "*", strArr));
        }
        return arrayList;
    }

    private X500Principal getCertificateIssuer(X509Certificate x509Certificate) {
        return x509Certificate.getIssuerX500Principal();
    }

    private List getFromCache(String str) {
        List list = (List) this.cacheMap.get(str);
        long currentTimeMillis = System.currentTimeMillis();
        if (list == null) {
            return null;
        }
        if (((Date) list.get(0)).getTime() < currentTimeMillis - lifeTime) {
            return null;
        }
        return (List) list.get(1);
    }

    private String getSubjectAsString(X509CertStoreSelector x509CertStoreSelector) {
        try {
            byte[] subjectAsBytes = x509CertStoreSelector.getSubjectAsBytes();
            if (subjectAsBytes != null) {
                return new X500Principal(subjectAsBytes).getName("RFC1779");
            }
            return null;
        } catch (IOException e) {
            throw new StoreException("exception processing name: " + e.getMessage(), e);
        }
    }

    private String parseDN(String str, String str2) {
        int i;
        int indexOf = str.toLowerCase().indexOf(str2.toLowerCase() + "=");
        if (indexOf == -1) {
            return "";
        }
        String substring = str.substring(indexOf + str2.length());
        int indexOf2 = substring.indexOf(44);
        if (indexOf2 == -1) {
            indexOf2 = substring.length();
        }
        while (substring.charAt(i - 1) == '\\') {
            i = substring.indexOf(44, i + 1);
            if (i == -1) {
                i = substring.length();
            }
        }
        String substring2 = substring.substring(0, i);
        String substring3 = substring2.substring(substring2.indexOf(61) + 1);
        if (substring3.charAt(0) == ' ') {
            substring3 = substring3.substring(1);
        }
        if (substring3.startsWith("\"")) {
            substring3 = substring3.substring(1);
        }
        return substring3.endsWith("\"") ? substring3.substring(0, substring3.length() - 1) : substring3;
    }

    /* JADX WARNING: Incorrect condition in loop: B:23:0x00f0 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List search(java.lang.String[] r7, java.lang.String r8, java.lang.String[] r9) throws org.bouncycastle.util.StoreException {
        /*
            r6 = this;
            r3 = 0
            r1 = 0
            if (r7 != 0) goto L_0x002c
            r0 = r3
        L_0x0005:
            java.lang.String r2 = ""
        L_0x0007:
            int r4 = r9.length
            if (r1 >= r4) goto L_0x0083
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.StringBuilder r2 = r4.append(r2)
            java.lang.String r4 = "("
            java.lang.StringBuilder r2 = r2.append(r4)
            r4 = r9[r1]
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r4 = "=*)"
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            int r1 = r1 + 1
            goto L_0x0007
        L_0x002c:
            java.lang.String r0 = ""
            java.lang.String r2 = "**"
            boolean r2 = r8.equals(r2)
            if (r2 == 0) goto L_0x0038
            java.lang.String r8 = "*"
        L_0x0038:
            r2 = r0
            r0 = r1
        L_0x003a:
            int r4 = r7.length
            if (r0 >= r4) goto L_0x0069
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.StringBuilder r2 = r4.append(r2)
            java.lang.String r4 = "("
            java.lang.StringBuilder r2 = r2.append(r4)
            r4 = r7[r0]
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r4 = "="
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.StringBuilder r2 = r2.append(r8)
            java.lang.String r4 = ")"
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            int r0 = r0 + 1
            goto L_0x003a
        L_0x0069:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = "(|"
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r2 = ")"
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            goto L_0x0005
        L_0x0083:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "(|"
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ")"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "(&"
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.String r4 = ""
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.StringBuilder r2 = r2.append(r1)
            java.lang.String r4 = ")"
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            if (r0 != 0) goto L_0x0136
        L_0x00c1:
            java.util.List r0 = r6.getFromCache(r1)
            if (r0 == 0) goto L_0x00c8
        L_0x00c7:
            return r0
        L_0x00c8:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            javax.naming.directory.DirContext r3 = r6.connectLDAP()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            javax.naming.directory.SearchControls r0 = new javax.naming.directory.SearchControls     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            r0.<init>()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            r4 = 2
            r0.setSearchScope(r4)     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            r4 = 0
            r0.setCountLimit(r4)     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            r0.setReturningAttributes(r9)     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            org.bouncycastle.jce.X509LDAPCertStoreParameters r4 = r6.params     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            java.lang.String r4 = r4.getBaseDN()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            javax.naming.NamingEnumeration r4 = r3.search(r4, r1, r0)     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
        L_0x00ec:
            boolean r0 = r4.hasMoreElements()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            if (r0 == 0) goto L_0x0120
            java.lang.Object r0 = r4.next()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            javax.naming.directory.SearchResult r0 = (javax.naming.directory.SearchResult) r0     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            javax.naming.directory.Attributes r0 = r0.getAttributes()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            javax.naming.NamingEnumeration r0 = r0.getAll()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            java.lang.Object r0 = r0.next()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            javax.naming.directory.Attribute r0 = (javax.naming.directory.Attribute) r0     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            javax.naming.NamingEnumeration r0 = r0.getAll()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
        L_0x010a:
            boolean r5 = r0.hasMore()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            if (r5 == 0) goto L_0x00ec
            java.lang.Object r5 = r0.next()     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            r2.add(r5)     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            goto L_0x010a
        L_0x0118:
            r0 = move-exception
            if (r3 == 0) goto L_0x011e
            r3.close()     // Catch:{ Exception -> 0x0132 }
        L_0x011e:
            r0 = r2
            goto L_0x00c7
        L_0x0120:
            r6.addToCache(r1, r2)     // Catch:{ NamingException -> 0x0118, all -> 0x012b }
            if (r3 == 0) goto L_0x011e
            r3.close()     // Catch:{ Exception -> 0x0129 }
            goto L_0x011e
        L_0x0129:
            r0 = move-exception
            goto L_0x011e
        L_0x012b:
            r0 = move-exception
            if (r3 == 0) goto L_0x0131
            r3.close()     // Catch:{ Exception -> 0x0134 }
        L_0x0131:
            throw r0
        L_0x0132:
            r0 = move-exception
            goto L_0x011e
        L_0x0134:
            r1 = move-exception
            goto L_0x0131
        L_0x0136:
            r1 = r2
            goto L_0x00c1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.util.LDAPStoreHelper.search(java.lang.String[], java.lang.String, java.lang.String[]):java.util.List");
    }

    private String[] splitString(String str) {
        return str.split("\\s+");
    }

    public Collection getAACertificates(X509AttributeCertStoreSelector x509AttributeCertStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getAACertificateAttribute());
        String[] splitString2 = splitString(this.params.getLdapAACertificateAttributeName());
        String[] splitString3 = splitString(this.params.getAACertificateSubjectAttributeName());
        Set createAttributeCertificates = createAttributeCertificates(attrCertSubjectSerialSearch(x509AttributeCertStoreSelector, splitString, splitString2, splitString3), x509AttributeCertStoreSelector);
        if (createAttributeCertificates.size() == 0) {
            createAttributeCertificates.addAll(createAttributeCertificates(attrCertSubjectSerialSearch(new X509AttributeCertStoreSelector(), splitString, splitString2, splitString3), x509AttributeCertStoreSelector));
        }
        return createAttributeCertificates;
    }

    public Collection getAttributeAuthorityRevocationLists(X509CRLStoreSelector x509CRLStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getAttributeAuthorityRevocationListAttribute());
        String[] splitString2 = splitString(this.params.getLdapAttributeAuthorityRevocationListAttributeName());
        String[] splitString3 = splitString(this.params.getAttributeAuthorityRevocationListIssuerAttributeName());
        Set createCRLs = createCRLs(cRLIssuerSearch(x509CRLStoreSelector, splitString, splitString2, splitString3), x509CRLStoreSelector);
        if (createCRLs.size() == 0) {
            createCRLs.addAll(createCRLs(cRLIssuerSearch(new X509CRLStoreSelector(), splitString, splitString2, splitString3), x509CRLStoreSelector));
        }
        return createCRLs;
    }

    public Collection getAttributeCertificateAttributes(X509AttributeCertStoreSelector x509AttributeCertStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getAttributeCertificateAttributeAttribute());
        String[] splitString2 = splitString(this.params.getLdapAttributeCertificateAttributeAttributeName());
        String[] splitString3 = splitString(this.params.getAttributeCertificateAttributeSubjectAttributeName());
        Set createAttributeCertificates = createAttributeCertificates(attrCertSubjectSerialSearch(x509AttributeCertStoreSelector, splitString, splitString2, splitString3), x509AttributeCertStoreSelector);
        if (createAttributeCertificates.size() == 0) {
            createAttributeCertificates.addAll(createAttributeCertificates(attrCertSubjectSerialSearch(new X509AttributeCertStoreSelector(), splitString, splitString2, splitString3), x509AttributeCertStoreSelector));
        }
        return createAttributeCertificates;
    }

    public Collection getAttributeCertificateRevocationLists(X509CRLStoreSelector x509CRLStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getAttributeCertificateRevocationListAttribute());
        String[] splitString2 = splitString(this.params.getLdapAttributeCertificateRevocationListAttributeName());
        String[] splitString3 = splitString(this.params.getAttributeCertificateRevocationListIssuerAttributeName());
        Set createCRLs = createCRLs(cRLIssuerSearch(x509CRLStoreSelector, splitString, splitString2, splitString3), x509CRLStoreSelector);
        if (createCRLs.size() == 0) {
            createCRLs.addAll(createCRLs(cRLIssuerSearch(new X509CRLStoreSelector(), splitString, splitString2, splitString3), x509CRLStoreSelector));
        }
        return createCRLs;
    }

    public Collection getAttributeDescriptorCertificates(X509AttributeCertStoreSelector x509AttributeCertStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getAttributeDescriptorCertificateAttribute());
        String[] splitString2 = splitString(this.params.getLdapAttributeDescriptorCertificateAttributeName());
        String[] splitString3 = splitString(this.params.getAttributeDescriptorCertificateSubjectAttributeName());
        Set createAttributeCertificates = createAttributeCertificates(attrCertSubjectSerialSearch(x509AttributeCertStoreSelector, splitString, splitString2, splitString3), x509AttributeCertStoreSelector);
        if (createAttributeCertificates.size() == 0) {
            createAttributeCertificates.addAll(createAttributeCertificates(attrCertSubjectSerialSearch(new X509AttributeCertStoreSelector(), splitString, splitString2, splitString3), x509AttributeCertStoreSelector));
        }
        return createAttributeCertificates;
    }

    public Collection getAuthorityRevocationLists(X509CRLStoreSelector x509CRLStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getAuthorityRevocationListAttribute());
        String[] splitString2 = splitString(this.params.getLdapAuthorityRevocationListAttributeName());
        String[] splitString3 = splitString(this.params.getAuthorityRevocationListIssuerAttributeName());
        Set createCRLs = createCRLs(cRLIssuerSearch(x509CRLStoreSelector, splitString, splitString2, splitString3), x509CRLStoreSelector);
        if (createCRLs.size() == 0) {
            createCRLs.addAll(createCRLs(cRLIssuerSearch(new X509CRLStoreSelector(), splitString, splitString2, splitString3), x509CRLStoreSelector));
        }
        return createCRLs;
    }

    public Collection getCACertificates(X509CertStoreSelector x509CertStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getCACertificateAttribute());
        String[] splitString2 = splitString(this.params.getLdapCACertificateAttributeName());
        String[] splitString3 = splitString(this.params.getCACertificateSubjectAttributeName());
        Set createCerts = createCerts(certSubjectSerialSearch(x509CertStoreSelector, splitString, splitString2, splitString3), x509CertStoreSelector);
        if (createCerts.size() == 0) {
            createCerts.addAll(createCerts(certSubjectSerialSearch(new X509CertStoreSelector(), splitString, splitString2, splitString3), x509CertStoreSelector));
        }
        return createCerts;
    }

    public Collection getCertificateRevocationLists(X509CRLStoreSelector x509CRLStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getCertificateRevocationListAttribute());
        String[] splitString2 = splitString(this.params.getLdapCertificateRevocationListAttributeName());
        String[] splitString3 = splitString(this.params.getCertificateRevocationListIssuerAttributeName());
        Set createCRLs = createCRLs(cRLIssuerSearch(x509CRLStoreSelector, splitString, splitString2, splitString3), x509CRLStoreSelector);
        if (createCRLs.size() == 0) {
            createCRLs.addAll(createCRLs(cRLIssuerSearch(new X509CRLStoreSelector(), splitString, splitString2, splitString3), x509CRLStoreSelector));
        }
        return createCRLs;
    }

    public Collection getCrossCertificatePairs(X509CertPairStoreSelector x509CertPairStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getCrossCertificateAttribute());
        String[] splitString2 = splitString(this.params.getLdapCrossCertificateAttributeName());
        String[] splitString3 = splitString(this.params.getCrossCertificateSubjectAttributeName());
        Set createCrossCertificatePairs = createCrossCertificatePairs(crossCertificatePairSubjectSearch(x509CertPairStoreSelector, splitString, splitString2, splitString3), x509CertPairStoreSelector);
        if (createCrossCertificatePairs.size() == 0) {
            X509CertStoreSelector x509CertStoreSelector = new X509CertStoreSelector();
            X509CertPairStoreSelector x509CertPairStoreSelector2 = new X509CertPairStoreSelector();
            x509CertPairStoreSelector2.setForwardSelector(x509CertStoreSelector);
            x509CertPairStoreSelector2.setReverseSelector(x509CertStoreSelector);
            createCrossCertificatePairs.addAll(createCrossCertificatePairs(crossCertificatePairSubjectSearch(x509CertPairStoreSelector2, splitString, splitString2, splitString3), x509CertPairStoreSelector));
        }
        return createCrossCertificatePairs;
    }

    public Collection getDeltaCertificateRevocationLists(X509CRLStoreSelector x509CRLStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getDeltaRevocationListAttribute());
        String[] splitString2 = splitString(this.params.getLdapDeltaRevocationListAttributeName());
        String[] splitString3 = splitString(this.params.getDeltaRevocationListIssuerAttributeName());
        Set createCRLs = createCRLs(cRLIssuerSearch(x509CRLStoreSelector, splitString, splitString2, splitString3), x509CRLStoreSelector);
        if (createCRLs.size() == 0) {
            createCRLs.addAll(createCRLs(cRLIssuerSearch(new X509CRLStoreSelector(), splitString, splitString2, splitString3), x509CRLStoreSelector));
        }
        return createCRLs;
    }

    public Collection getUserCertificates(X509CertStoreSelector x509CertStoreSelector) throws StoreException {
        String[] splitString = splitString(this.params.getUserCertificateAttribute());
        String[] splitString2 = splitString(this.params.getLdapUserCertificateAttributeName());
        String[] splitString3 = splitString(this.params.getUserCertificateSubjectAttributeName());
        Set createCerts = createCerts(certSubjectSerialSearch(x509CertStoreSelector, splitString, splitString2, splitString3), x509CertStoreSelector);
        if (createCerts.size() == 0) {
            createCerts.addAll(createCerts(certSubjectSerialSearch(new X509CertStoreSelector(), splitString, splitString2, splitString3), x509CertStoreSelector));
        }
        return createCerts;
    }
}
