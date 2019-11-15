package org.bouncycastle.jce.provider;

import android.support.v4.os.EnvironmentCompat;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.style.BCStyle;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.PolicyInformation;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.PKIXCRLStoreSelector;
import org.bouncycastle.jcajce.PKIXCertStoreSelector;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters.Builder;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.Arrays;

class RFC3280CertPathUtilities {
    public static final String ANY_POLICY = "2.5.29.32.0";
    public static final String AUTHORITY_KEY_IDENTIFIER = Extension.authorityKeyIdentifier.getId();
    public static final String BASIC_CONSTRAINTS = Extension.basicConstraints.getId();
    public static final String CERTIFICATE_POLICIES = Extension.certificatePolicies.getId();
    public static final String CRL_DISTRIBUTION_POINTS = Extension.cRLDistributionPoints.getId();
    public static final String CRL_NUMBER = Extension.cRLNumber.getId();
    protected static final int CRL_SIGN = 6;
    private static final PKIXCRLUtil CRL_UTIL = new PKIXCRLUtil();
    public static final String DELTA_CRL_INDICATOR = Extension.deltaCRLIndicator.getId();
    public static final String FRESHEST_CRL = Extension.freshestCRL.getId();
    public static final String INHIBIT_ANY_POLICY = Extension.inhibitAnyPolicy.getId();
    public static final String ISSUING_DISTRIBUTION_POINT = Extension.issuingDistributionPoint.getId();
    protected static final int KEY_CERT_SIGN = 5;
    public static final String KEY_USAGE = Extension.keyUsage.getId();
    public static final String NAME_CONSTRAINTS = Extension.nameConstraints.getId();
    public static final String POLICY_CONSTRAINTS = Extension.policyConstraints.getId();
    public static final String POLICY_MAPPINGS = Extension.policyMappings.getId();
    public static final String SUBJECT_ALTERNATIVE_NAME = Extension.subjectAlternativeName.getId();
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", EnvironmentCompat.MEDIA_UNKNOWN, "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    RFC3280CertPathUtilities() {
    }

    private static void checkCRL(DistributionPoint distributionPoint, PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, CertStatus certStatus, ReasonsMask reasonsMask, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        Date date2 = new Date(System.currentTimeMillis());
        if (date.getTime() > date2.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it = CertPathValidatorUtilities.getCompleteCRLs(distributionPoint, x509Certificate, date2, pKIXExtendedParameters).iterator();
        Throwable th = null;
        boolean z = false;
        while (it.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
            try {
                X509CRL x509crl = (X509CRL) it.next();
                ReasonsMask processCRLD = processCRLD(x509crl, distributionPoint);
                if (processCRLD.hasNewReasons(reasonsMask)) {
                    PublicKey processCRLG = processCRLG(x509crl, processCRLF(x509crl, x509Certificate, x509Certificate2, publicKey, pKIXExtendedParameters, list, jcaJceHelper));
                    X509CRL x509crl2 = null;
                    Date date3 = pKIXExtendedParameters.getDate() != null ? pKIXExtendedParameters.getDate() : date2;
                    if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                        x509crl2 = processCRLH(CertPathValidatorUtilities.getDeltaCRLs(date3, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()), processCRLG);
                    }
                    if (pKIXExtendedParameters.getValidityModel() == 1 || x509Certificate.getNotAfter().getTime() >= x509crl.getThisUpdate().getTime()) {
                        processCRLB1(distributionPoint, x509Certificate, x509crl);
                        processCRLB2(distributionPoint, x509Certificate, x509crl);
                        processCRLC(x509crl2, x509crl, pKIXExtendedParameters);
                        processCRLI(date, x509crl2, x509Certificate, certStatus, pKIXExtendedParameters);
                        processCRLJ(date, x509crl, x509Certificate, certStatus);
                        if (certStatus.getCertStatus() == 8) {
                            certStatus.setCertStatus(11);
                        }
                        reasonsMask.addReasons(processCRLD);
                        Set criticalExtensionOIDs = x509crl.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs != null) {
                            HashSet hashSet = new HashSet(criticalExtensionOIDs);
                            hashSet.remove(Extension.issuingDistributionPoint.getId());
                            hashSet.remove(Extension.deltaCRLIndicator.getId());
                            if (!hashSet.isEmpty()) {
                                throw new AnnotatedException("CRL contains unsupported critical extensions.");
                            }
                        }
                        if (x509crl2 != null) {
                            Set criticalExtensionOIDs2 = x509crl2.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs2 != null) {
                                HashSet hashSet2 = new HashSet(criticalExtensionOIDs2);
                                hashSet2.remove(Extension.issuingDistributionPoint.getId());
                                hashSet2.remove(Extension.deltaCRLIndicator.getId());
                                if (!hashSet2.isEmpty()) {
                                    throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
                                }
                            }
                        }
                        z = true;
                    } else {
                        throw new AnnotatedException("No valid CRL for current time found.");
                    }
                } else {
                    continue;
                }
            } catch (AnnotatedException e) {
                th = e;
            }
        }
        if (!z) {
            throw th;
        }
    }

    protected static void checkCRLs(PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        Throwable th;
        boolean z;
        Throwable th2 = null;
        try {
            CRLDistPoint instance = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CRL_DISTRIBUTION_POINTS));
            Builder builder = new Builder(pKIXExtendedParameters);
            try {
                for (PKIXCRLStore addCRLStore : CertPathValidatorUtilities.getAdditionalStoresFromCRLDistributionPoint(instance, pKIXExtendedParameters.getNamedCRLStoreMap())) {
                    builder.addCRLStore(addCRLStore);
                }
                CertStatus certStatus = new CertStatus();
                ReasonsMask reasonsMask = new ReasonsMask();
                PKIXExtendedParameters build = builder.build();
                boolean z2 = false;
                if (instance != null) {
                    try {
                        DistributionPoint[] distributionPoints = instance.getDistributionPoints();
                        if (distributionPoints != null) {
                            int i = 0;
                            while (i < distributionPoints.length && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                                try {
                                    checkCRL(distributionPoints[i], build, x509Certificate, date, x509Certificate2, publicKey, certStatus, reasonsMask, list, jcaJceHelper);
                                    z = true;
                                    th = th2;
                                } catch (AnnotatedException e) {
                                    th = e;
                                    z = z2;
                                }
                                i++;
                                z2 = z;
                                th2 = th;
                            }
                        }
                    } catch (Exception e2) {
                        throw new AnnotatedException("Distribution points could not be read.", e2);
                    }
                }
                if (certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                    try {
                        checkCRL(new DistributionPoint(new DistributionPointName(0, new GeneralNames(new GeneralName(4, (ASN1Encodable) new ASN1InputStream(PrincipalUtils.getEncodedIssuerPrincipal(x509Certificate).getEncoded()).readObject()))), null, null), (PKIXExtendedParameters) pKIXExtendedParameters.clone(), x509Certificate, date, x509Certificate2, publicKey, certStatus, reasonsMask, list, jcaJceHelper);
                        z2 = true;
                    } catch (Exception e3) {
                        throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", e3);
                    } catch (AnnotatedException e4) {
                        th2 = e4;
                    }
                }
                if (!z2) {
                    if (th2 instanceof AnnotatedException) {
                        throw th2;
                    }
                    throw new AnnotatedException("No valid CRL found.", th2);
                } else if (certStatus.getCertStatus() != 11) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                    throw new AnnotatedException(("Certificate revocation after " + simpleDateFormat.format(certStatus.getRevocationDate())) + ", reason: " + crlReasons[certStatus.getCertStatus()]);
                } else {
                    if (!reasonsMask.isAllReasons() && certStatus.getCertStatus() == 11) {
                        certStatus.setCertStatus(12);
                    }
                    if (certStatus.getCertStatus() == 12) {
                        throw new AnnotatedException("Certificate status could not be determined.");
                    }
                }
            } catch (AnnotatedException e5) {
                throw new AnnotatedException("No additional CRL locations could be decoded from CRL distribution point extension.", e5);
            }
        } catch (Exception e6) {
            throw new AnnotatedException("CRL distribution point extension could not be read.", e6);
        }
    }

    protected static PKIXPolicyNode prepareCertB(CertPath certPath, int i, List[] listArr, PKIXPolicyNode pKIXPolicyNode, int i2) throws CertPathValidatorException {
        boolean z;
        List certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size() - i;
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, POLICY_MAPPINGS));
            if (instance != null) {
                HashMap hashMap = new HashMap();
                HashSet<String> hashSet = new HashSet<>();
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 >= instance.size()) {
                        break;
                    }
                    ASN1Sequence aSN1Sequence = (ASN1Sequence) instance.getObjectAt(i4);
                    String id = ((ASN1ObjectIdentifier) aSN1Sequence.getObjectAt(0)).getId();
                    String id2 = ((ASN1ObjectIdentifier) aSN1Sequence.getObjectAt(1)).getId();
                    if (!hashMap.containsKey(id)) {
                        HashSet hashSet2 = new HashSet();
                        hashSet2.add(id2);
                        hashMap.put(id, hashSet2);
                        hashSet.add(id);
                    } else {
                        ((Set) hashMap.get(id)).add(id2);
                    }
                    i3 = i4 + 1;
                }
                for (String str : hashSet) {
                    if (i2 > 0) {
                        Iterator it = listArr[size].iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) it.next();
                            if (pKIXPolicyNode2.getValidPolicy().equals(str)) {
                                pKIXPolicyNode2.expectedPolicies = (Set) hashMap.get(str);
                                z = true;
                                break;
                            }
                        }
                        if (!z) {
                            Iterator it2 = listArr[size].iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) it2.next();
                                if (ANY_POLICY.equals(pKIXPolicyNode3.getValidPolicy())) {
                                    Set set = null;
                                    try {
                                        Enumeration objects = ((ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES)).getObjects();
                                        while (true) {
                                            if (!objects.hasMoreElements()) {
                                                break;
                                            }
                                            try {
                                                PolicyInformation instance2 = PolicyInformation.getInstance(objects.nextElement());
                                                if (ANY_POLICY.equals(instance2.getPolicyIdentifier().getId())) {
                                                    try {
                                                        set = CertPathValidatorUtilities.getQualifierSet(instance2.getPolicyQualifiers());
                                                        break;
                                                    } catch (CertPathValidatorException e) {
                                                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", e, certPath, i);
                                                    }
                                                }
                                            } catch (Exception e2) {
                                                throw new CertPathValidatorException("Policy information could not be decoded.", e2, certPath, i);
                                            }
                                        }
                                        boolean z2 = false;
                                        if (x509Certificate.getCriticalExtensionOIDs() != null) {
                                            z2 = x509Certificate.getCriticalExtensionOIDs().contains(CERTIFICATE_POLICIES);
                                        }
                                        PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) pKIXPolicyNode3.getParent();
                                        if (ANY_POLICY.equals(pKIXPolicyNode4.getValidPolicy())) {
                                            PKIXPolicyNode pKIXPolicyNode5 = new PKIXPolicyNode(new ArrayList(), size, (Set) hashMap.get(str), pKIXPolicyNode4, set, str, z2);
                                            pKIXPolicyNode4.addChild(pKIXPolicyNode5);
                                            listArr[size].add(pKIXPolicyNode5);
                                        }
                                    } catch (AnnotatedException e3) {
                                        throw new ExtCertPathValidatorException("Certificate policies extension could not be decoded.", e3, certPath, i);
                                    }
                                }
                            }
                        }
                    } else if (i2 <= 0) {
                        Iterator it3 = listArr[size].iterator();
                        while (it3.hasNext()) {
                            PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) it3.next();
                            if (pKIXPolicyNode6.getValidPolicy().equals(str)) {
                                ((PKIXPolicyNode) pKIXPolicyNode6.getParent()).removeChild(pKIXPolicyNode6);
                                it3.remove();
                                int i5 = size - 1;
                                PKIXPolicyNode pKIXPolicyNode7 = pKIXPolicyNode;
                                while (i5 >= 0) {
                                    List list = listArr[i5];
                                    int i6 = 0;
                                    PKIXPolicyNode pKIXPolicyNode8 = pKIXPolicyNode7;
                                    while (true) {
                                        int i7 = i6;
                                        if (i7 >= list.size()) {
                                            break;
                                        }
                                        PKIXPolicyNode pKIXPolicyNode9 = (PKIXPolicyNode) list.get(i7);
                                        if (!pKIXPolicyNode9.hasChildren()) {
                                            pKIXPolicyNode8 = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode8, listArr, pKIXPolicyNode9);
                                            if (pKIXPolicyNode8 == null) {
                                                break;
                                            }
                                        }
                                        i6 = i7 + 1;
                                    }
                                    i5--;
                                    pKIXPolicyNode7 = pKIXPolicyNode8;
                                }
                                pKIXPolicyNode = pKIXPolicyNode7;
                            }
                        }
                    }
                }
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e4) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e4, certPath, i);
        }
    }

    protected static void prepareNextCertA(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_MAPPINGS));
            if (instance != null) {
                int i2 = 0;
                while (i2 < instance.size()) {
                    try {
                        ASN1Sequence instance2 = DERSequence.getInstance(instance.getObjectAt(i2));
                        ASN1ObjectIdentifier instance3 = ASN1ObjectIdentifier.getInstance(instance2.getObjectAt(0));
                        ASN1ObjectIdentifier instance4 = ASN1ObjectIdentifier.getInstance(instance2.getObjectAt(1));
                        if (ANY_POLICY.equals(instance3.getId())) {
                            throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i);
                        } else if (ANY_POLICY.equals(instance4.getId())) {
                            throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy,", null, certPath, i);
                        } else {
                            i2++;
                        }
                    } catch (Exception e) {
                        throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", e, certPath, i);
                    }
                }
            }
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e2, certPath, i);
        }
    }

    protected static void prepareNextCertG(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), NAME_CONSTRAINTS));
            NameConstraints nameConstraints = instance != null ? NameConstraints.getInstance(instance) : null;
            if (nameConstraints != null) {
                GeneralSubtree[] permittedSubtrees = nameConstraints.getPermittedSubtrees();
                if (permittedSubtrees != null) {
                    try {
                        pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                    } catch (Exception e) {
                        throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", e, certPath, i);
                    }
                }
                GeneralSubtree[] excludedSubtrees = nameConstraints.getExcludedSubtrees();
                if (excludedSubtrees != null) {
                    int i2 = 0;
                    while (i2 != excludedSubtrees.length) {
                        try {
                            pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i2]);
                            i2++;
                        } catch (Exception e2) {
                            throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", e2, certPath, i);
                        }
                    }
                }
            }
        } catch (Exception e3) {
            throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", e3, certPath, i);
        }
    }

    protected static int prepareNextCertH1(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    protected static int prepareNextCertH2(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    protected static int prepareNextCertH3(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    protected static int prepareNextCertI1(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (instance == null) {
                return i2;
            }
            Enumeration objects = instance.getObjects();
            while (objects.hasMoreElements()) {
                try {
                    ASN1TaggedObject instance2 = ASN1TaggedObject.getInstance(objects.nextElement());
                    if (instance2.getTagNo() == 0) {
                        int intValue = ASN1Integer.getInstance(instance2, false).getValue().intValue();
                        return intValue < i2 ? intValue : i2;
                    }
                } catch (IllegalArgumentException e) {
                    throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e, certPath, i);
                }
            }
            return i2;
        } catch (Exception e2) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e2, certPath, i);
        }
    }

    protected static int prepareNextCertI2(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (instance == null) {
                return i2;
            }
            Enumeration objects = instance.getObjects();
            while (objects.hasMoreElements()) {
                try {
                    ASN1TaggedObject instance2 = ASN1TaggedObject.getInstance(objects.nextElement());
                    if (instance2.getTagNo() == 1) {
                        int intValue = ASN1Integer.getInstance(instance2, false).getValue().intValue();
                        return intValue < i2 ? intValue : i2;
                    }
                } catch (IllegalArgumentException e) {
                    throw new ExtCertPathValidatorException("Policy constraints extension contents cannot be decoded.", e, certPath, i);
                }
            }
            return i2;
        } catch (Exception e2) {
            throw new ExtCertPathValidatorException("Policy constraints extension cannot be decoded.", e2, certPath, i);
        }
    }

    protected static int prepareNextCertJ(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Integer instance = ASN1Integer.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), INHIBIT_ANY_POLICY));
            if (instance == null) {
                return i2;
            }
            int intValue = instance.getValue().intValue();
            return intValue < i2 ? intValue : i2;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", e, certPath, i);
        }
    }

    protected static void prepareNextCertK(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            BasicConstraints instance = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            if (instance == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints");
            } else if (!instance.isCA()) {
                throw new CertPathValidatorException("Not a CA certificate");
            }
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    protected static int prepareNextCertL(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        if (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i))) {
            return i2;
        }
        if (i2 > 0) {
            return i2 - 1;
        }
        throw new ExtCertPathValidatorException("Max path length not greater than zero", null, certPath, i);
    }

    protected static int prepareNextCertM(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            BasicConstraints instance = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            if (instance == null) {
                return i2;
            }
            BigInteger pathLenConstraint = instance.getPathLenConstraint();
            if (pathLenConstraint == null) {
                return i2;
            }
            int intValue = pathLenConstraint.intValue();
            return intValue < i2 ? intValue : i2;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    protected static void prepareNextCertN(CertPath certPath, int i) throws CertPathValidatorException {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i)).getKeyUsage();
        if (keyUsage != null && !keyUsage[5]) {
            throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i);
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<java.security.cert.PKIXCertPathChecker>, for r6v0, types: [java.util.List, java.util.List<java.security.cert.PKIXCertPathChecker>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static void prepareNextCertO(java.security.cert.CertPath r3, int r4, java.util.Set r5, java.util.List<java.security.cert.PKIXCertPathChecker> r6) throws java.security.cert.CertPathValidatorException {
        /*
            java.util.List r0 = r3.getCertificates()
            java.lang.Object r0 = r0.get(r4)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            java.util.Iterator r2 = r6.iterator()
        L_0x000e:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L_0x002d
            java.lang.Object r1 = r2.next()     // Catch:{ CertPathValidatorException -> 0x001e }
            java.security.cert.PKIXCertPathChecker r1 = (java.security.cert.PKIXCertPathChecker) r1     // Catch:{ CertPathValidatorException -> 0x001e }
            r1.check(r0, r5)     // Catch:{ CertPathValidatorException -> 0x001e }
            goto L_0x000e
        L_0x001e:
            r0 = move-exception
            java.security.cert.CertPathValidatorException r1 = new java.security.cert.CertPathValidatorException
            java.lang.String r2 = r0.getMessage()
            java.lang.Throwable r0 = r0.getCause()
            r1.<init>(r2, r0, r3, r4)
            throw r1
        L_0x002d:
            boolean r0 = r5.isEmpty()
            if (r0 != 0) goto L_0x004d
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Certificate has unsupported critical extension: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r5)
            java.lang.String r1 = r1.toString()
            r2 = 0
            r0.<init>(r1, r2, r3, r4)
            throw r0
        L_0x004d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.prepareNextCertO(java.security.cert.CertPath, int, java.util.Set, java.util.List):void");
    }

    protected static Set processCRLA1i(Date date, PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        if (pKIXExtendedParameters.isUseDeltasEnabled()) {
            try {
                CRLDistPoint instance = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, FRESHEST_CRL));
                if (instance == null) {
                    try {
                        instance = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, FRESHEST_CRL));
                    } catch (AnnotatedException e) {
                        throw new AnnotatedException("Freshest CRL extension could not be decoded from CRL.", e);
                    }
                }
                if (instance != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(pKIXExtendedParameters.getCRLStores());
                    try {
                        arrayList.addAll(CertPathValidatorUtilities.getAdditionalStoresFromCRLDistributionPoint(instance, pKIXExtendedParameters.getNamedCRLStoreMap()));
                        try {
                            hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, x509crl, pKIXExtendedParameters.getCertStores(), arrayList));
                        } catch (AnnotatedException e2) {
                            throw new AnnotatedException("Exception obtaining delta CRLs.", e2);
                        }
                    } catch (AnnotatedException e3) {
                        throw new AnnotatedException("No new delta CRL locations could be added from Freshest CRL extension.", e3);
                    }
                }
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Freshest CRL extension could not be decoded from certificate.", e4);
            }
        }
        return hashSet;
    }

    protected static Set[] processCRLA1ii(Date date, PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        x509CRLSelector.setCertificateChecking(x509Certificate);
        try {
            x509CRLSelector.addIssuerName(PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded());
            PKIXCRLStoreSelector build = new PKIXCRLStoreSelector.Builder(x509CRLSelector).setCompleteCRLEnabled(true).build();
            if (pKIXExtendedParameters.getDate() != null) {
                date = pKIXExtendedParameters.getDate();
            }
            Set findCRLs = CRL_UTIL.findCRLs(build, date, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores());
            if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                try {
                    hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()));
                } catch (AnnotatedException e) {
                    throw new AnnotatedException("Exception obtaining delta CRLs.", e);
                }
            }
            return new Set[]{findCRLs, hashSet};
        } catch (IOException e2) {
            throw new AnnotatedException("Cannot extract issuer from CRL." + e2, e2);
        }
    }

    protected static void processCRLB1(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        boolean z;
        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT);
        boolean z2 = extensionValue != null && IssuingDistributionPoint.getInstance(extensionValue).isIndirectCRL();
        try {
            byte[] encoded = PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded();
            if (distributionPoint.getCRLIssuer() != null) {
                GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
                z = false;
                for (int i = 0; i < names.length; i++) {
                    if (names[i].getTagNo() == 4) {
                        try {
                            if (Arrays.areEqual(names[i].getName().toASN1Primitive().getEncoded(), encoded)) {
                                z = true;
                            }
                        } catch (IOException e) {
                            throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e);
                        }
                    }
                }
                if (z && !z2) {
                    throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
                } else if (!z) {
                    throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
                }
            } else {
                z = PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getEncodedIssuerPrincipal(obj));
            }
            if (!z) {
                throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
            }
        } catch (IOException e2) {
            throw new AnnotatedException("Exception encoding CRL issuer: " + e2.getMessage(), e2);
        }
    }

    protected static void processCRLB2(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        GeneralName[] generalNameArr;
        boolean z = false;
        try {
            IssuingDistributionPoint instance = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (instance != null) {
                if (instance.getDistributionPoint() != null) {
                    DistributionPointName distributionPoint2 = IssuingDistributionPoint.getInstance(instance).getDistributionPoint();
                    ArrayList arrayList = new ArrayList();
                    if (distributionPoint2.getType() == 0) {
                        GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                        for (GeneralName add : names) {
                            arrayList.add(add);
                        }
                    }
                    if (distributionPoint2.getType() == 1) {
                        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                        try {
                            Enumeration objects = ASN1Sequence.getInstance(PrincipalUtils.getIssuerPrincipal(x509crl)).getObjects();
                            while (objects.hasMoreElements()) {
                                aSN1EncodableVector.add((ASN1Encodable) objects.nextElement());
                            }
                            aSN1EncodableVector.add(distributionPoint2.getName());
                            arrayList.add(new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector))));
                        } catch (Exception e) {
                            throw new AnnotatedException("Could not read CRL issuer.", e);
                        }
                    }
                    if (distributionPoint.getDistributionPoint() != null) {
                        DistributionPointName distributionPoint3 = distributionPoint.getDistributionPoint();
                        GeneralName[] generalNameArr2 = null;
                        if (distributionPoint3.getType() == 0) {
                            generalNameArr2 = GeneralNames.getInstance(distributionPoint3.getName()).getNames();
                        }
                        if (distributionPoint3.getType() == 1) {
                            if (distributionPoint.getCRLIssuer() != null) {
                                generalNameArr = distributionPoint.getCRLIssuer().getNames();
                            } else {
                                GeneralName[] generalNameArr3 = new GeneralName[1];
                                try {
                                    generalNameArr3[0] = new GeneralName(X500Name.getInstance(PrincipalUtils.getEncodedIssuerPrincipal(obj).getEncoded()));
                                    generalNameArr = generalNameArr3;
                                } catch (Exception e2) {
                                    throw new AnnotatedException("Could not read certificate issuer.", e2);
                                }
                            }
                            for (int i = 0; i < generalNameArr.length; i++) {
                                Enumeration objects2 = ASN1Sequence.getInstance(generalNameArr[i].getName().toASN1Primitive()).getObjects();
                                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                                while (objects2.hasMoreElements()) {
                                    aSN1EncodableVector2.add((ASN1Encodable) objects2.nextElement());
                                }
                                aSN1EncodableVector2.add(distributionPoint3.getName());
                                generalNameArr[i] = new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector2)));
                            }
                        } else {
                            generalNameArr = generalNameArr2;
                        }
                        if (generalNameArr != null) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= generalNameArr.length) {
                                    break;
                                } else if (arrayList.contains(generalNameArr[i2])) {
                                    z = true;
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                        }
                        if (!z) {
                            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    } else if (distributionPoint.getCRLIssuer() == null) {
                        throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                    } else {
                        GeneralName[] names2 = distributionPoint.getCRLIssuer().getNames();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= names2.length) {
                                break;
                            } else if (arrayList.contains(names2[i3])) {
                                z = true;
                                break;
                            } else {
                                i3++;
                            }
                        }
                        if (!z) {
                            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    }
                }
                try {
                    BasicConstraints instance2 = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Extension) obj, BASIC_CONSTRAINTS));
                    if (obj instanceof X509Certificate) {
                        if (instance.onlyContainsUserCerts() && instance2 != null && instance2.isCA()) {
                            throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                        } else if (instance.onlyContainsCACerts() && (instance2 == null || !instance2.isCA())) {
                            throw new AnnotatedException("End CRL only contains CA certificates.");
                        }
                    }
                    if (instance.onlyContainsAttributeCerts()) {
                        throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                    }
                } catch (Exception e3) {
                    throw new AnnotatedException("Basic constraints extension could not be decoded.", e3);
                }
            }
        } catch (Exception e4) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    protected static void processCRLC(X509CRL x509crl, X509CRL x509crl2, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        boolean z = true;
        if (x509crl != null) {
            try {
                IssuingDistributionPoint instance = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl2, ISSUING_DISTRIBUTION_POINT));
                if (!pKIXExtendedParameters.isUseDeltasEnabled()) {
                    return;
                }
                if (!PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getIssuerPrincipal(x509crl2))) {
                    throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
                }
                try {
                    IssuingDistributionPoint instance2 = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
                    if (instance != null ? !instance.equals(instance2) : instance2 != null) {
                        z = false;
                    }
                    if (!z) {
                        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl2, AUTHORITY_KEY_IDENTIFIER);
                        try {
                            ASN1Primitive extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509crl, AUTHORITY_KEY_IDENTIFIER);
                            if (extensionValue == null) {
                                throw new AnnotatedException("CRL authority key identifier is null.");
                            } else if (extensionValue2 == null) {
                                throw new AnnotatedException("Delta CRL authority key identifier is null.");
                            } else if (!extensionValue.equals(extensionValue2)) {
                                throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                            }
                        } catch (AnnotatedException e) {
                            throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", e);
                        }
                    } catch (AnnotatedException e2) {
                        throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", e2);
                    }
                } catch (Exception e3) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", e3);
                }
            } catch (Exception e4) {
                throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
            }
        }
    }

    protected static ReasonsMask processCRLD(X509CRL x509crl, DistributionPoint distributionPoint) throws AnnotatedException {
        try {
            IssuingDistributionPoint instance = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (instance != null && instance.getOnlySomeReasons() != null && distributionPoint.getReasons() != null) {
                return new ReasonsMask(distributionPoint.getReasons()).intersect(new ReasonsMask(instance.getOnlySomeReasons()));
            }
            if ((instance == null || instance.getOnlySomeReasons() == null) && distributionPoint.getReasons() == null) {
                return ReasonsMask.allReasons;
            }
            return (distributionPoint.getReasons() == null ? ReasonsMask.allReasons : new ReasonsMask(distributionPoint.getReasons())).intersect(instance == null ? ReasonsMask.allReasons : new ReasonsMask(instance.getOnlySomeReasons()));
        } catch (Exception e) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e);
        }
    }

    protected static Set processCRLF(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, PKIXExtendedParameters pKIXExtendedParameters, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        Throwable th;
        int i = 0;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded());
            PKIXCertStoreSelector build = new PKIXCertStoreSelector.Builder(x509CertSelector).build();
            try {
                Collection<X509Certificate> findCertificates = CertPathValidatorUtilities.findCertificates(build, pKIXExtendedParameters.getCertificateStores());
                findCertificates.addAll(CertPathValidatorUtilities.findCertificates(build, pKIXExtendedParameters.getCertStores()));
                findCertificates.add(x509Certificate);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (X509Certificate x509Certificate2 : findCertificates) {
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            PKIXCertPathBuilderSpi pKIXCertPathBuilderSpi = new PKIXCertPathBuilderSpi();
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            Builder targetConstraints = new Builder(pKIXExtendedParameters).setTargetConstraints(new PKIXCertStoreSelector.Builder(x509CertSelector2).build());
                            if (list.contains(x509Certificate2)) {
                                targetConstraints.setRevocationEnabled(false);
                            } else {
                                targetConstraints.setRevocationEnabled(true);
                            }
                            List certificates = pKIXCertPathBuilderSpi.engineBuild(new PKIXExtendedBuilderParameters.Builder(targetConstraints.build()).build()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(CertPathValidatorUtilities.getNextWorkingKey(certificates, 0, jcaJceHelper));
                        } catch (CertPathBuilderException e) {
                            throw new AnnotatedException("CertPath for CRL signer failed to validate.", e);
                        } catch (CertPathValidatorException e2) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e2);
                        } catch (Exception e3) {
                            throw new AnnotatedException(e3.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Throwable th2 = null;
                while (true) {
                    int i2 = i;
                    th = th2;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i2)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length >= 7 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i2));
                        th2 = th;
                    } else {
                        th2 = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                    i = i2 + 1;
                }
                if (hashSet.isEmpty() && th == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                } else if (!hashSet.isEmpty() || th == null) {
                    return hashSet;
                } else {
                    throw th;
                }
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e4);
            }
        } catch (IOException e5) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e5);
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.security.PublicKey>, for r4v0, types: [java.util.Set<java.security.PublicKey>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static java.security.PublicKey processCRLG(java.security.cert.X509CRL r3, java.util.Set<java.security.PublicKey> r4) throws org.bouncycastle.jce.provider.AnnotatedException {
        /*
            r0 = 0
            java.util.Iterator r1 = r4.iterator()
        L_0x0005:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0015
            java.lang.Object r0 = r1.next()
            java.security.PublicKey r0 = (java.security.PublicKey) r0
            r3.verify(r0)     // Catch:{ Exception -> 0x001d }
            return r0
        L_0x0015:
            org.bouncycastle.jce.provider.AnnotatedException r1 = new org.bouncycastle.jce.provider.AnnotatedException
            java.lang.String r2 = "Cannot verify CRL."
            r1.<init>(r2, r0)
            throw r1
        L_0x001d:
            r0 = move-exception
            goto L_0x0005
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.processCRLG(java.security.cert.X509CRL, java.util.Set):java.security.PublicKey");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.security.cert.X509CRL>, for r4v0, types: [java.util.Set, java.util.Set<java.security.cert.X509CRL>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static java.security.cert.X509CRL processCRLH(java.util.Set<java.security.cert.X509CRL> r4, java.security.PublicKey r5) throws org.bouncycastle.jce.provider.AnnotatedException {
        /*
            r1 = 0
            java.util.Iterator r2 = r4.iterator()
            r0 = r1
        L_0x0006:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L_0x0016
            java.lang.Object r0 = r2.next()
            java.security.cert.X509CRL r0 = (java.security.cert.X509CRL) r0
            r0.verify(r5)     // Catch:{ Exception -> 0x0022 }
        L_0x0015:
            return r0
        L_0x0016:
            if (r0 == 0) goto L_0x0020
            org.bouncycastle.jce.provider.AnnotatedException r1 = new org.bouncycastle.jce.provider.AnnotatedException
            java.lang.String r2 = "Cannot verify delta CRL."
            r1.<init>(r2, r0)
            throw r1
        L_0x0020:
            r0 = r1
            goto L_0x0015
        L_0x0022:
            r0 = move-exception
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.processCRLH(java.util.Set, java.security.PublicKey):java.security.cert.X509CRL");
    }

    protected static void processCRLI(Date date, X509CRL x509crl, Object obj, CertStatus certStatus, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (pKIXExtendedParameters.isUseDeltasEnabled() && x509crl != null) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    protected static void processCRLJ(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) throws AnnotatedException {
        if (certStatus.getCertStatus() == 11) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    protected static void processCertA(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters, int i, PublicKey publicKey, boolean z, X500Name x500Name, X509Certificate x509Certificate, JcaJceHelper jcaJceHelper) throws ExtCertPathValidatorException {
        List certificates = certPath.getCertificates();
        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(i);
        if (!z) {
            try {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, publicKey, pKIXExtendedParameters.getSigProvider());
            } catch (GeneralSecurityException e) {
                throw new ExtCertPathValidatorException("Could not validate certificate signature.", e, certPath, i);
            }
        }
        try {
            x509Certificate2.checkValidity(CertPathValidatorUtilities.getValidCertDateFromValidityModel(pKIXExtendedParameters, certPath, i));
            if (pKIXExtendedParameters.isRevocationEnabled()) {
                try {
                    checkCRLs(pKIXExtendedParameters, x509Certificate2, CertPathValidatorUtilities.getValidCertDateFromValidityModel(pKIXExtendedParameters, certPath, i), x509Certificate, publicKey, certificates, jcaJceHelper);
                } catch (AnnotatedException e2) {
                    throw new ExtCertPathValidatorException(e2.getMessage(), e2.getCause() != null ? e2.getCause() : e2, certPath, i);
                }
            }
            if (!PrincipalUtils.getEncodedIssuerPrincipal(x509Certificate2).equals(x500Name)) {
                throw new ExtCertPathValidatorException("IssuerName(" + PrincipalUtils.getEncodedIssuerPrincipal(x509Certificate2) + ") does not match SubjectName(" + x500Name + ") of signing certificate.", null, certPath, i);
            }
        } catch (CertificateExpiredException e3) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e3.getMessage(), e3, certPath, i);
        } catch (CertificateNotYetValidException e4) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e4.getMessage(), e4, certPath, i);
        } catch (AnnotatedException e5) {
            throw new ExtCertPathValidatorException("Could not validate time of certificate.", e5, certPath, i);
        }
    }

    protected static void processCertBC(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws CertPathValidatorException {
        int i2 = 0;
        List certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i3 = size - i;
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate) || i3 >= size) {
            try {
                ASN1Sequence instance = DERSequence.getInstance(PrincipalUtils.getSubjectPrincipal(x509Certificate).getEncoded());
                try {
                    pKIXNameConstraintValidator.checkPermittedDN(instance);
                    pKIXNameConstraintValidator.checkExcludedDN(instance);
                    try {
                        GeneralNames instance2 = GeneralNames.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME));
                        RDN[] rDNs = X500Name.getInstance(instance).getRDNs(BCStyle.EmailAddress);
                        int i4 = 0;
                        while (i4 != rDNs.length) {
                            GeneralName generalName = new GeneralName(1, ((ASN1String) rDNs[i4].getFirst().getValue()).getString());
                            try {
                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                i4++;
                            } catch (PKIXNameConstraintValidatorException e) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e, certPath, i);
                            }
                        }
                        if (instance2 != null) {
                            try {
                                GeneralName[] names = instance2.getNames();
                                while (i2 < names.length) {
                                    try {
                                        pKIXNameConstraintValidator.checkPermitted(names[i2]);
                                        pKIXNameConstraintValidator.checkExcluded(names[i2]);
                                        i2++;
                                    } catch (PKIXNameConstraintValidatorException e2) {
                                        throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e2, certPath, i);
                                    }
                                }
                            } catch (Exception e3) {
                                throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e3, certPath, i);
                            }
                        }
                    } catch (Exception e4) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e4, certPath, i);
                    }
                } catch (PKIXNameConstraintValidatorException e5) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e5, certPath, i);
                }
            } catch (Exception e6) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e6, certPath, i);
            }
        }
    }

    protected static PKIXPolicyNode processCertD(CertPath certPath, int i, Set set, PKIXPolicyNode pKIXPolicyNode, List[] listArr, int i2) throws CertPathValidatorException {
        String id;
        boolean z;
        List certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i3 = size - i;
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES));
            if (instance == null || pKIXPolicyNode == null) {
                return null;
            }
            Enumeration objects = instance.getObjects();
            HashSet hashSet = new HashSet();
            while (objects.hasMoreElements()) {
                PolicyInformation instance2 = PolicyInformation.getInstance(objects.nextElement());
                ASN1ObjectIdentifier policyIdentifier = instance2.getPolicyIdentifier();
                hashSet.add(policyIdentifier.getId());
                if (!ANY_POLICY.equals(policyIdentifier.getId())) {
                    try {
                        Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(instance2.getPolicyQualifiers());
                        if (!CertPathValidatorUtilities.processCertD1i(i3, listArr, policyIdentifier, qualifierSet)) {
                            CertPathValidatorUtilities.processCertD1ii(i3, listArr, policyIdentifier, qualifierSet);
                        }
                    } catch (CertPathValidatorException e) {
                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", e, certPath, i);
                    }
                }
            }
            if (set.isEmpty() || set.contains(ANY_POLICY)) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object next : set) {
                    if (hashSet.contains(next)) {
                        hashSet2.add(next);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i2 > 0 || (i3 < size && CertPathValidatorUtilities.isSelfIssued(x509Certificate))) {
                Enumeration objects2 = instance.getObjects();
                while (true) {
                    if (!objects2.hasMoreElements()) {
                        break;
                    }
                    PolicyInformation instance3 = PolicyInformation.getInstance(objects2.nextElement());
                    if (ANY_POLICY.equals(instance3.getPolicyIdentifier().getId())) {
                        Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(instance3.getPolicyQualifiers());
                        List list = listArr[i3 - 1];
                        int i4 = 0;
                        while (true) {
                            int i5 = i4;
                            if (i5 >= list.size()) {
                                break;
                            }
                            PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(i5);
                            for (Object next2 : pKIXPolicyNode2.getExpectedPolicies()) {
                                if (next2 instanceof String) {
                                    id = (String) next2;
                                } else if (next2 instanceof ASN1ObjectIdentifier) {
                                    id = ((ASN1ObjectIdentifier) next2).getId();
                                }
                                boolean z2 = false;
                                Iterator children = pKIXPolicyNode2.getChildren();
                                while (true) {
                                    z = z2;
                                    if (!children.hasNext()) {
                                        break;
                                    }
                                    z2 = id.equals(((PKIXPolicyNode) children.next()).getValidPolicy()) ? true : z;
                                }
                                if (!z) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(id);
                                    PKIXPolicyNode pKIXPolicyNode3 = new PKIXPolicyNode(new ArrayList(), i3, hashSet3, pKIXPolicyNode2, qualifierSet2, id, false);
                                    pKIXPolicyNode2.addChild(pKIXPolicyNode3);
                                    listArr[i3].add(pKIXPolicyNode3);
                                }
                            }
                            i4 = i5 + 1;
                        }
                    }
                }
            }
            int i6 = i3 - 1;
            PKIXPolicyNode pKIXPolicyNode4 = pKIXPolicyNode;
            while (i6 >= 0) {
                List list2 = listArr[i6];
                int i7 = 0;
                PKIXPolicyNode pKIXPolicyNode5 = pKIXPolicyNode4;
                while (true) {
                    int i8 = i7;
                    if (i8 >= list2.size()) {
                        break;
                    }
                    PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) list2.get(i8);
                    if (!pKIXPolicyNode6.hasChildren()) {
                        pKIXPolicyNode5 = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode5, listArr, pKIXPolicyNode6);
                        if (pKIXPolicyNode5 == null) {
                            break;
                        }
                    }
                    i7 = i8 + 1;
                }
                i6--;
                pKIXPolicyNode4 = pKIXPolicyNode5;
            }
            Set criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs == null) {
                return pKIXPolicyNode4;
            }
            boolean contains = criticalExtensionOIDs.contains(CERTIFICATE_POLICIES);
            List list3 = listArr[i3];
            int i9 = 0;
            while (true) {
                int i10 = i9;
                if (i10 >= list3.size()) {
                    return pKIXPolicyNode4;
                }
                ((PKIXPolicyNode) list3.get(i10)).setCritical(contains);
                i9 = i10 + 1;
            }
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e2, certPath, i);
        }
    }

    protected static PKIXPolicyNode processCertE(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode) throws CertPathValidatorException {
        try {
            if (DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), CERTIFICATE_POLICIES)) == null) {
                return null;
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e, certPath, i);
        }
    }

    protected static void processCertF(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode, int i2) throws CertPathValidatorException {
        if (i2 <= 0 && pKIXPolicyNode == null) {
            throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, certPath, i);
        }
    }

    protected static int wrapupCertA(int i, X509Certificate x509Certificate) {
        return (CertPathValidatorUtilities.isSelfIssued(x509Certificate) || i == 0) ? i : i - 1;
    }

    protected static int wrapupCertB(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (instance == null) {
                return i2;
            }
            Enumeration objects = instance.getObjects();
            while (objects.hasMoreElements()) {
                ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
                switch (aSN1TaggedObject.getTagNo()) {
                    case 0:
                        try {
                            if (ASN1Integer.getInstance(aSN1TaggedObject, false).getValue().intValue() != 0) {
                                break;
                            } else {
                                return 0;
                            }
                        } catch (Exception e) {
                            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", e, certPath, i);
                        }
                }
            }
            return i2;
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", e2, certPath, i);
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<java.security.cert.PKIXCertPathChecker>, for r5v0, types: [java.util.List, java.util.List<java.security.cert.PKIXCertPathChecker>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static void wrapupCertF(java.security.cert.CertPath r3, int r4, java.util.List<java.security.cert.PKIXCertPathChecker> r5, java.util.Set r6) throws java.security.cert.CertPathValidatorException {
        /*
            java.util.List r0 = r3.getCertificates()
            java.lang.Object r0 = r0.get(r4)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            java.util.Iterator r2 = r5.iterator()
        L_0x000e:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L_0x0027
            java.lang.Object r1 = r2.next()     // Catch:{ CertPathValidatorException -> 0x001e }
            java.security.cert.PKIXCertPathChecker r1 = (java.security.cert.PKIXCertPathChecker) r1     // Catch:{ CertPathValidatorException -> 0x001e }
            r1.check(r0, r6)     // Catch:{ CertPathValidatorException -> 0x001e }
            goto L_0x000e
        L_0x001e:
            r0 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r1 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r2 = "Additional certificate path checker failed."
            r1.<init>(r2, r0, r3, r4)
            throw r1
        L_0x0027:
            boolean r0 = r6.isEmpty()
            if (r0 != 0) goto L_0x0047
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Certificate has unsupported critical extension: "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r6)
            java.lang.String r1 = r1.toString()
            r2 = 0
            r0.<init>(r1, r2, r3, r4)
            throw r0
        L_0x0047:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.wrapupCertF(java.security.cert.CertPath, int, java.util.List, java.util.Set):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0080  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static org.bouncycastle.jce.provider.PKIXPolicyNode wrapupCertG(java.security.cert.CertPath r9, org.bouncycastle.jcajce.PKIXExtendedParameters r10, java.util.Set r11, int r12, java.util.List[] r13, org.bouncycastle.jce.provider.PKIXPolicyNode r14, java.util.Set r15) throws java.security.cert.CertPathValidatorException {
        /*
            java.util.List r0 = r9.getCertificates()
            int r3 = r0.size()
            if (r14 != 0) goto L_0x001b
            boolean r0 = r10.isExplicitPolicyRequired()
            if (r0 == 0) goto L_0x0019
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r1 = "Explicit policy requested but none available."
            r2 = 0
            r0.<init>(r1, r2, r9, r12)
            throw r0
        L_0x0019:
            r14 = 0
        L_0x001a:
            return r14
        L_0x001b:
            boolean r0 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.isAnyPolicy(r11)
            if (r0 == 0) goto L_0x00bd
            boolean r0 = r10.isExplicitPolicyRequired()
            if (r0 == 0) goto L_0x001a
            boolean r0 = r15.isEmpty()
            if (r0 == 0) goto L_0x0036
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r1 = "Explicit policy requested but none available."
            r2 = 0
            r0.<init>(r1, r2, r9, r12)
            throw r0
        L_0x0036:
            java.util.HashSet r4 = new java.util.HashSet
            r4.<init>()
            r0 = 0
            r1 = r0
        L_0x003d:
            int r0 = r13.length
            if (r1 >= r0) goto L_0x0076
            r5 = r13[r1]
            r0 = 0
            r2 = r0
        L_0x0044:
            int r0 = r5.size()
            if (r2 >= r0) goto L_0x0072
            java.lang.Object r0 = r5.get(r2)
            org.bouncycastle.jce.provider.PKIXPolicyNode r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0
            java.lang.String r6 = "2.5.29.32.0"
            java.lang.String r7 = r0.getValidPolicy()
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L_0x006e
            java.util.Iterator r0 = r0.getChildren()
        L_0x0060:
            boolean r6 = r0.hasNext()
            if (r6 == 0) goto L_0x006e
            java.lang.Object r6 = r0.next()
            r4.add(r6)
            goto L_0x0060
        L_0x006e:
            int r0 = r2 + 1
            r2 = r0
            goto L_0x0044
        L_0x0072:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x003d
        L_0x0076:
            java.util.Iterator r1 = r4.iterator()
        L_0x007a:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0091
            java.lang.Object r0 = r1.next()
            org.bouncycastle.jce.provider.PKIXPolicyNode r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0
            java.lang.String r0 = r0.getValidPolicy()
            boolean r0 = r15.contains(r0)
            if (r0 != 0) goto L_0x007a
            goto L_0x007a
        L_0x0091:
            if (r14 == 0) goto L_0x001a
            int r0 = r3 + -1
            r3 = r0
            r1 = r14
        L_0x0097:
            if (r3 < 0) goto L_0x015a
            r4 = r13[r3]
            r0 = 0
            r2 = r1
            r1 = r0
        L_0x009e:
            int r0 = r4.size()
            if (r1 >= r0) goto L_0x00b8
            java.lang.Object r0 = r4.get(r1)
            org.bouncycastle.jce.provider.PKIXPolicyNode r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0
            boolean r5 = r0.hasChildren()
            if (r5 != 0) goto L_0x00b4
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.removePolicyNode(r2, r13, r0)
        L_0x00b4:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x009e
        L_0x00b8:
            int r0 = r3 + -1
            r3 = r0
            r1 = r2
            goto L_0x0097
        L_0x00bd:
            java.util.HashSet r4 = new java.util.HashSet
            r4.<init>()
            r0 = 0
            r1 = r0
        L_0x00c4:
            int r0 = r13.length
            if (r1 >= r0) goto L_0x010b
            r5 = r13[r1]
            r0 = 0
            r2 = r0
        L_0x00cb:
            int r0 = r5.size()
            if (r2 >= r0) goto L_0x0107
            java.lang.Object r0 = r5.get(r2)
            org.bouncycastle.jce.provider.PKIXPolicyNode r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0
            java.lang.String r6 = "2.5.29.32.0"
            java.lang.String r7 = r0.getValidPolicy()
            boolean r6 = r6.equals(r7)
            if (r6 == 0) goto L_0x0103
            java.util.Iterator r6 = r0.getChildren()
        L_0x00e7:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L_0x0103
            java.lang.Object r0 = r6.next()
            org.bouncycastle.jce.provider.PKIXPolicyNode r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0
            java.lang.String r7 = "2.5.29.32.0"
            java.lang.String r8 = r0.getValidPolicy()
            boolean r7 = r7.equals(r8)
            if (r7 != 0) goto L_0x00e7
            r4.add(r0)
            goto L_0x00e7
        L_0x0103:
            int r0 = r2 + 1
            r2 = r0
            goto L_0x00cb
        L_0x0107:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x00c4
        L_0x010b:
            java.util.Iterator r1 = r4.iterator()
        L_0x010f:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x012a
            java.lang.Object r0 = r1.next()
            org.bouncycastle.jce.provider.PKIXPolicyNode r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0
            java.lang.String r2 = r0.getValidPolicy()
            boolean r2 = r11.contains(r2)
            if (r2 != 0) goto L_0x010f
            org.bouncycastle.jce.provider.PKIXPolicyNode r14 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.removePolicyNode(r14, r13, r0)
            goto L_0x010f
        L_0x012a:
            if (r14 == 0) goto L_0x0156
            int r0 = r3 + -1
            r3 = r0
            r1 = r14
        L_0x0130:
            if (r3 < 0) goto L_0x0157
            r4 = r13[r3]
            r0 = 0
            r2 = r1
            r1 = r0
        L_0x0137:
            int r0 = r4.size()
            if (r1 >= r0) goto L_0x0151
            java.lang.Object r0 = r4.get(r1)
            org.bouncycastle.jce.provider.PKIXPolicyNode r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0
            boolean r5 = r0.hasChildren()
            if (r5 != 0) goto L_0x014d
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.removePolicyNode(r2, r13, r0)
        L_0x014d:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0137
        L_0x0151:
            int r0 = r3 + -1
            r3 = r0
            r1 = r2
            goto L_0x0130
        L_0x0156:
            r1 = r14
        L_0x0157:
            r14 = r1
            goto L_0x001a
        L_0x015a:
            r14 = r1
            goto L_0x001a
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.wrapupCertG(java.security.cert.CertPath, org.bouncycastle.jcajce.PKIXExtendedParameters, java.util.Set, int, java.util.List[], org.bouncycastle.jce.provider.PKIXPolicyNode, java.util.Set):org.bouncycastle.jce.provider.PKIXPolicyNode");
    }
}
