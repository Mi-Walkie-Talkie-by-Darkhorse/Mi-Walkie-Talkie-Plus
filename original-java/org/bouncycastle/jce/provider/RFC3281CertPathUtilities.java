package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.PKIXCertStoreSelector;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters.Builder;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.X509AttributeCertificate;
import org.bouncycastle.x509.X509CertStoreSelector;

class RFC3281CertPathUtilities {
    private static final String AUTHORITY_INFO_ACCESS = X509Extensions.AuthorityInfoAccess.getId();
    private static final String CRL_DISTRIBUTION_POINTS = X509Extensions.CRLDistributionPoints.getId();
    private static final String NO_REV_AVAIL = X509Extensions.NoRevAvail.getId();
    private static final String TARGET_INFORMATION = X509Extensions.TargetInformation.getId();

    RFC3281CertPathUtilities() {
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r5v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.String>, for r6v0, types: [java.util.Set, java.util.Set<java.lang.String>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static void additionalChecks(org.bouncycastle.x509.X509AttributeCertificate r4, java.util.Set<java.lang.String> r5, java.util.Set<java.lang.String> r6) throws java.security.cert.CertPathValidatorException {
        /*
            java.util.Iterator r1 = r5.iterator()
        L_0x0004:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0035
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            org.bouncycastle.x509.X509Attribute[] r2 = r4.getAttributes(r0)
            if (r2 == 0) goto L_0x0004
            java.security.cert.CertPathValidatorException r1 = new java.security.cert.CertPathValidatorException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Attribute certificate contains prohibited attribute: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r2 = "."
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L_0x0035:
            java.util.Iterator r1 = r6.iterator()
        L_0x0039:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x006a
            java.lang.Object r0 = r1.next()
            java.lang.String r0 = (java.lang.String) r0
            org.bouncycastle.x509.X509Attribute[] r2 = r4.getAttributes(r0)
            if (r2 != 0) goto L_0x0039
            java.security.cert.CertPathValidatorException r1 = new java.security.cert.CertPathValidatorException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Attribute certificate does not contain necessary attribute: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r2 = "."
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L_0x006a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3281CertPathUtilities.additionalChecks(org.bouncycastle.x509.X509AttributeCertificate, java.util.Set, java.util.Set):void");
    }

    private static void checkCRL(DistributionPoint distributionPoint, X509AttributeCertificate x509AttributeCertificate, PKIXExtendedParameters pKIXExtendedParameters, Date date, X509Certificate x509Certificate, CertStatus certStatus, ReasonsMask reasonsMask, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        if (x509AttributeCertificate.getExtensionValue(X509Extensions.NoRevAvail.getId()) == null) {
            Date date2 = new Date(System.currentTimeMillis());
            if (date.getTime() > date2.getTime()) {
                throw new AnnotatedException("Validation time is in future.");
            }
            Iterator it = CertPathValidatorUtilities.getCompleteCRLs(distributionPoint, x509AttributeCertificate, date2, pKIXExtendedParameters).iterator();
            Throwable th = null;
            boolean z = false;
            while (it.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                try {
                    X509CRL x509crl = (X509CRL) it.next();
                    ReasonsMask processCRLD = RFC3280CertPathUtilities.processCRLD(x509crl, distributionPoint);
                    if (processCRLD.hasNewReasons(reasonsMask)) {
                        PublicKey processCRLG = RFC3280CertPathUtilities.processCRLG(x509crl, RFC3280CertPathUtilities.processCRLF(x509crl, x509AttributeCertificate, null, null, pKIXExtendedParameters, list, jcaJceHelper));
                        X509CRL x509crl2 = null;
                        if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                            x509crl2 = RFC3280CertPathUtilities.processCRLH(CertPathValidatorUtilities.getDeltaCRLs(date2, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()), processCRLG);
                        }
                        if (pKIXExtendedParameters.getValidityModel() == 1 || x509AttributeCertificate.getNotAfter().getTime() >= x509crl.getThisUpdate().getTime()) {
                            RFC3280CertPathUtilities.processCRLB1(distributionPoint, x509AttributeCertificate, x509crl);
                            RFC3280CertPathUtilities.processCRLB2(distributionPoint, x509AttributeCertificate, x509crl);
                            RFC3280CertPathUtilities.processCRLC(x509crl2, x509crl, pKIXExtendedParameters);
                            RFC3280CertPathUtilities.processCRLI(date, x509crl2, x509AttributeCertificate, certStatus, pKIXExtendedParameters);
                            RFC3280CertPathUtilities.processCRLJ(date, x509crl, x509AttributeCertificate, certStatus);
                            if (certStatus.getCertStatus() == 8) {
                                certStatus.setCertStatus(11);
                            }
                            reasonsMask.addReasons(processCRLD);
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
    }

    protected static void checkCRLs(X509AttributeCertificate x509AttributeCertificate, PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, Date date, List list, JcaJceHelper jcaJceHelper) throws CertPathValidatorException {
        boolean z;
        if (!pKIXExtendedParameters.isRevocationEnabled()) {
            return;
        }
        if (x509AttributeCertificate.getExtensionValue(NO_REV_AVAIL) == null) {
            try {
                CRLDistPoint instance = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509AttributeCertificate, CRL_DISTRIBUTION_POINTS));
                ArrayList arrayList = new ArrayList();
                try {
                    arrayList.addAll(CertPathValidatorUtilities.getAdditionalStoresFromCRLDistributionPoint(instance, pKIXExtendedParameters.getNamedCRLStoreMap()));
                    Builder builder = new Builder(pKIXExtendedParameters);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        builder.addCRLStore((PKIXCRLStore) arrayList);
                    }
                    PKIXExtendedParameters build = builder.build();
                    CertStatus certStatus = new CertStatus();
                    ReasonsMask reasonsMask = new ReasonsMask();
                    AnnotatedException annotatedException = null;
                    if (instance != null) {
                        try {
                            DistributionPoint[] distributionPoints = instance.getDistributionPoints();
                            int i = 0;
                            z = false;
                            while (i < distributionPoints.length && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                                try {
                                    checkCRL(distributionPoints[i], x509AttributeCertificate, (PKIXExtendedParameters) build.clone(), date, x509Certificate, certStatus, reasonsMask, list, jcaJceHelper);
                                    z = true;
                                    i++;
                                } catch (AnnotatedException e) {
                                    annotatedException = new AnnotatedException("No valid CRL for distribution point found.", e);
                                }
                            }
                        } catch (Exception e2) {
                            throw new ExtCertPathValidatorException("Distribution points could not be read.", e2);
                        }
                    } else {
                        z = false;
                    }
                    if (certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                        try {
                            checkCRL(new DistributionPoint(new DistributionPointName(0, new GeneralNames(new GeneralName(4, (ASN1Encodable) new ASN1InputStream(((X500Principal) x509AttributeCertificate.getIssuer().getPrincipals()[0]).getEncoded()).readObject()))), null, null), x509AttributeCertificate, (PKIXExtendedParameters) build.clone(), date, x509Certificate, certStatus, reasonsMask, list, jcaJceHelper);
                            z = true;
                        } catch (Exception e3) {
                            throw new AnnotatedException("Issuer from certificate for CRL could not be reencoded.", e3);
                        } catch (AnnotatedException e4) {
                            annotatedException = new AnnotatedException("No valid CRL for distribution point found.", e4);
                        }
                    }
                    if (!z) {
                        throw new ExtCertPathValidatorException("No valid CRL found.", annotatedException);
                    } else if (certStatus.getCertStatus() != 11) {
                        throw new CertPathValidatorException(("Attribute certificate revocation after " + certStatus.getRevocationDate()) + ", reason: " + RFC3280CertPathUtilities.crlReasons[certStatus.getCertStatus()]);
                    } else {
                        if (!reasonsMask.isAllReasons() && certStatus.getCertStatus() == 11) {
                            certStatus.setCertStatus(12);
                        }
                        if (certStatus.getCertStatus() == 12) {
                            throw new CertPathValidatorException("Attribute certificate status could not be determined.");
                        }
                    }
                } catch (AnnotatedException e5) {
                    throw new CertPathValidatorException("No additional CRL locations could be decoded from CRL distribution point extension.", e5);
                }
            } catch (AnnotatedException e6) {
                throw new CertPathValidatorException("CRL distribution point extension could not be read.", e6);
            }
        } else if (x509AttributeCertificate.getExtensionValue(CRL_DISTRIBUTION_POINTS) != null || x509AttributeCertificate.getExtensionValue(AUTHORITY_INFO_ACCESS) != null) {
            throw new CertPathValidatorException("No rev avail extension is set, but also an AC revocation pointer.");
        }
    }

    protected static CertPath processAttrCert1(X509AttributeCertificate x509AttributeCertificate, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        Throwable extCertPathValidatorException;
        CertPathBuilderResult certPathBuilderResult;
        int i = 0;
        HashSet<X509Certificate> hashSet = new HashSet<>();
        if (x509AttributeCertificate.getHolder().getIssuer() != null) {
            X509CertSelector x509CertSelector = new X509CertSelector();
            x509CertSelector.setSerialNumber(x509AttributeCertificate.getHolder().getSerialNumber());
            Principal[] issuer = x509AttributeCertificate.getHolder().getIssuer();
            int i2 = 0;
            while (i2 < issuer.length) {
                try {
                    if (issuer[i2] instanceof X500Principal) {
                        x509CertSelector.setIssuer(((X500Principal) issuer[i2]).getEncoded());
                    }
                    hashSet.addAll(CertPathValidatorUtilities.findCertificates(new PKIXCertStoreSelector.Builder(x509CertSelector).build(), pKIXExtendedParameters.getCertStores()));
                    i2++;
                } catch (AnnotatedException e) {
                    throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", e);
                } catch (IOException e2) {
                    throw new ExtCertPathValidatorException("Unable to encode X500 principal.", e2);
                }
            }
            if (hashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in base certificate ID for attribute certificate cannot be found.");
            }
        }
        if (x509AttributeCertificate.getHolder().getEntityNames() != null) {
            X509CertStoreSelector x509CertStoreSelector = new X509CertStoreSelector();
            Principal[] entityNames = x509AttributeCertificate.getHolder().getEntityNames();
            while (i < entityNames.length) {
                try {
                    if (entityNames[i] instanceof X500Principal) {
                        x509CertStoreSelector.setIssuer(((X500Principal) entityNames[i]).getEncoded());
                    }
                    hashSet.addAll(CertPathValidatorUtilities.findCertificates(new PKIXCertStoreSelector.Builder(x509CertStoreSelector).build(), pKIXExtendedParameters.getCertStores()));
                    i++;
                } catch (AnnotatedException e3) {
                    throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", e3);
                } catch (IOException e4) {
                    throw new ExtCertPathValidatorException("Unable to encode X500 principal.", e4);
                }
            }
            if (hashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in entity name for attribute certificate cannot be found.");
            }
        }
        Builder builder = new Builder(pKIXExtendedParameters);
        Throwable th = null;
        CertPathBuilderResult certPathBuilderResult2 = null;
        for (X509Certificate certificate : hashSet) {
            X509CertStoreSelector x509CertStoreSelector2 = new X509CertStoreSelector();
            x509CertStoreSelector2.setCertificate(certificate);
            builder.setTargetConstraints(new PKIXCertStoreSelector.Builder(x509CertStoreSelector2).build());
            try {
                try {
                    Throwable th2 = th;
                    certPathBuilderResult = CertPathBuilder.getInstance("PKIX", BouncyCastleProvider.PROVIDER_NAME).build(new PKIXExtendedBuilderParameters.Builder(builder.build()).build());
                    extCertPathValidatorException = th2;
                } catch (CertPathBuilderException e5) {
                    extCertPathValidatorException = new ExtCertPathValidatorException("Certification path for public key certificate of attribute certificate could not be build.", e5);
                    certPathBuilderResult = certPathBuilderResult2;
                } catch (InvalidAlgorithmParameterException e6) {
                    throw new RuntimeException(e6.getMessage());
                }
                certPathBuilderResult2 = certPathBuilderResult;
                th = extCertPathValidatorException;
            } catch (NoSuchProviderException e7) {
                throw new ExtCertPathValidatorException("Support class could not be created.", e7);
            } catch (NoSuchAlgorithmException e8) {
                throw new ExtCertPathValidatorException("Support class could not be created.", e8);
            }
        }
        if (th == null) {
            return certPathBuilderResult2.getCertPath();
        }
        throw th;
    }

    protected static CertPathValidatorResult processAttrCert2(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        try {
            try {
                return CertPathValidator.getInstance("PKIX", BouncyCastleProvider.PROVIDER_NAME).validate(certPath, pKIXExtendedParameters);
            } catch (CertPathValidatorException e) {
                throw new ExtCertPathValidatorException("Certification path for issuer certificate of attribute certificate could not be validated.", e);
            } catch (InvalidAlgorithmParameterException e2) {
                throw new RuntimeException(e2.getMessage());
            }
        } catch (NoSuchProviderException e3) {
            throw new ExtCertPathValidatorException("Support class could not be created.", e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new ExtCertPathValidatorException("Support class could not be created.", e4);
        }
    }

    protected static void processAttrCert3(X509Certificate x509Certificate, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        if (x509Certificate.getKeyUsage() != null && !x509Certificate.getKeyUsage()[0] && !x509Certificate.getKeyUsage()[1]) {
            throw new CertPathValidatorException("Attribute certificate issuer public key cannot be used to validate digital signatures.");
        } else if (x509Certificate.getBasicConstraints() != -1) {
            throw new CertPathValidatorException("Attribute certificate issuer is also a public key certificate issuer.");
        }
    }

    protected static void processAttrCert4(X509Certificate x509Certificate, Set set) throws CertPathValidatorException {
        boolean z;
        boolean z2 = false;
        Iterator it = set.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            TrustAnchor trustAnchor = (TrustAnchor) it.next();
            z2 = (x509Certificate.getSubjectX500Principal().getName("RFC2253").equals(trustAnchor.getCAName()) || x509Certificate.equals(trustAnchor.getTrustedCert())) ? true : z;
        }
        if (!z) {
            throw new CertPathValidatorException("Attribute certificate issuer is not directly trusted.");
        }
    }

    protected static void processAttrCert5(X509AttributeCertificate x509AttributeCertificate, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        try {
            x509AttributeCertificate.checkValidity(CertPathValidatorUtilities.getValidDate(pKIXExtendedParameters));
        } catch (CertificateExpiredException e) {
            throw new ExtCertPathValidatorException("Attribute certificate is not valid.", e);
        } catch (CertificateNotYetValidException e2) {
            throw new ExtCertPathValidatorException("Attribute certificate is not valid.", e2);
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<org.bouncycastle.x509.PKIXAttrCertChecker>, for r8v0, types: [java.util.Set<org.bouncycastle.x509.PKIXAttrCertChecker>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static void processAttrCert7(org.bouncycastle.x509.X509AttributeCertificate r4, java.security.cert.CertPath r5, java.security.cert.CertPath r6, org.bouncycastle.jcajce.PKIXExtendedParameters r7, java.util.Set<org.bouncycastle.x509.PKIXAttrCertChecker> r8) throws java.security.cert.CertPathValidatorException {
        /*
            java.util.Set r1 = r4.getCriticalExtensionOIDs()
            java.lang.String r0 = TARGET_INFORMATION
            boolean r0 = r1.contains(r0)
            if (r0 == 0) goto L_0x0015
            java.lang.String r0 = TARGET_INFORMATION     // Catch:{ AnnotatedException -> 0x002e, IllegalArgumentException -> 0x0037 }
            org.bouncycastle.asn1.ASN1Primitive r0 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r4, r0)     // Catch:{ AnnotatedException -> 0x002e, IllegalArgumentException -> 0x0037 }
            org.bouncycastle.asn1.x509.TargetInformation.getInstance(r0)     // Catch:{ AnnotatedException -> 0x002e, IllegalArgumentException -> 0x0037 }
        L_0x0015:
            java.lang.String r0 = TARGET_INFORMATION
            r1.remove(r0)
            java.util.Iterator r2 = r8.iterator()
        L_0x001e:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x0040
            java.lang.Object r0 = r2.next()
            org.bouncycastle.x509.PKIXAttrCertChecker r0 = (org.bouncycastle.x509.PKIXAttrCertChecker) r0
            r0.check(r4, r5, r6, r1)
            goto L_0x001e
        L_0x002e:
            r0 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r1 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r2 = "Target information extension could not be read."
            r1.<init>(r2, r0)
            throw r1
        L_0x0037:
            r0 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r1 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r2 = "Target information extension could not be read."
            r1.<init>(r2, r0)
            throw r1
        L_0x0040:
            boolean r0 = r1.isEmpty()
            if (r0 != 0) goto L_0x005f
            java.security.cert.CertPathValidatorException r0 = new java.security.cert.CertPathValidatorException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Attribute certificate contains unsupported critical extensions: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x005f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3281CertPathUtilities.processAttrCert7(org.bouncycastle.x509.X509AttributeCertificate, java.security.cert.CertPath, java.security.cert.CertPath, org.bouncycastle.jcajce.PKIXExtendedParameters, java.util.Set):void");
    }
}
