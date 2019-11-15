package org.bouncycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.apache.http.HttpHost;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.x509.AccessDescription;
import org.bouncycastle.asn1.x509.AuthorityInformationAccess;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.asn1.x509.qualified.MonetaryValue;
import org.bouncycastle.asn1.x509.qualified.QCStatement;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.LocaleString;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.i18n.filter.UntrustedUrlInput;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidator;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException;
import org.bouncycastle.util.Integers;

public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String AUTH_INFO_ACCESS = X509Extensions.AuthorityInfoAccess.getId();
    private static final String CRL_DIST_POINTS = X509Extensions.CRLDistributionPoints.getId();
    private static final String QC_STATEMENT = X509Extensions.QCStatements.getId();
    private static final String RESOURCE_NAME = "org.bouncycastle.x509.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected List[] errors;
    private boolean initialized;
    protected int n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;

    public PKIXCertPathReviewer() {
    }

    public PKIXCertPathReviewer(CertPath certPath2, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath2, pKIXParameters);
    }

    private String IPtoString(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception e) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i != bArr.length; i++) {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
        }
    }

    private void checkCriticalExtensions() {
        int size;
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        for (PKIXCertPathChecker init : certPathCheckers) {
            try {
                init.init(false);
            } catch (CertPathValidatorException e) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.criticalExtensionError", new Object[]{e.getMessage(), e, e.getClass().getName()}), e.getCause(), this.certPath, size);
            } catch (CertPathValidatorException e2) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathCheckerError", new Object[]{e2.getMessage(), e2, e2.getClass().getName()}), e2);
            } catch (CertPathReviewerException e3) {
                addError(e3.getErrorMessage(), e3.getIndex());
                return;
            }
        }
        size = this.certs.size() - 1;
        while (size >= 0) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(KEY_USAGE);
                criticalExtensionOIDs.remove(CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(NAME_CONSTRAINTS);
                if (criticalExtensionOIDs.contains(QC_STATEMENT) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(QC_STATEMENT);
                }
                for (PKIXCertPathChecker check : certPathCheckers) {
                    check.check(x509Certificate, criticalExtensionOIDs);
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    for (String aSN1ObjectIdentifier : criticalExtensionOIDs) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(aSN1ObjectIdentifier)}), size);
                    }
                }
            }
            size--;
        }
    }

    private void checkNameConstraints() {
        GeneralName instance;
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        for (int size = this.certs.size() - 1; size > 0; size--) {
            int i = this.n - size;
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!isSelfIssued(x509Certificate)) {
                X500Principal subjectPrincipal = getSubjectPrincipal(x509Certificate);
                try {
                    ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream((InputStream) new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                    pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                    pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME);
                    if (aSN1Sequence2 != null) {
                        for (int i2 = 0; i2 < aSN1Sequence2.size(); i2++) {
                            instance = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i2));
                            pKIXNameConstraintValidator.checkPermitted(instance);
                            pKIXNameConstraintValidator.checkExcluded(instance);
                        }
                    }
                } catch (AnnotatedException e) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncExtError"), e, this.certPath, size);
                } catch (PKIXNameConstraintValidatorException e2) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(instance)}), e2, this.certPath, size);
                } catch (AnnotatedException e3) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), e3, this.certPath, size);
                } catch (PKIXNameConstraintValidatorException e4) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e4, this.certPath, size);
                } catch (PKIXNameConstraintValidatorException e5) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e5, this.certPath, size);
                } catch (IOException e6) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e6, this.certPath, size);
                } catch (CertPathReviewerException e7) {
                    addError(e7.getErrorMessage(), e7.getIndex());
                    return;
                }
            }
            ASN1Sequence aSN1Sequence3 = (ASN1Sequence) getExtensionValue(x509Certificate, NAME_CONSTRAINTS);
            if (aSN1Sequence3 != null) {
                NameConstraints instance2 = NameConstraints.getInstance(aSN1Sequence3);
                GeneralSubtree[] permittedSubtrees = instance2.getPermittedSubtrees();
                if (permittedSubtrees != null) {
                    pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                }
                GeneralSubtree[] excludedSubtrees = instance2.getExcludedSubtrees();
                if (excludedSubtrees != null) {
                    for (int i3 = 0; i3 != excludedSubtrees.length; i3++) {
                        pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i3]);
                    }
                }
            }
        }
    }

    private void checkPathLength() {
        int i;
        int i2;
        BasicConstraints basicConstraints;
        int i3;
        int size = this.certs.size() - 1;
        int i4 = this.n;
        int i5 = 0;
        while (size > 0) {
            int i6 = this.n - size;
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            if (!isSelfIssued(x509Certificate)) {
                if (i4 <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLengthExtended"));
                }
                int i7 = i4 - 1;
                i2 = i5 + 1;
                i = i7;
            } else {
                int i8 = i5;
                i = i4;
                i2 = i8;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
            } catch (AnnotatedException e) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            if (basicConstraints != null) {
                BigInteger pathLenConstraint = basicConstraints.getPathLenConstraint();
                if (pathLenConstraint != null) {
                    i3 = pathLenConstraint.intValue();
                    if (i3 < i) {
                        size--;
                        i5 = i2;
                        i4 = i3;
                    }
                }
            }
            i3 = i;
            size--;
            i5 = i2;
            i4 = i3;
        }
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i5)}));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:204:0x044e, code lost:
        if (r2 < r5) goto L_0x0450;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkPolicy() {
        /*
            r24 = this;
            r0 = r24
            java.security.cert.PKIXParameters r2 = r0.pkixParams
            java.util.Set r19 = r2.getInitialPolicies()
            r0 = r24
            int r2 = r0.n
            int r2 = r2 + 1
            java.util.ArrayList[] r0 = new java.util.ArrayList[r2]
            r20 = r0
            r2 = 0
        L_0x0013:
            r0 = r20
            int r3 = r0.length
            if (r2 >= r3) goto L_0x0022
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r20[r2] = r3
            int r2 = r2 + 1
            goto L_0x0013
        L_0x0022:
            java.util.HashSet r5 = new java.util.HashSet
            r5.<init>()
            java.lang.String r2 = "2.5.29.32.0"
            r5.add(r2)
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = new org.bouncycastle.jce.provider.PKIXPolicyNode
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r4 = 0
            r6 = 0
            java.util.HashSet r7 = new java.util.HashSet
            r7.<init>()
            java.lang.String r8 = "2.5.29.32.0"
            r9 = 0
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            r3 = 0
            r3 = r20[r3]
            r3.add(r2)
            r0 = r24
            java.security.cert.PKIXParameters r3 = r0.pkixParams
            boolean r3 = r3.isExplicitPolicyRequired()
            if (r3 == 0) goto L_0x00f1
            r3 = 0
        L_0x0051:
            r0 = r24
            java.security.cert.PKIXParameters r4 = r0.pkixParams
            boolean r4 = r4.isAnyPolicyInhibited()
            if (r4 == 0) goto L_0x00f9
            r4 = 0
        L_0x005c:
            r0 = r24
            java.security.cert.PKIXParameters r5 = r0.pkixParams
            boolean r5 = r5.isPolicyMappingInhibited()
            if (r5 == 0) goto L_0x0101
            r5 = 0
        L_0x0067:
            r7 = 0
            r10 = 0
            r0 = r24
            java.util.List r6 = r0.certs     // Catch:{ CertPathReviewerException -> 0x00e2 }
            int r6 = r6.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            int r6 = r6 + -1
            r16 = r6
            r12 = r5
            r13 = r4
            r14 = r3
            r15 = r2
            r6 = r7
        L_0x007a:
            if (r16 < 0) goto L_0x0472
            r0 = r24
            int r2 = r0.n     // Catch:{ CertPathReviewerException -> 0x00e2 }
            int r4 = r2 - r16
            r0 = r24
            java.util.List r2 = r0.certs     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            java.lang.Object r2 = r2.get(r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r2
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r10 = r0
            java.lang.String r2 = CERTIFICATE_POLICIES     // Catch:{ AnnotatedException -> 0x0109 }
            org.bouncycastle.asn1.ASN1Primitive r2 = getExtensionValue(r10, r2)     // Catch:{ AnnotatedException -> 0x0109 }
            r0 = r2
            org.bouncycastle.asn1.ASN1Sequence r0 = (org.bouncycastle.asn1.ASN1Sequence) r0     // Catch:{ AnnotatedException -> 0x0109 }
            r11 = r0
            if (r11 == 0) goto L_0x0280
            if (r15 == 0) goto L_0x0280
            java.util.Enumeration r3 = r11.getObjects()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.HashSet r2 = new java.util.HashSet     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x00a7:
            boolean r5 = r3.hasMoreElements()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 == 0) goto L_0x0135
            java.lang.Object r5 = r3.nextElement()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.x509.PolicyInformation r5 = org.bouncycastle.asn1.x509.PolicyInformation.getInstance(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.ASN1ObjectIdentifier r7 = r5.getPolicyIdentifier()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r8 = r7.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2.add(r8)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r8 = "2.5.29.32.0"
            java.lang.String r9 = r7.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r8 = r8.equals(r9)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r8 != 0) goto L_0x00a7
            org.bouncycastle.asn1.ASN1Sequence r5 = r5.getPolicyQualifiers()     // Catch:{ CertPathValidatorException -> 0x011f }
            java.util.Set r5 = getQualifierSet(r5)     // Catch:{ CertPathValidatorException -> 0x011f }
            r0 = r20
            boolean r8 = processCertD1i(r4, r0, r7, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r8 != 0) goto L_0x00a7
            r0 = r20
            processCertD1ii(r4, r0, r7, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x00a7
        L_0x00e2:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r3 = r2.getErrorMessage()
            int r2 = r2.getIndex()
            r0 = r24
            r0.addError(r3, r2)
        L_0x00f0:
            return
        L_0x00f1:
            r0 = r24
            int r3 = r0.n
            int r3 = r3 + 1
            goto L_0x0051
        L_0x00f9:
            r0 = r24
            int r4 = r0.n
            int r4 = r4 + 1
            goto L_0x005c
        L_0x0101:
            r0 = r24
            int r5 = r0.n
            int r5 = r5 + 1
            goto L_0x0067
        L_0x0109:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r3 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.policyExtError"
            r3.<init>(r4, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r4 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r5 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r4.<init>(r3, r2, r5, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r4     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x011f:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r3 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.policyQualifierError"
            r3.<init>(r4, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r4 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r5 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r4.<init>(r3, r2, r5, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r4     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0135:
            if (r6 == 0) goto L_0x013f
            java.lang.String r3 = "2.5.29.32.0"
            boolean r3 = r6.contains(r3)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r3 == 0) goto L_0x01c9
        L_0x013f:
            r17 = r2
        L_0x0141:
            if (r13 > 0) goto L_0x014f
            r0 = r24
            int r2 = r0.n     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r4 >= r2) goto L_0x022e
            boolean r2 = isSelfIssued(r10)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x022e
        L_0x014f:
            java.util.Enumeration r2 = r11.getObjects()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0153:
            boolean r3 = r2.hasMoreElements()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r3 == 0) goto L_0x022e
            java.lang.Object r3 = r2.nextElement()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.x509.PolicyInformation r3 = org.bouncycastle.asn1.x509.PolicyInformation.getInstance(r3)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r5 = "2.5.29.32.0"
            org.bouncycastle.asn1.ASN1ObjectIdentifier r6 = r3.getPolicyIdentifier()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r6 = r6.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r5 = r5.equals(r6)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 == 0) goto L_0x0153
            org.bouncycastle.asn1.ASN1Sequence r2 = r3.getPolicyQualifiers()     // Catch:{ CertPathValidatorException -> 0x01e8 }
            java.util.Set r7 = getQualifierSet(r2)     // Catch:{ CertPathValidatorException -> 0x01e8 }
            int r2 = r4 + -1
            r21 = r20[r2]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r18 = r2
        L_0x0180:
            int r2 = r21.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r18
            if (r0 >= r2) goto L_0x022e
            r0 = r21
            r1 = r18
            java.lang.Object r6 = r0.get(r1)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r6 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r6     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.Set r2 = r6.getExpectedPolicies()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.Iterator r22 = r2.iterator()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x019a:
            boolean r2 = r22.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x0228
            java.lang.Object r2 = r22.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r3 = r2 instanceof java.lang.String     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r3 == 0) goto L_0x01fe
            java.lang.String r2 = (java.lang.String) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r8 = r2
        L_0x01ab:
            r3 = 0
            java.util.Iterator r5 = r6.getChildren()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x01b0:
            boolean r2 = r5.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x0209
            java.lang.Object r2 = r5.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r2 = r2.getValidPolicy()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r2 = r8.equals(r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x0692
            r2 = 1
        L_0x01c7:
            r3 = r2
            goto L_0x01b0
        L_0x01c9:
            java.util.Iterator r3 = r6.iterator()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.HashSet r17 = new java.util.HashSet     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r17.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x01d2:
            boolean r5 = r3.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 == 0) goto L_0x0141
            java.lang.Object r5 = r3.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r6 = r2.contains(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r6 == 0) goto L_0x01d2
            r0 = r17
            r0.add(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x01d2
        L_0x01e8:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r3 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.policyQualifierError"
            r3.<init>(r4, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r4 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r5 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r4.<init>(r3, r2, r5, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r4     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x01fe:
            boolean r3 = r2 instanceof org.bouncycastle.asn1.ASN1ObjectIdentifier     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r3 == 0) goto L_0x019a
            org.bouncycastle.asn1.ASN1ObjectIdentifier r2 = (org.bouncycastle.asn1.ASN1ObjectIdentifier) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r8 = r2.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x01ab
        L_0x0209:
            if (r3 != 0) goto L_0x019a
            java.util.HashSet r5 = new java.util.HashSet     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r5.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r5.add(r8)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = new org.bouncycastle.jce.provider.PKIXPolicyNode     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r3.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r9 = 0
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r6.addChild(r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r3 = r20[r4]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r3.add(r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x019a
        L_0x0228:
            int r2 = r18 + 1
            r18 = r2
            goto L_0x0180
        L_0x022e:
            int r2 = r4 + -1
            r6 = r2
        L_0x0231:
            if (r6 < 0) goto L_0x025d
            r7 = r20[r6]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r5 = r2
            r3 = r15
        L_0x0238:
            int r2 = r7.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 >= r2) goto L_0x068f
            java.lang.Object r2 = r7.get(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r8 = r2.hasChildren()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r8 != 0) goto L_0x0257
            r0 = r20
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = removePolicyNode(r3, r0, r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 != 0) goto L_0x0258
        L_0x0252:
            int r3 = r6 + -1
            r6 = r3
            r15 = r2
            goto L_0x0231
        L_0x0257:
            r2 = r3
        L_0x0258:
            int r3 = r5 + 1
            r5 = r3
            r3 = r2
            goto L_0x0238
        L_0x025d:
            java.util.Set r2 = r10.getCriticalExtensionOIDs()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x068a
            java.lang.String r3 = CERTIFICATE_POLICIES     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r5 = r2.contains(r3)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r6 = r20[r4]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r3 = r2
        L_0x026d:
            int r2 = r6.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r3 >= r2) goto L_0x068a
            java.lang.Object r2 = r6.get(r3)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2.setCritical(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            int r2 = r3 + 1
            r3 = r2
            goto L_0x026d
        L_0x0280:
            r8 = r6
            r7 = r15
        L_0x0282:
            if (r11 != 0) goto L_0x0285
            r7 = 0
        L_0x0285:
            if (r14 > 0) goto L_0x0298
            if (r7 != 0) goto L_0x0298
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.noValidPolicyTree"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r3.<init>(r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0298:
            r0 = r24
            int r2 = r0.n     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r4 == r2) goto L_0x0684
            java.lang.String r2 = POLICY_MAPPINGS     // Catch:{ AnnotatedException -> 0x02e7 }
            org.bouncycastle.asn1.ASN1Primitive r3 = getExtensionValue(r10, r2)     // Catch:{ AnnotatedException -> 0x02e7 }
            if (r3 == 0) goto L_0x0322
            r0 = r3
            org.bouncycastle.asn1.ASN1Sequence r0 = (org.bouncycastle.asn1.ASN1Sequence) r0     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = r0
            r5 = 0
            r9 = r5
        L_0x02ac:
            int r5 = r2.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r9 >= r5) goto L_0x0322
            org.bouncycastle.asn1.ASN1Encodable r5 = r2.getObjectAt(r9)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.ASN1Sequence r5 = (org.bouncycastle.asn1.ASN1Sequence) r5     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r6 = 0
            org.bouncycastle.asn1.ASN1Encodable r6 = r5.getObjectAt(r6)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.ASN1ObjectIdentifier r6 = (org.bouncycastle.asn1.ASN1ObjectIdentifier) r6     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r11 = 1
            org.bouncycastle.asn1.ASN1Encodable r5 = r5.getObjectAt(r11)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.ASN1ObjectIdentifier r5 = (org.bouncycastle.asn1.ASN1ObjectIdentifier) r5     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r11 = "2.5.29.32.0"
            java.lang.String r6 = r6.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r6 = r11.equals(r6)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r6 == 0) goto L_0x02fd
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.invalidPolicyMapping"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r4 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r3.<init>(r2, r4, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x02e7:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r3 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.policyMapExtError"
            r3.<init>(r4, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r4 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r5 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r4.<init>(r3, r2, r5, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r4     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x02fd:
            java.lang.String r6 = "2.5.29.32.0"
            java.lang.String r5 = r5.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r5 = r6.equals(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 == 0) goto L_0x031e
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.invalidPolicyMapping"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r4 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r3.<init>(r2, r4, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x031e:
            int r5 = r9 + 1
            r9 = r5
            goto L_0x02ac
        L_0x0322:
            if (r3 == 0) goto L_0x0681
            org.bouncycastle.asn1.ASN1Sequence r3 = (org.bouncycastle.asn1.ASN1Sequence) r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.HashMap r9 = new java.util.HashMap     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r9.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.HashSet r11 = new java.util.HashSet     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r11.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r6 = r2
        L_0x0332:
            int r2 = r3.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r6 >= r2) goto L_0x0376
            org.bouncycastle.asn1.ASN1Encodable r2 = r3.getObjectAt(r6)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.ASN1Sequence r2 = (org.bouncycastle.asn1.ASN1Sequence) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r5 = 0
            org.bouncycastle.asn1.ASN1Encodable r5 = r2.getObjectAt(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.ASN1ObjectIdentifier r5 = (org.bouncycastle.asn1.ASN1ObjectIdentifier) r5     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r5 = r5.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r15 = 1
            org.bouncycastle.asn1.ASN1Encodable r2 = r2.getObjectAt(r15)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.asn1.ASN1ObjectIdentifier r2 = (org.bouncycastle.asn1.ASN1ObjectIdentifier) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r15 = r2.getId()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r2 = r9.containsKey(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 != 0) goto L_0x036c
            java.util.HashSet r2 = new java.util.HashSet     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2.add(r15)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r9.put(r5, r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r11.add(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0368:
            int r2 = r6 + 1
            r6 = r2
            goto L_0x0332
        L_0x036c:
            java.lang.Object r2 = r9.get(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.util.Set r2 = (java.util.Set) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2.add(r15)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x0368
        L_0x0376:
            java.util.Iterator r5 = r11.iterator()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r3 = r7
        L_0x037b:
            boolean r2 = r5.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x03c6
            java.lang.Object r2 = r5.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r2 = (java.lang.String) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r12 <= 0) goto L_0x03bd
            r0 = r20
            prepareNextCertB1(r4, r0, r2, r9, r10)     // Catch:{ AnnotatedException -> 0x0391, CertPathValidatorException -> 0x03a7 }
            r2 = r3
        L_0x038f:
            r3 = r2
            goto L_0x037b
        L_0x0391:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r3 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.policyExtError"
            r3.<init>(r4, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r4 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r5 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r4.<init>(r3, r2, r5, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r4     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x03a7:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r3 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.policyQualifierError"
            r3.<init>(r4, r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r4 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r5 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r4.<init>(r3, r2, r5, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r4     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x03bd:
            if (r12 > 0) goto L_0x067e
            r0 = r20
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = prepareNextCertB2(r4, r0, r2, r3)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x038f
        L_0x03c6:
            r6 = r3
        L_0x03c7:
            boolean r2 = isSelfIssued(r10)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 != 0) goto L_0x0679
            if (r14 == 0) goto L_0x0676
            int r4 = r14 + -1
        L_0x03d1:
            if (r12 == 0) goto L_0x0673
            int r3 = r12 + -1
        L_0x03d5:
            if (r13 == 0) goto L_0x0670
            int r13 = r13 + -1
            r5 = r13
        L_0x03da:
            java.lang.String r2 = POLICY_CONSTRAINTS     // Catch:{ AnnotatedException -> 0x0426 }
            org.bouncycastle.asn1.ASN1Primitive r2 = getExtensionValue(r10, r2)     // Catch:{ AnnotatedException -> 0x0426 }
            org.bouncycastle.asn1.ASN1Sequence r2 = (org.bouncycastle.asn1.ASN1Sequence) r2     // Catch:{ AnnotatedException -> 0x0426 }
            if (r2 == 0) goto L_0x043c
            java.util.Enumeration r7 = r2.getObjects()     // Catch:{ AnnotatedException -> 0x0426 }
        L_0x03e8:
            boolean r2 = r7.hasMoreElements()     // Catch:{ AnnotatedException -> 0x0426 }
            if (r2 == 0) goto L_0x043c
            java.lang.Object r2 = r7.nextElement()     // Catch:{ AnnotatedException -> 0x0426 }
            org.bouncycastle.asn1.ASN1TaggedObject r2 = (org.bouncycastle.asn1.ASN1TaggedObject) r2     // Catch:{ AnnotatedException -> 0x0426 }
            int r9 = r2.getTagNo()     // Catch:{ AnnotatedException -> 0x0426 }
            switch(r9) {
                case 0: goto L_0x0400;
                case 1: goto L_0x0415;
                default: goto L_0x03fb;
            }     // Catch:{ AnnotatedException -> 0x0426 }
        L_0x03fb:
            r2 = r3
            r3 = r4
        L_0x03fd:
            r4 = r3
            r3 = r2
            goto L_0x03e8
        L_0x0400:
            r9 = 0
            org.bouncycastle.asn1.ASN1Integer r2 = org.bouncycastle.asn1.ASN1Integer.getInstance(r2, r9)     // Catch:{ AnnotatedException -> 0x0426 }
            java.math.BigInteger r2 = r2.getValue()     // Catch:{ AnnotatedException -> 0x0426 }
            int r2 = r2.intValue()     // Catch:{ AnnotatedException -> 0x0426 }
            if (r2 >= r4) goto L_0x03fb
            r23 = r3
            r3 = r2
            r2 = r23
            goto L_0x03fd
        L_0x0415:
            r9 = 0
            org.bouncycastle.asn1.ASN1Integer r2 = org.bouncycastle.asn1.ASN1Integer.getInstance(r2, r9)     // Catch:{ AnnotatedException -> 0x0426 }
            java.math.BigInteger r2 = r2.getValue()     // Catch:{ AnnotatedException -> 0x0426 }
            int r2 = r2.intValue()     // Catch:{ AnnotatedException -> 0x0426 }
            if (r2 >= r3) goto L_0x03fb
            r3 = r4
            goto L_0x03fd
        L_0x0426:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.policyConstExtError"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r4 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r3.<init>(r2, r4, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x043c:
            java.lang.String r2 = INHIBIT_ANY_POLICY     // Catch:{ AnnotatedException -> 0x045c }
            org.bouncycastle.asn1.ASN1Primitive r2 = getExtensionValue(r10, r2)     // Catch:{ AnnotatedException -> 0x045c }
            org.bouncycastle.asn1.ASN1Integer r2 = (org.bouncycastle.asn1.ASN1Integer) r2     // Catch:{ AnnotatedException -> 0x045c }
            if (r2 == 0) goto L_0x066d
            java.math.BigInteger r2 = r2.getValue()     // Catch:{ AnnotatedException -> 0x045c }
            int r2 = r2.intValue()     // Catch:{ AnnotatedException -> 0x045c }
            if (r2 >= r5) goto L_0x066d
        L_0x0450:
            r5 = r6
        L_0x0451:
            int r6 = r16 + -1
            r16 = r6
            r12 = r3
            r13 = r2
            r14 = r4
            r15 = r5
            r6 = r8
            goto L_0x007a
        L_0x045c:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.policyInhibitExtError"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r4 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r3.<init>(r2, r4, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0472:
            boolean r2 = isSelfIssued(r10)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 != 0) goto L_0x066a
            if (r14 <= 0) goto L_0x066a
            int r14 = r14 + -1
            r3 = r14
        L_0x047d:
            java.lang.String r2 = POLICY_CONSTRAINTS     // Catch:{ AnnotatedException -> 0x04b2 }
            org.bouncycastle.asn1.ASN1Primitive r2 = getExtensionValue(r10, r2)     // Catch:{ AnnotatedException -> 0x04b2 }
            org.bouncycastle.asn1.ASN1Sequence r2 = (org.bouncycastle.asn1.ASN1Sequence) r2     // Catch:{ AnnotatedException -> 0x04b2 }
            if (r2 == 0) goto L_0x04c8
            java.util.Enumeration r4 = r2.getObjects()     // Catch:{ AnnotatedException -> 0x04b2 }
        L_0x048b:
            boolean r2 = r4.hasMoreElements()     // Catch:{ AnnotatedException -> 0x04b2 }
            if (r2 == 0) goto L_0x04c8
            java.lang.Object r2 = r4.nextElement()     // Catch:{ AnnotatedException -> 0x04b2 }
            org.bouncycastle.asn1.ASN1TaggedObject r2 = (org.bouncycastle.asn1.ASN1TaggedObject) r2     // Catch:{ AnnotatedException -> 0x04b2 }
            int r5 = r2.getTagNo()     // Catch:{ AnnotatedException -> 0x04b2 }
            switch(r5) {
                case 0: goto L_0x04a1;
                default: goto L_0x049e;
            }     // Catch:{ AnnotatedException -> 0x04b2 }
        L_0x049e:
            r2 = r3
        L_0x049f:
            r3 = r2
            goto L_0x048b
        L_0x04a1:
            r5 = 0
            org.bouncycastle.asn1.ASN1Integer r2 = org.bouncycastle.asn1.ASN1Integer.getInstance(r2, r5)     // Catch:{ AnnotatedException -> 0x04b2 }
            java.math.BigInteger r2 = r2.getValue()     // Catch:{ AnnotatedException -> 0x04b2 }
            int r2 = r2.intValue()     // Catch:{ AnnotatedException -> 0x04b2 }
            if (r2 != 0) goto L_0x049e
            r2 = 0
            goto L_0x049f
        L_0x04b2:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.policyConstExtError"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r4 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r3.<init>(r2, r4, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x04c8:
            if (r15 != 0) goto L_0x04fd
            r0 = r24
            java.security.cert.PKIXParameters r2 = r0.pkixParams     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r2 = r2.isExplicitPolicyRequired()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x04e9
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.explicitPolicy"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r4 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r3.<init>(r2, r4, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x04e9:
            r2 = 0
        L_0x04ea:
            if (r3 > 0) goto L_0x00f0
            if (r2 != 0) goto L_0x00f0
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.invalidPolicy"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r3.<init>(r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x04fd:
            boolean r2 = isAnyPolicy(r19)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x05b8
            r0 = r24
            java.security.cert.PKIXParameters r2 = r0.pkixParams     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r2 = r2.isExplicitPolicyRequired()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x0667
            boolean r2 = r6.isEmpty()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x0528
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.explicitPolicy"
            r2.<init>(r3, r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.x509.CertPathReviewerException r3 = new org.bouncycastle.x509.CertPathReviewerException     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r24
            java.security.cert.CertPath r4 = r0.certPath     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r16
            r3.<init>(r2, r4, r0)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            throw r3     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0528:
            java.util.HashSet r7 = new java.util.HashSet     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r7.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r5 = r2
        L_0x052f:
            r0 = r20
            int r2 = r0.length     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 >= r2) goto L_0x056a
            r8 = r20[r5]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r4 = r2
        L_0x0538:
            int r2 = r8.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r4 >= r2) goto L_0x0566
            java.lang.Object r2 = r8.get(r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r9 = "2.5.29.32.0"
            java.lang.String r10 = r2.getValidPolicy()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r9 = r9.equals(r10)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r9 == 0) goto L_0x0562
            java.util.Iterator r2 = r2.getChildren()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0554:
            boolean r9 = r2.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r9 == 0) goto L_0x0562
            java.lang.Object r9 = r2.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r7.add(r9)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x0554
        L_0x0562:
            int r2 = r4 + 1
            r4 = r2
            goto L_0x0538
        L_0x0566:
            int r2 = r5 + 1
            r5 = r2
            goto L_0x052f
        L_0x056a:
            java.util.Iterator r4 = r7.iterator()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x056e:
            boolean r2 = r4.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x0585
            java.lang.Object r2 = r4.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r2 = r2.getValidPolicy()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r2 = r6.contains(r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 != 0) goto L_0x056e
            goto L_0x056e
        L_0x0585:
            if (r15 == 0) goto L_0x0667
            r0 = r24
            int r2 = r0.n     // Catch:{ CertPathReviewerException -> 0x00e2 }
            int r2 = r2 + -1
            r6 = r2
            r2 = r15
        L_0x058f:
            if (r6 < 0) goto L_0x04ea
            r7 = r20[r6]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r4 = 0
            r5 = r4
            r4 = r2
        L_0x0596:
            int r2 = r7.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 >= r2) goto L_0x05b3
            java.lang.Object r2 = r7.get(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r8 = r2.hasChildren()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r8 != 0) goto L_0x0664
            r0 = r20
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = removePolicyNode(r4, r0, r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x05ae:
            int r4 = r5 + 1
            r5 = r4
            r4 = r2
            goto L_0x0596
        L_0x05b3:
            int r2 = r6 + -1
            r6 = r2
            r2 = r4
            goto L_0x058f
        L_0x05b8:
            java.util.HashSet r6 = new java.util.HashSet     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r6.<init>()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r5 = r2
        L_0x05bf:
            r0 = r20
            int r2 = r0.length     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 >= r2) goto L_0x0608
            r7 = r20[r5]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r4 = r2
        L_0x05c8:
            int r2 = r7.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r4 >= r2) goto L_0x0604
            java.lang.Object r2 = r7.get(r4)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r8 = "2.5.29.32.0"
            java.lang.String r9 = r2.getValidPolicy()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r8 = r8.equals(r9)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r8 == 0) goto L_0x0600
            java.util.Iterator r8 = r2.getChildren()     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x05e4:
            boolean r2 = r8.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x0600
            java.lang.Object r2 = r8.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r9 = "2.5.29.32.0"
            java.lang.String r10 = r2.getValidPolicy()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r9 = r9.equals(r10)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r9 != 0) goto L_0x05e4
            r6.add(r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            goto L_0x05e4
        L_0x0600:
            int r2 = r4 + 1
            r4 = r2
            goto L_0x05c8
        L_0x0604:
            int r2 = r5 + 1
            r5 = r2
            goto L_0x05bf
        L_0x0608:
            java.util.Iterator r5 = r6.iterator()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r4 = r15
        L_0x060d:
            boolean r2 = r5.hasNext()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r2 == 0) goto L_0x062d
            java.lang.Object r2 = r5.next()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            java.lang.String r6 = r2.getValidPolicy()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r0 = r19
            boolean r6 = r0.contains(r6)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r6 != 0) goto L_0x0662
            r0 = r20
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = removePolicyNode(r4, r0, r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x062b:
            r4 = r2
            goto L_0x060d
        L_0x062d:
            if (r4 == 0) goto L_0x065d
            r0 = r24
            int r2 = r0.n     // Catch:{ CertPathReviewerException -> 0x00e2 }
            int r2 = r2 + -1
            r6 = r2
        L_0x0636:
            if (r6 < 0) goto L_0x065d
            r7 = r20[r6]     // Catch:{ CertPathReviewerException -> 0x00e2 }
            r2 = 0
            r5 = r2
        L_0x063c:
            int r2 = r7.size()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r5 >= r2) goto L_0x0659
            java.lang.Object r2 = r7.get(r5)     // Catch:{ CertPathReviewerException -> 0x00e2 }
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r2     // Catch:{ CertPathReviewerException -> 0x00e2 }
            boolean r8 = r2.hasChildren()     // Catch:{ CertPathReviewerException -> 0x00e2 }
            if (r8 != 0) goto L_0x0660
            r0 = r20
            org.bouncycastle.jce.provider.PKIXPolicyNode r2 = removePolicyNode(r4, r0, r2)     // Catch:{ CertPathReviewerException -> 0x00e2 }
        L_0x0654:
            int r4 = r5 + 1
            r5 = r4
            r4 = r2
            goto L_0x063c
        L_0x0659:
            int r2 = r6 + -1
            r6 = r2
            goto L_0x0636
        L_0x065d:
            r2 = r4
            goto L_0x04ea
        L_0x0660:
            r2 = r4
            goto L_0x0654
        L_0x0662:
            r2 = r4
            goto L_0x062b
        L_0x0664:
            r2 = r4
            goto L_0x05ae
        L_0x0667:
            r2 = r15
            goto L_0x04ea
        L_0x066a:
            r3 = r14
            goto L_0x047d
        L_0x066d:
            r2 = r5
            goto L_0x0450
        L_0x0670:
            r5 = r13
            goto L_0x03da
        L_0x0673:
            r3 = r12
            goto L_0x03d5
        L_0x0676:
            r4 = r14
            goto L_0x03d1
        L_0x0679:
            r3 = r12
            r5 = r13
            r4 = r14
            goto L_0x03da
        L_0x067e:
            r2 = r3
            goto L_0x038f
        L_0x0681:
            r6 = r7
            goto L_0x03c7
        L_0x0684:
            r3 = r12
            r2 = r13
            r4 = r14
            r5 = r7
            goto L_0x0451
        L_0x068a:
            r8 = r17
            r7 = r15
            goto L_0x0282
        L_0x068f:
            r2 = r3
            goto L_0x0252
        L_0x0692:
            r2 = r3
            goto L_0x01c7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkPolicy():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:157:0x04a6  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00ce  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0081  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void checkSignatures() {
        /*
            r18 = this;
            r3 = 0
            r4 = 0
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.certPathValidDate"
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]
            r7 = 0
            org.bouncycastle.i18n.filter.TrustedInput r8 = new org.bouncycastle.i18n.filter.TrustedInput
            r0 = r18
            java.util.Date r9 = r0.validDate
            r8.<init>(r9)
            r6[r7] = r8
            r7 = 1
            org.bouncycastle.i18n.filter.TrustedInput r8 = new org.bouncycastle.i18n.filter.TrustedInput
            java.util.Date r9 = new java.util.Date
            r9.<init>()
            r8.<init>(r9)
            r6[r7] = r8
            r1.<init>(r2, r5, r6)
            r0 = r18
            r0.addNotification(r1)
            r0 = r18
            java.util.List r1 = r0.certs     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r0 = r18
            java.util.List r2 = r0.certs     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            int r2 = r2.size()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            int r2 = r2 + -1
            java.lang.Object r1 = r1.get(r2)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.security.cert.X509Certificate r1 = (java.security.cert.X509Certificate) r1     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r0 = r18
            java.security.cert.PKIXParameters r2 = r0.pkixParams     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.util.Set r2 = r2.getTrustAnchors()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r0 = r18
            java.util.Collection r2 = r0.getTrustAnchors(r1, r2)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            int r5 = r2.size()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r6 = 1
            if (r5 <= r6) goto L_0x014a
            org.bouncycastle.i18n.ErrorBundle r5 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.lang.String r6 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r7 = "CertPathReviewer.conflictingTrustAnchors"
            r8 = 2
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r9 = 0
            int r2 = r2.size()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.lang.Integer r2 = org.bouncycastle.util.Integers.valueOf(r2)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r8[r9] = r2     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r2 = 1
            org.bouncycastle.i18n.filter.UntrustedInput r9 = new org.bouncycastle.i18n.filter.UntrustedInput     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            javax.security.auth.x500.X500Principal r1 = r1.getIssuerX500Principal()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r9.<init>(r1)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r8[r2] = r9     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r5.<init>(r6, r7, r8)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r0 = r18
            r0.addError(r5)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r2 = r3
        L_0x007e:
            r11 = r2
        L_0x007f:
            if (r11 == 0) goto L_0x04a6
            java.security.cert.X509Certificate r2 = r11.getTrustedCert()
            if (r2 == 0) goto L_0x01f5
            javax.security.auth.x500.X500Principal r1 = getSubjectPrincipal(r2)     // Catch:{ IllegalArgumentException -> 0x0200 }
        L_0x008b:
            r3 = r1
        L_0x008c:
            if (r2 == 0) goto L_0x00a7
            boolean[] r1 = r2.getKeyUsage()
            if (r1 == 0) goto L_0x00a7
            r2 = 5
            boolean r1 = r1[r2]
            if (r1 != 0) goto L_0x00a7
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.trustKeyUsage"
            r1.<init>(r2, r4)
            r0 = r18
            r0.addNotification(r1)
        L_0x00a7:
            r2 = 0
            r1 = 0
            if (r11 == 0) goto L_0x00bf
            java.security.cert.X509Certificate r1 = r11.getTrustedCert()
            if (r1 == 0) goto L_0x0221
            java.security.PublicKey r2 = r1.getPublicKey()
        L_0x00b5:
            org.bouncycastle.asn1.x509.AlgorithmIdentifier r4 = getAlgorithmIdentifier(r2)     // Catch:{ CertPathValidatorException -> 0x0227 }
            r4.getAlgorithm()     // Catch:{ CertPathValidatorException -> 0x0227 }
            r4.getParameters()     // Catch:{ CertPathValidatorException -> 0x0227 }
        L_0x00bf:
            r0 = r18
            java.util.List r4 = r0.certs
            int r4 = r4.size()
            int r9 = r4 + -1
            r5 = r1
            r10 = r3
            r6 = r2
        L_0x00cc:
            if (r9 < 0) goto L_0x048e
            r0 = r18
            int r1 = r0.n
            int r12 = r1 - r9
            r0 = r18
            java.util.List r1 = r0.certs
            java.lang.Object r3 = r1.get(r9)
            java.security.cert.X509Certificate r3 = (java.security.cert.X509Certificate) r3
            if (r6 == 0) goto L_0x0261
            r0 = r18
            java.security.cert.PKIXParameters r1 = r0.pkixParams     // Catch:{ GeneralSecurityException -> 0x0238 }
            java.lang.String r1 = r1.getSigProvider()     // Catch:{ GeneralSecurityException -> 0x0238 }
            org.bouncycastle.x509.CertPathValidatorUtilities.verifyX509Certificate(r3, r6, r1)     // Catch:{ GeneralSecurityException -> 0x0238 }
        L_0x00eb:
            r0 = r18
            java.util.Date r1 = r0.validDate     // Catch:{ CertificateNotYetValidException -> 0x0319, CertificateExpiredException -> 0x0339 }
            r3.checkValidity(r1)     // Catch:{ CertificateNotYetValidException -> 0x0319, CertificateExpiredException -> 0x0339 }
        L_0x00f2:
            r0 = r18
            java.security.cert.PKIXParameters r1 = r0.pkixParams
            boolean r1 = r1.isRevocationEnabled()
            if (r1 == 0) goto L_0x03b0
            r1 = 0
            java.lang.String r2 = CRL_DIST_POINTS     // Catch:{ AnnotatedException -> 0x0359 }
            org.bouncycastle.asn1.ASN1Primitive r2 = getExtensionValue(r3, r2)     // Catch:{ AnnotatedException -> 0x0359 }
            if (r2 == 0) goto L_0x0109
            org.bouncycastle.asn1.x509.CRLDistPoint r1 = org.bouncycastle.asn1.x509.CRLDistPoint.getInstance(r2)     // Catch:{ AnnotatedException -> 0x0359 }
        L_0x0109:
            r2 = 0
            java.lang.String r4 = AUTH_INFO_ACCESS     // Catch:{ AnnotatedException -> 0x036a }
            org.bouncycastle.asn1.ASN1Primitive r4 = getExtensionValue(r3, r4)     // Catch:{ AnnotatedException -> 0x036a }
            if (r4 == 0) goto L_0x0116
            org.bouncycastle.asn1.x509.AuthorityInformationAccess r2 = org.bouncycastle.asn1.x509.AuthorityInformationAccess.getInstance(r4)     // Catch:{ AnnotatedException -> 0x036a }
        L_0x0116:
            r0 = r18
            java.util.Vector r7 = r0.getCRLDistUrls(r1)
            r0 = r18
            java.util.Vector r8 = r0.getOCSPUrls(r2)
            java.util.Iterator r1 = r7.iterator()
        L_0x0126:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x037b
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r13 = "CertPathReviewer.crlDistPoint"
            r14 = 1
            java.lang.Object[] r14 = new java.lang.Object[r14]
            r15 = 0
            org.bouncycastle.i18n.filter.UntrustedUrlInput r16 = new org.bouncycastle.i18n.filter.UntrustedUrlInput
            java.lang.Object r17 = r1.next()
            r16.<init>(r17)
            r14[r15] = r16
            r2.<init>(r4, r13, r14)
            r0 = r18
            r0.addNotification(r2, r9)
            goto L_0x0126
        L_0x014a:
            boolean r5 = r2.isEmpty()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            if (r5 == 0) goto L_0x0183
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.lang.String r5 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r6 = "CertPathReviewer.noTrustAnchorFound"
            r7 = 2
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r8 = 0
            org.bouncycastle.i18n.filter.UntrustedInput r9 = new org.bouncycastle.i18n.filter.UntrustedInput     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            javax.security.auth.x500.X500Principal r1 = r1.getIssuerX500Principal()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r9.<init>(r1)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r7[r8] = r9     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r1 = 1
            r0 = r18
            java.security.cert.PKIXParameters r8 = r0.pkixParams     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.util.Set r8 = r8.getTrustAnchors()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            int r8 = r8.size()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.lang.Integer r8 = org.bouncycastle.util.Integers.valueOf(r8)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r7[r1] = r8     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r2.<init>(r5, r6, r7)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r0 = r18
            r0.addError(r2)     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            r2 = r3
            goto L_0x007e
        L_0x0183:
            java.util.Iterator r2 = r2.iterator()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.lang.Object r2 = r2.next()     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.security.cert.TrustAnchor r2 = (java.security.cert.TrustAnchor) r2     // Catch:{ CertPathReviewerException -> 0x04a0, Throwable -> 0x01cc }
            java.security.cert.X509Certificate r3 = r2.getTrustedCert()     // Catch:{ CertPathReviewerException -> 0x01b9, Throwable -> 0x049c }
            if (r3 == 0) goto L_0x01c7
            java.security.cert.X509Certificate r3 = r2.getTrustedCert()     // Catch:{ CertPathReviewerException -> 0x01b9, Throwable -> 0x049c }
            java.security.PublicKey r3 = r3.getPublicKey()     // Catch:{ CertPathReviewerException -> 0x01b9, Throwable -> 0x049c }
        L_0x019b:
            r0 = r18
            java.security.cert.PKIXParameters r5 = r0.pkixParams     // Catch:{ SignatureException -> 0x01a8, Exception -> 0x04a3 }
            java.lang.String r5 = r5.getSigProvider()     // Catch:{ SignatureException -> 0x01a8, Exception -> 0x04a3 }
            org.bouncycastle.x509.CertPathValidatorUtilities.verifyX509Certificate(r1, r3, r5)     // Catch:{ SignatureException -> 0x01a8, Exception -> 0x04a3 }
            goto L_0x007e
        L_0x01a8:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ CertPathReviewerException -> 0x01b9, Throwable -> 0x049c }
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.trustButInvalidCert"
            r1.<init>(r3, r5)     // Catch:{ CertPathReviewerException -> 0x01b9, Throwable -> 0x049c }
            r0 = r18
            r0.addError(r1)     // Catch:{ CertPathReviewerException -> 0x01b9, Throwable -> 0x049c }
            goto L_0x007e
        L_0x01b9:
            r1 = move-exception
            r3 = r2
        L_0x01bb:
            org.bouncycastle.i18n.ErrorBundle r1 = r1.getErrorMessage()
            r0 = r18
            r0.addError(r1)
            r11 = r3
            goto L_0x007f
        L_0x01c7:
            java.security.PublicKey r3 = r2.getCAPublicKey()     // Catch:{ CertPathReviewerException -> 0x01b9, Throwable -> 0x049c }
            goto L_0x019b
        L_0x01cc:
            r1 = move-exception
        L_0x01cd:
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r5 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r6 = "CertPathReviewer.unknown"
            r7 = 2
            java.lang.Object[] r7 = new java.lang.Object[r7]
            r8 = 0
            org.bouncycastle.i18n.filter.UntrustedInput r9 = new org.bouncycastle.i18n.filter.UntrustedInput
            java.lang.String r10 = r1.getMessage()
            r9.<init>(r10)
            r7[r8] = r9
            r8 = 1
            org.bouncycastle.i18n.filter.UntrustedInput r9 = new org.bouncycastle.i18n.filter.UntrustedInput
            r9.<init>(r1)
            r7[r8] = r9
            r2.<init>(r5, r6, r7)
            r0 = r18
            r0.addError(r2)
            r11 = r3
            goto L_0x007f
        L_0x01f5:
            javax.security.auth.x500.X500Principal r1 = new javax.security.auth.x500.X500Principal     // Catch:{ IllegalArgumentException -> 0x0200 }
            java.lang.String r3 = r11.getCAName()     // Catch:{ IllegalArgumentException -> 0x0200 }
            r1.<init>(r3)     // Catch:{ IllegalArgumentException -> 0x0200 }
            goto L_0x008b
        L_0x0200:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r3 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r5 = "CertPathReviewer.trustDNInvalid"
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]
            r7 = 0
            org.bouncycastle.i18n.filter.UntrustedInput r8 = new org.bouncycastle.i18n.filter.UntrustedInput
            java.lang.String r9 = r11.getCAName()
            r8.<init>(r9)
            r6[r7] = r8
            r1.<init>(r3, r5, r6)
            r0 = r18
            r0.addError(r1)
            r3 = r4
            goto L_0x008c
        L_0x0221:
            java.security.PublicKey r2 = r11.getCAPublicKey()
            goto L_0x00b5
        L_0x0227:
            r4 = move-exception
            org.bouncycastle.i18n.ErrorBundle r4 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r5 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r6 = "CertPathReviewer.trustPubKeyError"
            r4.<init>(r5, r6)
            r0 = r18
            r0.addError(r4)
            goto L_0x00bf
        L_0x0238:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r7 = "CertPathReviewer.signatureNotVerified"
            r8 = 3
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r13 = 0
            java.lang.String r14 = r1.getMessage()
            r8[r13] = r14
            r13 = 1
            r8[r13] = r1
            r13 = 2
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r8[r13] = r1
            r2.<init>(r4, r7, r8)
            r0 = r18
            r0.addError(r2, r9)
            goto L_0x00eb
        L_0x0261:
            boolean r1 = isSelfIssued(r3)
            if (r1 == 0) goto L_0x02af
            java.security.PublicKey r1 = r3.getPublicKey()     // Catch:{ GeneralSecurityException -> 0x0286 }
            r0 = r18
            java.security.cert.PKIXParameters r2 = r0.pkixParams     // Catch:{ GeneralSecurityException -> 0x0286 }
            java.lang.String r2 = r2.getSigProvider()     // Catch:{ GeneralSecurityException -> 0x0286 }
            org.bouncycastle.x509.CertPathValidatorUtilities.verifyX509Certificate(r3, r1, r2)     // Catch:{ GeneralSecurityException -> 0x0286 }
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ GeneralSecurityException -> 0x0286 }
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"
            r1.<init>(r2, r4)     // Catch:{ GeneralSecurityException -> 0x0286 }
            r0 = r18
            r0.addError(r1, r9)     // Catch:{ GeneralSecurityException -> 0x0286 }
            goto L_0x00eb
        L_0x0286:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r7 = "CertPathReviewer.signatureNotVerified"
            r8 = 3
            java.lang.Object[] r8 = new java.lang.Object[r8]
            r13 = 0
            java.lang.String r14 = r1.getMessage()
            r8[r13] = r14
            r13 = 1
            r8[r13] = r1
            r13 = 2
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r8[r13] = r1
            r2.<init>(r4, r7, r8)
            r0 = r18
            r0.addError(r2, r9)
            goto L_0x00eb
        L_0x02af:
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.NoIssuerPublicKey"
            r1.<init>(r2, r4)
            org.bouncycastle.asn1.ASN1ObjectIdentifier r2 = org.bouncycastle.asn1.x509.X509Extensions.AuthorityKeyIdentifier
            java.lang.String r2 = r2.getId()
            byte[] r2 = r3.getExtensionValue(r2)
            if (r2 == 0) goto L_0x0312
            org.bouncycastle.asn1.ASN1Primitive r2 = org.bouncycastle.x509.extension.X509ExtensionUtil.fromExtensionValue(r2)     // Catch:{ IOException -> 0x0499 }
            org.bouncycastle.asn1.x509.AuthorityKeyIdentifier r2 = org.bouncycastle.asn1.x509.AuthorityKeyIdentifier.getInstance(r2)     // Catch:{ IOException -> 0x0499 }
            org.bouncycastle.asn1.x509.GeneralNames r4 = r2.getAuthorityCertIssuer()     // Catch:{ IOException -> 0x0499 }
            if (r4 == 0) goto L_0x0312
            org.bouncycastle.asn1.x509.GeneralName[] r4 = r4.getNames()     // Catch:{ IOException -> 0x0499 }
            r7 = 0
            r4 = r4[r7]     // Catch:{ IOException -> 0x0499 }
            java.math.BigInteger r2 = r2.getAuthorityCertSerialNumber()     // Catch:{ IOException -> 0x0499 }
            if (r2 == 0) goto L_0x0312
            r7 = 7
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch:{ IOException -> 0x0499 }
            r8 = 0
            org.bouncycastle.i18n.LocaleString r13 = new org.bouncycastle.i18n.LocaleString     // Catch:{ IOException -> 0x0499 }
            java.lang.String r14 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r15 = "missingIssuer"
            r13.<init>(r14, r15)     // Catch:{ IOException -> 0x0499 }
            r7[r8] = r13     // Catch:{ IOException -> 0x0499 }
            r8 = 1
            java.lang.String r13 = " \""
            r7[r8] = r13     // Catch:{ IOException -> 0x0499 }
            r8 = 2
            r7[r8] = r4     // Catch:{ IOException -> 0x0499 }
            r4 = 3
            java.lang.String r8 = "\" "
            r7[r4] = r8     // Catch:{ IOException -> 0x0499 }
            r4 = 4
            org.bouncycastle.i18n.LocaleString r8 = new org.bouncycastle.i18n.LocaleString     // Catch:{ IOException -> 0x0499 }
            java.lang.String r13 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r14 = "missingSerial"
            r8.<init>(r13, r14)     // Catch:{ IOException -> 0x0499 }
            r7[r4] = r8     // Catch:{ IOException -> 0x0499 }
            r4 = 5
            java.lang.String r8 = " "
            r7[r4] = r8     // Catch:{ IOException -> 0x0499 }
            r4 = 6
            r7[r4] = r2     // Catch:{ IOException -> 0x0499 }
            r1.setExtraArguments(r7)     // Catch:{ IOException -> 0x0499 }
        L_0x0312:
            r0 = r18
            r0.addError(r1, r9)
            goto L_0x00eb
        L_0x0319:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.certificateNotYetValid"
            r7 = 1
            java.lang.Object[] r7 = new java.lang.Object[r7]
            r8 = 0
            org.bouncycastle.i18n.filter.TrustedInput r13 = new org.bouncycastle.i18n.filter.TrustedInput
            java.util.Date r14 = r3.getNotBefore()
            r13.<init>(r14)
            r7[r8] = r13
            r1.<init>(r2, r4, r7)
            r0 = r18
            r0.addError(r1, r9)
            goto L_0x00f2
        L_0x0339:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.certificateExpired"
            r7 = 1
            java.lang.Object[] r7 = new java.lang.Object[r7]
            r8 = 0
            org.bouncycastle.i18n.filter.TrustedInput r13 = new org.bouncycastle.i18n.filter.TrustedInput
            java.util.Date r14 = r3.getNotAfter()
            r13.<init>(r14)
            r7[r8] = r13
            r1.<init>(r2, r4, r7)
            r0 = r18
            r0.addError(r1, r9)
            goto L_0x00f2
        L_0x0359:
            r2 = move-exception
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r7 = "CertPathReviewer.crlDistPtExtError"
            r2.<init>(r4, r7)
            r0 = r18
            r0.addError(r2, r9)
            goto L_0x0109
        L_0x036a:
            r4 = move-exception
            org.bouncycastle.i18n.ErrorBundle r4 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r7 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r8 = "CertPathReviewer.crlAuthInfoAccError"
            r4.<init>(r7, r8)
            r0 = r18
            r0.addError(r4, r9)
            goto L_0x0116
        L_0x037b:
            java.util.Iterator r1 = r8.iterator()
        L_0x037f:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x03a3
            org.bouncycastle.i18n.ErrorBundle r2 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r4 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r13 = "CertPathReviewer.ocspLocation"
            r14 = 1
            java.lang.Object[] r14 = new java.lang.Object[r14]
            r15 = 0
            org.bouncycastle.i18n.filter.UntrustedUrlInput r16 = new org.bouncycastle.i18n.filter.UntrustedUrlInput
            java.lang.Object r17 = r1.next()
            r16.<init>(r17)
            r14[r15] = r16
            r2.<init>(r4, r13, r14)
            r0 = r18
            r0.addNotification(r2, r9)
            goto L_0x037f
        L_0x03a3:
            r0 = r18
            java.security.cert.PKIXParameters r2 = r0.pkixParams     // Catch:{ CertPathReviewerException -> 0x0452 }
            r0 = r18
            java.util.Date r4 = r0.validDate     // Catch:{ CertPathReviewerException -> 0x0452 }
            r1 = r18
            r1.checkRevocation(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch:{ CertPathReviewerException -> 0x0452 }
        L_0x03b0:
            if (r10 == 0) goto L_0x03df
            javax.security.auth.x500.X500Principal r1 = r3.getIssuerX500Principal()
            boolean r1 = r1.equals(r10)
            if (r1 != 0) goto L_0x03df
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.certWrongIssuer"
            r5 = 2
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r7 = 0
            java.lang.String r8 = r10.getName()
            r5[r7] = r8
            r7 = 1
            javax.security.auth.x500.X500Principal r8 = r3.getIssuerX500Principal()
            java.lang.String r8 = r8.getName()
            r5[r7] = r8
            r1.<init>(r2, r4, r5)
            r0 = r18
            r0.addError(r1, r9)
        L_0x03df:
            r0 = r18
            int r1 = r0.n
            if (r12 == r1) goto L_0x0435
            if (r3 == 0) goto L_0x03fc
            int r1 = r3.getVersion()
            r2 = 1
            if (r1 != r2) goto L_0x03fc
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.noCACert"
            r1.<init>(r2, r4)
            r0 = r18
            r0.addError(r1, r9)
        L_0x03fc:
            java.lang.String r1 = BASIC_CONSTRAINTS     // Catch:{ AnnotatedException -> 0x046d }
            org.bouncycastle.asn1.ASN1Primitive r1 = getExtensionValue(r3, r1)     // Catch:{ AnnotatedException -> 0x046d }
            org.bouncycastle.asn1.x509.BasicConstraints r1 = org.bouncycastle.asn1.x509.BasicConstraints.getInstance(r1)     // Catch:{ AnnotatedException -> 0x046d }
            if (r1 == 0) goto L_0x045e
            boolean r1 = r1.isCA()     // Catch:{ AnnotatedException -> 0x046d }
            if (r1 != 0) goto L_0x041c
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ AnnotatedException -> 0x046d }
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.noCACert"
            r1.<init>(r2, r4)     // Catch:{ AnnotatedException -> 0x046d }
            r0 = r18
            r0.addError(r1, r9)     // Catch:{ AnnotatedException -> 0x046d }
        L_0x041c:
            boolean[] r1 = r3.getKeyUsage()
            if (r1 == 0) goto L_0x0435
            r2 = 5
            boolean r1 = r1[r2]
            if (r1 != 0) goto L_0x0435
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.noCertSign"
            r1.<init>(r2, r4)
            r0 = r18
            r0.addError(r1, r9)
        L_0x0435:
            javax.security.auth.x500.X500Principal r2 = r3.getSubjectX500Principal()
            r0 = r18
            java.util.List r1 = r0.certs     // Catch:{ CertPathValidatorException -> 0x047d }
            java.security.PublicKey r1 = getNextWorkingKey(r1, r9)     // Catch:{ CertPathValidatorException -> 0x047d }
            org.bouncycastle.asn1.x509.AlgorithmIdentifier r4 = getAlgorithmIdentifier(r1)     // Catch:{ CertPathValidatorException -> 0x0497 }
            r4.getAlgorithm()     // Catch:{ CertPathValidatorException -> 0x0497 }
            r4.getParameters()     // Catch:{ CertPathValidatorException -> 0x0497 }
        L_0x044b:
            int r9 = r9 + -1
            r5 = r3
            r10 = r2
            r6 = r1
            goto L_0x00cc
        L_0x0452:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r1 = r1.getErrorMessage()
            r0 = r18
            r0.addError(r1, r9)
            goto L_0x03b0
        L_0x045e:
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle     // Catch:{ AnnotatedException -> 0x046d }
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.noBasicConstraints"
            r1.<init>(r2, r4)     // Catch:{ AnnotatedException -> 0x046d }
            r0 = r18
            r0.addError(r1, r9)     // Catch:{ AnnotatedException -> 0x046d }
            goto L_0x041c
        L_0x046d:
            r1 = move-exception
            org.bouncycastle.i18n.ErrorBundle r1 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r2 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r4 = "CertPathReviewer.errorProcesingBC"
            r1.<init>(r2, r4)
            r0 = r18
            r0.addError(r1, r9)
            goto L_0x041c
        L_0x047d:
            r1 = move-exception
            r1 = r6
        L_0x047f:
            org.bouncycastle.i18n.ErrorBundle r4 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r5 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r6 = "CertPathReviewer.pubKeyError"
            r4.<init>(r5, r6)
            r0 = r18
            r0.addError(r4, r9)
            goto L_0x044b
        L_0x048e:
            r0 = r18
            r0.trustAnchor = r11
            r0 = r18
            r0.subjectPublicKey = r6
            return
        L_0x0497:
            r4 = move-exception
            goto L_0x047f
        L_0x0499:
            r2 = move-exception
            goto L_0x0312
        L_0x049c:
            r1 = move-exception
            r3 = r2
            goto L_0x01cd
        L_0x04a0:
            r1 = move-exception
            goto L_0x01bb
        L_0x04a3:
            r1 = move-exception
            goto L_0x007e
        L_0x04a6:
            r3 = r4
            goto L_0x00a7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkSignatures():void");
    }

    private X509CRL getCRL(String str) throws CertPathReviewerException {
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals(HttpHost.DEFAULT_SCHEME_NAME) && !url.getProtocol().equals("https")) {
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return (X509CRL) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i) {
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z = false;
            for (int i2 = 0; i2 < aSN1Sequence.size(); i2++) {
                QCStatement instance = QCStatement.getInstance(aSN1Sequence.getObjectAt(i2));
                if (QCStatement.id_etsi_qcs_QcCompliance.equals(instance.getStatementId())) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcEuCompliance"), i);
                } else if (!QCStatement.id_qcs_pkixQCSyntax_v1.equals(instance.getStatementId())) {
                    if (QCStatement.id_etsi_qcs_QcSSCD.equals(instance.getStatementId())) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcSSCD"), i);
                    } else if (QCStatement.id_etsi_qcs_LimiteValue.equals(instance.getStatementId())) {
                        MonetaryValue instance2 = MonetaryValue.getInstance(instance.getStatementInfo());
                        instance2.getCurrency();
                        double doubleValue = instance2.getAmount().doubleValue() * Math.pow(10.0d, instance2.getExponent().doubleValue());
                        addNotification(instance2.getCurrency().isAlphabetic() ? new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueAlpha", new Object[]{instance2.getCurrency().getAlphabetic(), new TrustedInput(new Double(doubleValue)), instance2}) : new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(instance2.getCurrency().getNumeric()), new TrustedInput(new Double(doubleValue)), instance2}), i);
                    } else {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcUnknownStatement", new Object[]{instance.getStatementId(), new UntrustedInput(instance)}), i);
                        z = true;
                    }
                }
            }
            return !z;
        } catch (AnnotatedException e) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcStatementExtError"), i);
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    /* access modifiers changed from: protected */
    public void addError(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i + 1].add(errorBundle);
    }

    /* access modifiers changed from: protected */
    public void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    /* access modifiers changed from: protected */
    public void addNotification(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i + 1].add(errorBundle);
    }

    /* access modifiers changed from: protected */
    public void checkCRLs(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, int i) throws CertPathReviewerException {
        Iterator it;
        X509CRL x509crl;
        boolean z;
        X509CRL x509crl2;
        boolean z2;
        boolean z3;
        String str;
        X509CRL crl;
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        try {
            x509CRLStoreSelector.addIssuerName(getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            x509CRLStoreSelector.setCertificateChecking(x509Certificate);
            try {
                Set findCRLs = CRL_UTIL.findCRLs(x509CRLStoreSelector, pKIXParameters);
                it = findCRLs.iterator();
                if (findCRLs.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (X509CRL issuerX500Principal : CRL_UTIL.findCRLs(new X509CRLStoreSelector(), pKIXParameters)) {
                        arrayList.add(issuerX500Principal.getIssuerX500Principal());
                    }
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlInCertstore", new Object[]{new UntrustedInput(x509CRLStoreSelector.getIssuerNames()), new UntrustedInput(arrayList), Integers.valueOf(arrayList.size())}), i);
                }
            } catch (AnnotatedException e) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError", new Object[]{e.getCause().getMessage(), e.getCause(), e.getCause().getClass().getName()}), i);
                it = new ArrayList().iterator();
            }
            X509CRL x509crl3 = null;
            while (true) {
                if (!it.hasNext()) {
                    x509crl = x509crl3;
                    z = false;
                    break;
                }
                x509crl3 = (X509CRL) it.next();
                if (x509crl3.getNextUpdate() == null || pKIXParameters.getDate().before(x509crl3.getNextUpdate())) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localValidCRL", new Object[]{new TrustedInput(x509crl3.getThisUpdate()), new TrustedInput(x509crl3.getNextUpdate())}), i);
                    x509crl = x509crl3;
                    z = true;
                } else {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localInvalidCRL", new Object[]{new TrustedInput(x509crl3.getThisUpdate()), new TrustedInput(x509crl3.getNextUpdate())}), i);
                }
            }
            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.localValidCRL", new Object[]{new TrustedInput(x509crl3.getThisUpdate()), new TrustedInput(x509crl3.getNextUpdate())}), i);
            x509crl = x509crl3;
            z = true;
            if (!z) {
                Iterator it2 = vector.iterator();
                boolean z4 = z;
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = z4;
                        x509crl2 = x509crl;
                        break;
                    }
                    try {
                        str = (String) it2.next();
                        crl = getCRL(str);
                        if (crl == null) {
                            continue;
                        } else if (!x509Certificate.getIssuerX500Principal().equals(crl.getIssuerX500Principal())) {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineCRLWrongCA", new Object[]{new UntrustedInput(crl.getIssuerX500Principal().getName()), new UntrustedInput(x509Certificate.getIssuerX500Principal().getName()), new UntrustedUrlInput(str)}), i);
                        } else if (crl.getNextUpdate() == null || this.pkixParams.getDate().before(crl.getNextUpdate())) {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineValidCRL", new Object[]{new TrustedInput(crl.getThisUpdate()), new TrustedInput(crl.getNextUpdate()), new UntrustedUrlInput(str)}), i);
                        } else {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineInvalidCRL", new Object[]{new TrustedInput(crl.getThisUpdate()), new TrustedInput(crl.getNextUpdate()), new UntrustedUrlInput(str)}), i);
                        }
                    } catch (CertPathReviewerException e2) {
                        CertPathReviewerException certPathReviewerException = e2;
                        boolean z5 = z4;
                        addNotification(certPathReviewerException.getErrorMessage(), i);
                        z4 = z5;
                    }
                }
                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.onlineValidCRL", new Object[]{new TrustedInput(crl.getThisUpdate()), new TrustedInput(crl.getNextUpdate()), new UntrustedUrlInput(str)}), i);
                X509CRL x509crl4 = crl;
                z2 = true;
                x509crl2 = x509crl4;
            } else {
                x509crl2 = x509crl;
                z2 = z;
            }
            if (x509crl2 != null) {
                if (x509Certificate2 != null) {
                    boolean[] keyUsage = x509Certificate2.getKeyUsage();
                    if (keyUsage != null && (keyUsage.length < 7 || !keyUsage[6])) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noCrlSigningPermited"));
                    }
                }
                if (publicKey != null) {
                    try {
                        x509crl2.verify(publicKey, BouncyCastleProvider.PROVIDER_NAME);
                        X509CRLEntry revokedCertificate = x509crl2.getRevokedCertificate(x509Certificate.getSerialNumber());
                        if (revokedCertificate != null) {
                            String str2 = null;
                            if (revokedCertificate.hasExtensions()) {
                                try {
                                    ASN1Enumerated instance = ASN1Enumerated.getInstance(getExtensionValue(revokedCertificate, X509Extensions.ReasonCode.getId()));
                                    if (instance != null) {
                                        str2 = crlReasons[instance.getValue().intValue()];
                                    }
                                } catch (AnnotatedException e3) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlReasonExtError"), e3);
                                }
                            }
                            if (str2 == null) {
                                str2 = crlReasons[7];
                            }
                            LocaleString localeString = new LocaleString(RESOURCE_NAME, str2);
                            if (!date.before(revokedCertificate.getRevocationDate())) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certRevoked", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}));
                            } else {
                                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.revokedAfterValidation", new Object[]{new TrustedInput(revokedCertificate.getRevocationDate()), localeString}), i);
                            }
                        } else {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notRevoked"), i);
                        }
                        if (x509crl2.getNextUpdate() != null && x509crl2.getNextUpdate().before(this.pkixParams.getDate())) {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlUpdateAvailable", new Object[]{new TrustedInput(x509crl2.getNextUpdate())}), i);
                        }
                        try {
                            ASN1Primitive extensionValue = getExtensionValue(x509crl2, ISSUING_DISTRIBUTION_POINT);
                            try {
                                ASN1Primitive extensionValue2 = getExtensionValue(x509crl2, DELTA_CRL_INDICATOR);
                                if (extensionValue2 != null) {
                                    X509CRLStoreSelector x509CRLStoreSelector2 = new X509CRLStoreSelector();
                                    try {
                                        x509CRLStoreSelector2.addIssuerName(getIssuerPrincipal(x509crl2).getEncoded());
                                        x509CRLStoreSelector2.setMinCRLNumber(((ASN1Integer) extensionValue2).getPositiveValue());
                                        try {
                                            x509CRLStoreSelector2.setMaxCRLNumber(((ASN1Integer) getExtensionValue(x509crl2, CRL_NUMBER)).getPositiveValue().subtract(BigInteger.valueOf(1)));
                                            try {
                                                Iterator it3 = CRL_UTIL.findCRLs(x509CRLStoreSelector2, pKIXParameters).iterator();
                                                while (true) {
                                                    if (!it3.hasNext()) {
                                                        z3 = false;
                                                        break;
                                                    }
                                                    try {
                                                        ASN1Primitive extensionValue3 = getExtensionValue((X509CRL) it3.next(), ISSUING_DISTRIBUTION_POINT);
                                                        if (extensionValue == null) {
                                                            if (extensionValue3 == null) {
                                                                z3 = true;
                                                                break;
                                                            }
                                                        } else if (extensionValue.equals(extensionValue3)) {
                                                            z3 = true;
                                                            break;
                                                        }
                                                    } catch (AnnotatedException e4) {
                                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"), e4);
                                                    }
                                                }
                                                if (!z3) {
                                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noBaseCRL"));
                                                }
                                            } catch (AnnotatedException e5) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlExtractionError"), e5);
                                            }
                                        } catch (AnnotatedException e6) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNbrExtError"), e6);
                                        }
                                    } catch (IOException e7) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e7);
                                    }
                                }
                                if (extensionValue != null) {
                                    IssuingDistributionPoint instance2 = IssuingDistributionPoint.getInstance(extensionValue);
                                    try {
                                        BasicConstraints instance3 = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
                                        if (instance2.onlyContainsUserCerts() && instance3 != null && instance3.isCA()) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyUserCert"));
                                        } else if (instance2.onlyContainsCACerts() && (instance3 == null || !instance3.isCA())) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyCaCert"));
                                        } else if (instance2.onlyContainsAttributeCerts()) {
                                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlOnlyAttrCert"));
                                        }
                                    } catch (AnnotatedException e8) {
                                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlBCExtError"), e8);
                                    }
                                }
                            } catch (AnnotatedException e9) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.deltaCrlExtError"));
                            }
                        } catch (AnnotatedException e10) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.distrPtExtError"));
                        }
                    } catch (Exception e11) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlVerifyFailed"), e11);
                    }
                } else {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlNoIssuerPublicKey"));
                }
            }
            if (!z2) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.noValidCrlFound"));
            }
        } catch (IOException e12) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.crlIssuerException"), e12);
        }
    }

    /* access modifiers changed from: protected */
    public void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) throws CertPathReviewerException {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    /* access modifiers changed from: protected */
    public void doChecks() {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        } else if (this.notifications == null) {
            this.notifications = new List[(this.n + 1)];
            this.errors = new List[(this.n + 1)];
            for (int i = 0; i < this.notifications.length; i++) {
                this.notifications[i] = new ArrayList();
                this.errors[i] = new ArrayList();
            }
            checkSignatures();
            checkNameConstraints();
            checkPathLength();
            checkPolicy();
            checkCriticalExtensions();
        }
    }

    /* access modifiers changed from: protected */
    public Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            DistributionPoint[] distributionPoints = cRLDistPoint.getDistributionPoints();
            for (DistributionPoint distributionPoint : distributionPoints) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i = 0; i < names.length; i++) {
                        if (names[i].getTagNo() == 6) {
                            vector.add(((DERIA5String) names[i].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.n;
    }

    public List getErrors(int i) {
        doChecks();
        return this.errors[i + 1];
    }

    public List[] getErrors() {
        doChecks();
        return this.errors;
    }

    public List getNotifications(int i) {
        doChecks();
        return this.notifications[i + 1];
    }

    public List[] getNotifications() {
        doChecks();
        return this.notifications;
    }

    /* access modifiers changed from: protected */
    public Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= accessDescriptions.length) {
                    break;
                }
                if (accessDescriptions[i2].getAccessMethod().equals(AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i2].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((DERIA5String) accessLocation.getName()).getString());
                    }
                }
                i = i2 + 1;
            }
        }
        return vector;
    }

    public PolicyNode getPolicyTree() {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() {
        doChecks();
        return this.trustAnchor;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.security.cert.TrustAnchor>, for r9v0, types: [java.util.Set<java.security.cert.TrustAnchor>, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.Collection getTrustAnchors(java.security.cert.X509Certificate r8, java.util.Set<java.security.cert.TrustAnchor> r9) throws org.bouncycastle.x509.CertPathReviewerException {
        /*
            r7 = this;
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r2 = r9.iterator()
            java.security.cert.X509CertSelector r3 = new java.security.cert.X509CertSelector
            r3.<init>()
            javax.security.auth.x500.X500Principal r0 = getEncodedIssuerPrincipal(r8)     // Catch:{ IOException -> 0x0070 }
            byte[] r0 = r0.getEncoded()     // Catch:{ IOException -> 0x0070 }
            r3.setSubject(r0)     // Catch:{ IOException -> 0x0070 }
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = org.bouncycastle.asn1.x509.X509Extensions.AuthorityKeyIdentifier     // Catch:{ IOException -> 0x0070 }
            java.lang.String r0 = r0.getId()     // Catch:{ IOException -> 0x0070 }
            byte[] r0 = r8.getExtensionValue(r0)     // Catch:{ IOException -> 0x0070 }
            if (r0 == 0) goto L_0x0050
            org.bouncycastle.asn1.ASN1Primitive r0 = org.bouncycastle.asn1.ASN1Primitive.fromByteArray(r0)     // Catch:{ IOException -> 0x0070 }
            org.bouncycastle.asn1.ASN1OctetString r0 = (org.bouncycastle.asn1.ASN1OctetString) r0     // Catch:{ IOException -> 0x0070 }
            byte[] r0 = r0.getOctets()     // Catch:{ IOException -> 0x0070 }
            org.bouncycastle.asn1.ASN1Primitive r0 = org.bouncycastle.asn1.ASN1Primitive.fromByteArray(r0)     // Catch:{ IOException -> 0x0070 }
            org.bouncycastle.asn1.x509.AuthorityKeyIdentifier r0 = org.bouncycastle.asn1.x509.AuthorityKeyIdentifier.getInstance(r0)     // Catch:{ IOException -> 0x0070 }
            java.math.BigInteger r4 = r0.getAuthorityCertSerialNumber()     // Catch:{ IOException -> 0x0070 }
            r3.setSerialNumber(r4)     // Catch:{ IOException -> 0x0070 }
            byte[] r0 = r0.getKeyIdentifier()     // Catch:{ IOException -> 0x0070 }
            if (r0 == 0) goto L_0x0050
            org.bouncycastle.asn1.DEROctetString r4 = new org.bouncycastle.asn1.DEROctetString     // Catch:{ IOException -> 0x0070 }
            r4.<init>(r0)     // Catch:{ IOException -> 0x0070 }
            byte[] r0 = r4.getEncoded()     // Catch:{ IOException -> 0x0070 }
            r3.setSubjectKeyIdentifier(r0)     // Catch:{ IOException -> 0x0070 }
        L_0x0050:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L_0x00a3
            java.lang.Object r0 = r2.next()
            java.security.cert.TrustAnchor r0 = (java.security.cert.TrustAnchor) r0
            java.security.cert.X509Certificate r4 = r0.getTrustedCert()
            if (r4 == 0) goto L_0x0080
            java.security.cert.X509Certificate r4 = r0.getTrustedCert()
            boolean r4 = r3.match(r4)
            if (r4 == 0) goto L_0x0050
            r1.add(r0)
            goto L_0x0050
        L_0x0070:
            r0 = move-exception
            org.bouncycastle.i18n.ErrorBundle r0 = new org.bouncycastle.i18n.ErrorBundle
            java.lang.String r1 = "org.bouncycastle.x509.CertPathReviewerMessages"
            java.lang.String r2 = "CertPathReviewer.trustAnchorIssuerError"
            r0.<init>(r1, r2)
            org.bouncycastle.x509.CertPathReviewerException r1 = new org.bouncycastle.x509.CertPathReviewerException
            r1.<init>(r0)
            throw r1
        L_0x0080:
            java.lang.String r4 = r0.getCAName()
            if (r4 == 0) goto L_0x0050
            java.security.PublicKey r4 = r0.getCAPublicKey()
            if (r4 == 0) goto L_0x0050
            javax.security.auth.x500.X500Principal r4 = getEncodedIssuerPrincipal(r8)
            javax.security.auth.x500.X500Principal r5 = new javax.security.auth.x500.X500Principal
            java.lang.String r6 = r0.getCAName()
            r5.<init>(r6)
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0050
            r1.add(r0)
            goto L_0x0050
        L_0x00a3:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.getTrustAnchors(java.security.cert.X509Certificate, java.util.Set):java.util.Collection");
    }

    public void init(CertPath certPath2, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        if (certPath2 == null) {
            throw new NullPointerException("certPath was null");
        }
        this.certPath = certPath2;
        this.certs = certPath2.getCertificates();
        this.n = this.certs.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
        }
        this.pkixParams = (PKIXParameters) pKIXParameters.clone();
        this.validDate = getValidDate(this.pkixParams);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public boolean isValidCertPath() {
        doChecks();
        for (List isEmpty : this.errors) {
            if (!isEmpty.isEmpty()) {
                return false;
            }
        }
        return true;
    }
}
