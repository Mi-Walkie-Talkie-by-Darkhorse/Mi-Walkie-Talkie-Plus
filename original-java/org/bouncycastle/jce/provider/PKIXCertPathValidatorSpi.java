package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.Certificate;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters.Builder;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.ExtendedPKIXParameters;

public class PKIXCertPathValidatorSpi extends CertPathValidatorSpi {
    private final JcaJceHelper helper = new BCJcaJceHelper();

    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathValidatorException, InvalidAlgorithmParameterException {
        PKIXExtendedParameters pKIXExtendedParameters;
        PublicKey cAPublicKey;
        X500Name ca;
        HashSet hashSet;
        int i;
        int i2;
        PKIXPolicyNode pKIXPolicyNode;
        int i3;
        HashSet hashSet2;
        if (certPathParameters instanceof PKIXParameters) {
            Builder builder = new Builder((PKIXParameters) certPathParameters);
            if (certPathParameters instanceof ExtendedPKIXParameters) {
                ExtendedPKIXParameters extendedPKIXParameters = (ExtendedPKIXParameters) certPathParameters;
                builder.setUseDeltasEnabled(extendedPKIXParameters.isUseDeltasEnabled());
                builder.setValidityModel(extendedPKIXParameters.getValidityModel());
            }
            pKIXExtendedParameters = builder.build();
        } else if (certPathParameters instanceof PKIXExtendedBuilderParameters) {
            pKIXExtendedParameters = ((PKIXExtendedBuilderParameters) certPathParameters).getBaseParameters();
        } else if (certPathParameters instanceof PKIXExtendedParameters) {
            pKIXExtendedParameters = (PKIXExtendedParameters) certPathParameters;
        } else {
            throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
        }
        if (pKIXExtendedParameters.getTrustAnchors() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        List certificates = certPath.getCertificates();
        int size = certificates.size();
        if (certificates.isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, -1);
        }
        Set initialPolicies = pKIXExtendedParameters.getInitialPolicies();
        try {
            TrustAnchor findTrustAnchor = CertPathValidatorUtilities.findTrustAnchor((X509Certificate) certificates.get(certificates.size() - 1), pKIXExtendedParameters.getTrustAnchors(), pKIXExtendedParameters.getSigProvider());
            if (findTrustAnchor == null) {
                throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
            }
            PKIXExtendedParameters build = new Builder(pKIXExtendedParameters).setTrustAnchor(findTrustAnchor).build();
            ArrayList[] arrayListArr = new ArrayList[(size + 1)];
            for (int i4 = 0; i4 < arrayListArr.length; i4++) {
                arrayListArr[i4] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add(RFC3280CertPathUtilities.ANY_POLICY);
            PKIXPolicyNode pKIXPolicyNode2 = new PKIXPolicyNode(new ArrayList(), 0, hashSet3, null, new HashSet(), RFC3280CertPathUtilities.ANY_POLICY, false);
            arrayListArr[0].add(pKIXPolicyNode2);
            PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
            HashSet hashSet4 = new HashSet();
            int i5 = build.isExplicitPolicyRequired() ? 0 : size + 1;
            int i6 = build.isAnyPolicyInhibited() ? 0 : size + 1;
            int i7 = build.isPolicyMappingInhibited() ? 0 : size + 1;
            X509Certificate trustedCert = findTrustAnchor.getTrustedCert();
            if (trustedCert != null) {
                try {
                    cAPublicKey = trustedCert.getPublicKey();
                    ca = PrincipalUtils.getSubjectPrincipal(trustedCert);
                } catch (IllegalArgumentException e) {
                    throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", e, certPath, -1);
                }
            } else {
                cAPublicKey = findTrustAnchor.getCAPublicKey();
                ca = PrincipalUtils.getCA(findTrustAnchor);
            }
            try {
                AlgorithmIdentifier algorithmIdentifier = CertPathValidatorUtilities.getAlgorithmIdentifier(cAPublicKey);
                algorithmIdentifier.getAlgorithm();
                algorithmIdentifier.getParameters();
                if (build.getTargetConstraints() == null || build.getTargetConstraints().match((Certificate) (X509Certificate) certificates.get(0))) {
                    List<PKIXCertPathChecker> certPathCheckers = build.getCertPathCheckers();
                    for (PKIXCertPathChecker init : certPathCheckers) {
                        init.init(false);
                    }
                    X509Certificate x509Certificate = null;
                    int i8 = size;
                    int i9 = i7;
                    int i10 = i6;
                    int i11 = i5;
                    PKIXPolicyNode pKIXPolicyNode3 = pKIXPolicyNode2;
                    PublicKey publicKey = cAPublicKey;
                    int size2 = certificates.size() - 1;
                    X509Certificate x509Certificate2 = trustedCert;
                    while (size2 >= 0) {
                        int i12 = size - size2;
                        x509Certificate = (X509Certificate) certificates.get(size2);
                        RFC3280CertPathUtilities.processCertA(certPath, build, size2, publicKey, size2 == certificates.size() + -1, ca, x509Certificate2, this.helper);
                        RFC3280CertPathUtilities.processCertBC(certPath, size2, pKIXNameConstraintValidator);
                        PKIXPolicyNode processCertE = RFC3280CertPathUtilities.processCertE(certPath, size2, RFC3280CertPathUtilities.processCertD(certPath, size2, hashSet4, pKIXPolicyNode3, arrayListArr, i10));
                        RFC3280CertPathUtilities.processCertF(certPath, size2, processCertE, i11);
                        if (i12 == size) {
                            i = i9;
                            i2 = i11;
                            pKIXPolicyNode = processCertE;
                            i3 = i8;
                        } else if (x509Certificate == null || x509Certificate.getVersion() != 1) {
                            RFC3280CertPathUtilities.prepareNextCertA(certPath, size2);
                            pKIXPolicyNode = RFC3280CertPathUtilities.prepareCertB(certPath, size2, arrayListArr, processCertE, i9);
                            RFC3280CertPathUtilities.prepareNextCertG(certPath, size2, pKIXNameConstraintValidator);
                            int prepareNextCertH1 = RFC3280CertPathUtilities.prepareNextCertH1(certPath, size2, i11);
                            int prepareNextCertH2 = RFC3280CertPathUtilities.prepareNextCertH2(certPath, size2, i9);
                            int prepareNextCertH3 = RFC3280CertPathUtilities.prepareNextCertH3(certPath, size2, i10);
                            int prepareNextCertI1 = RFC3280CertPathUtilities.prepareNextCertI1(certPath, size2, prepareNextCertH1);
                            int prepareNextCertI2 = RFC3280CertPathUtilities.prepareNextCertI2(certPath, size2, prepareNextCertH2);
                            i10 = RFC3280CertPathUtilities.prepareNextCertJ(certPath, size2, prepareNextCertH3);
                            RFC3280CertPathUtilities.prepareNextCertK(certPath, size2);
                            int prepareNextCertM = RFC3280CertPathUtilities.prepareNextCertM(certPath, size2, RFC3280CertPathUtilities.prepareNextCertL(certPath, size2, i8));
                            RFC3280CertPathUtilities.prepareNextCertN(certPath, size2);
                            Set criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs != null) {
                                hashSet2 = new HashSet(criticalExtensionOIDs);
                                hashSet2.remove(RFC3280CertPathUtilities.KEY_USAGE);
                                hashSet2.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                                hashSet2.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                                hashSet2.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                                hashSet2.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                                hashSet2.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                                hashSet2.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                                hashSet2.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                                hashSet2.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                                hashSet2.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                            } else {
                                hashSet2 = new HashSet();
                            }
                            RFC3280CertPathUtilities.prepareNextCertO(certPath, size2, hashSet2, certPathCheckers);
                            ca = PrincipalUtils.getSubjectPrincipal(x509Certificate);
                            try {
                                publicKey = CertPathValidatorUtilities.getNextWorkingKey(certPath.getCertificates(), size2, this.helper);
                                AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(publicKey);
                                algorithmIdentifier2.getAlgorithm();
                                algorithmIdentifier2.getParameters();
                                i3 = prepareNextCertM;
                                i = prepareNextCertI2;
                                i2 = prepareNextCertI1;
                                x509Certificate2 = x509Certificate;
                            } catch (CertPathValidatorException e2) {
                                throw new CertPathValidatorException("Next working key could not be retrieved.", e2, certPath, size2);
                            }
                        } else {
                            throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, size2);
                        }
                        size2--;
                        i8 = i3;
                        i9 = i;
                        i11 = i2;
                        pKIXPolicyNode3 = pKIXPolicyNode;
                    }
                    int wrapupCertB = RFC3280CertPathUtilities.wrapupCertB(certPath, size2 + 1, RFC3280CertPathUtilities.wrapupCertA(i11, x509Certificate));
                    Set criticalExtensionOIDs2 = x509Certificate.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs2 != null) {
                        hashSet = new HashSet(criticalExtensionOIDs2);
                        hashSet.remove(RFC3280CertPathUtilities.KEY_USAGE);
                        hashSet.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                        hashSet.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                        hashSet.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                        hashSet.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                        hashSet.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.CRL_DISTRIBUTION_POINTS);
                        hashSet.remove(Extension.extendedKeyUsage.getId());
                    } else {
                        hashSet = new HashSet();
                    }
                    RFC3280CertPathUtilities.wrapupCertF(certPath, size2 + 1, certPathCheckers, hashSet);
                    PKIXPolicyNode wrapupCertG = RFC3280CertPathUtilities.wrapupCertG(certPath, build, initialPolicies, size2 + 1, arrayListArr, pKIXPolicyNode3, hashSet4);
                    if (wrapupCertB > 0 || wrapupCertG != null) {
                        return new PKIXCertPathValidatorResult(findTrustAnchor, wrapupCertG, x509Certificate.getPublicKey());
                    }
                    throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, size2);
                }
                throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
            } catch (CertPathValidatorException e3) {
                throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", e3, certPath, -1);
            }
        } catch (AnnotatedException e4) {
            throw new CertPathValidatorException(e4.getMessage(), e4, certPath, certificates.size() - 1);
        }
    }
}
