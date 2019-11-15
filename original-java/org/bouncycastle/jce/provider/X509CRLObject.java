package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.CRLNumber;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.TBSCertList.CRLEntry;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

public class X509CRLObject extends X509CRL {
    private CertificateList c;
    private int hashCodeValue;
    private boolean isHashCodeSet = false;
    private boolean isIndirect;
    private String sigAlgName;
    private byte[] sigAlgParams;

    public X509CRLObject(CertificateList certificateList) throws CRLException {
        this.c = certificateList;
        try {
            this.sigAlgName = X509SignatureUtil.getSignatureName(certificateList.getSignatureAlgorithm());
            if (certificateList.getSignatureAlgorithm().getParameters() != null) {
                this.sigAlgParams = certificateList.getSignatureAlgorithm().getParameters().toASN1Primitive().getEncoded(ASN1Encoding.DER);
            } else {
                this.sigAlgParams = null;
            }
            this.isIndirect = isIndirectCRL(this);
        } catch (Exception e) {
            throw new CRLException("CRL contents invalid: " + e);
        }
    }

    private void doVerify(PublicKey publicKey, Signature signature) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        if (!this.c.getSignatureAlgorithm().equals(this.c.getTBSCertList().getSignature())) {
            throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
        }
        signature.initVerify(publicKey);
        signature.update(getTBSCertList());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("CRL does not verify with supplied public key.");
        }
    }

    private Set getExtensionOIDs(boolean z) {
        if (getVersion() == 2) {
            Extensions extensions = this.c.getTBSCertList().getExtensions();
            if (extensions != null) {
                HashSet hashSet = new HashSet();
                Enumeration oids = extensions.oids();
                while (oids.hasMoreElements()) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) oids.nextElement();
                    if (z == extensions.getExtension(aSN1ObjectIdentifier).isCritical()) {
                        hashSet.add(aSN1ObjectIdentifier.getId());
                    }
                }
                return hashSet;
            }
        }
        return null;
    }

    public static boolean isIndirectCRL(X509CRL x509crl) throws CRLException {
        try {
            byte[] extensionValue = x509crl.getExtensionValue(Extension.issuingDistributionPoint.getId());
            return extensionValue != null && IssuingDistributionPoint.getInstance(ASN1OctetString.getInstance(extensionValue).getOctets()).isIndirectCRL();
        } catch (Exception e) {
            throw new ExtCRLException("Exception reading IssuingDistributionPoint", e);
        }
    }

    private Set loadCRLEntries() {
        X500Name x500Name;
        HashSet hashSet = new HashSet();
        Enumeration revokedCertificateEnumeration = this.c.getRevokedCertificateEnumeration();
        X500Name x500Name2 = null;
        while (revokedCertificateEnumeration.hasMoreElements()) {
            CRLEntry cRLEntry = (CRLEntry) revokedCertificateEnumeration.nextElement();
            hashSet.add(new X509CRLEntryObject(cRLEntry, this.isIndirect, x500Name2));
            if (this.isIndirect && cRLEntry.hasExtensions()) {
                Extension extension = cRLEntry.getExtensions().getExtension(Extension.certificateIssuer);
                if (extension != null) {
                    x500Name = X500Name.getInstance(GeneralNames.getInstance(extension.getParsedValue()).getNames()[0].getName());
                    x500Name2 = x500Name;
                }
            }
            x500Name = x500Name2;
            x500Name2 = x500Name;
        }
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X509CRL)) {
            return false;
        }
        if (!(obj instanceof X509CRLObject)) {
            return super.equals(obj);
        }
        X509CRLObject x509CRLObject = (X509CRLObject) obj;
        if (!this.isHashCodeSet || !x509CRLObject.isHashCodeSet || x509CRLObject.hashCodeValue == this.hashCodeValue) {
            return this.c.equals(x509CRLObject.c);
        }
        return false;
    }

    public Set getCriticalExtensionOIDs() {
        return getExtensionOIDs(true);
    }

    public byte[] getEncoded() throws CRLException {
        try {
            return this.c.getEncoded(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    public byte[] getExtensionValue(String str) {
        Extensions extensions = this.c.getTBSCertList().getExtensions();
        if (extensions != null) {
            Extension extension = extensions.getExtension(new ASN1ObjectIdentifier(str));
            if (extension != null) {
                try {
                    return extension.getExtnValue().getEncoded();
                } catch (Exception e) {
                    throw new IllegalStateException("error parsing " + e.toString());
                }
            }
        }
        return null;
    }

    public Principal getIssuerDN() {
        return new X509Principal(X500Name.getInstance(this.c.getIssuer().toASN1Primitive()));
    }

    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.c.getIssuer().getEncoded());
        } catch (IOException e) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    public Date getNextUpdate() {
        if (this.c.getNextUpdate() != null) {
            return this.c.getNextUpdate().getDate();
        }
        return null;
    }

    public Set getNonCriticalExtensionOIDs() {
        return getExtensionOIDs(false);
    }

    public X509CRLEntry getRevokedCertificate(BigInteger bigInteger) {
        X500Name x500Name;
        Enumeration revokedCertificateEnumeration = this.c.getRevokedCertificateEnumeration();
        X500Name x500Name2 = null;
        while (revokedCertificateEnumeration.hasMoreElements()) {
            CRLEntry cRLEntry = (CRLEntry) revokedCertificateEnumeration.nextElement();
            if (bigInteger.equals(cRLEntry.getUserCertificate().getValue())) {
                return new X509CRLEntryObject(cRLEntry, this.isIndirect, x500Name2);
            }
            if (this.isIndirect && cRLEntry.hasExtensions()) {
                Extension extension = cRLEntry.getExtensions().getExtension(Extension.certificateIssuer);
                if (extension != null) {
                    x500Name = X500Name.getInstance(GeneralNames.getInstance(extension.getParsedValue()).getNames()[0].getName());
                    x500Name2 = x500Name;
                }
            }
            x500Name = x500Name2;
            x500Name2 = x500Name;
        }
        return null;
    }

    public Set getRevokedCertificates() {
        Set loadCRLEntries = loadCRLEntries();
        if (!loadCRLEntries.isEmpty()) {
            return Collections.unmodifiableSet(loadCRLEntries);
        }
        return null;
    }

    public String getSigAlgName() {
        return this.sigAlgName;
    }

    public String getSigAlgOID() {
        return this.c.getSignatureAlgorithm().getAlgorithm().getId();
    }

    public byte[] getSigAlgParams() {
        if (this.sigAlgParams == null) {
            return null;
        }
        byte[] bArr = new byte[this.sigAlgParams.length];
        System.arraycopy(this.sigAlgParams, 0, bArr, 0, bArr.length);
        return bArr;
    }

    public byte[] getSignature() {
        return this.c.getSignature().getOctets();
    }

    public byte[] getTBSCertList() throws CRLException {
        try {
            return this.c.getTBSCertList().getEncoded(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    public Date getThisUpdate() {
        return this.c.getThisUpdate().getDate();
    }

    public int getVersion() {
        return this.c.getVersionNumber();
    }

    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        criticalExtensionOIDs.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
        criticalExtensionOIDs.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
        return !criticalExtensionOIDs.isEmpty();
    }

    public int hashCode() {
        if (!this.isHashCodeSet) {
            this.isHashCodeSet = true;
            this.hashCodeValue = super.hashCode();
        }
        return this.hashCodeValue;
    }

    public boolean isRevoked(Certificate certificate) {
        X500Name issuer;
        if (!certificate.getType().equals("X.509")) {
            throw new RuntimeException("X.509 CRL used with non X.509 Cert");
        }
        Enumeration revokedCertificateEnumeration = this.c.getRevokedCertificateEnumeration();
        X500Name issuer2 = this.c.getIssuer();
        if (revokedCertificateEnumeration != null) {
            BigInteger serialNumber = ((X509Certificate) certificate).getSerialNumber();
            X500Name x500Name = issuer2;
            while (revokedCertificateEnumeration.hasMoreElements()) {
                CRLEntry instance = CRLEntry.getInstance(revokedCertificateEnumeration.nextElement());
                if (this.isIndirect && instance.hasExtensions()) {
                    Extension extension = instance.getExtensions().getExtension(Extension.certificateIssuer);
                    if (extension != null) {
                        x500Name = X500Name.getInstance(GeneralNames.getInstance(extension.getParsedValue()).getNames()[0].getName());
                    }
                }
                if (instance.getUserCertificate().getValue().equals(serialNumber)) {
                    if (certificate instanceof X509Certificate) {
                        issuer = X500Name.getInstance(((X509Certificate) certificate).getIssuerX500Principal().getEncoded());
                    } else {
                        try {
                            issuer = org.bouncycastle.asn1.x509.Certificate.getInstance(certificate.getEncoded()).getIssuer();
                        } catch (CertificateEncodingException e) {
                            throw new RuntimeException("Cannot process certificate");
                        }
                    }
                    return x500Name.equals(issuer);
                }
            }
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        stringBuffer.append("              Version: ").append(getVersion()).append(lineSeparator);
        stringBuffer.append("             IssuerDN: ").append(getIssuerDN()).append(lineSeparator);
        stringBuffer.append("          This update: ").append(getThisUpdate()).append(lineSeparator);
        stringBuffer.append("          Next update: ").append(getNextUpdate()).append(lineSeparator);
        stringBuffer.append("  Signature Algorithm: ").append(getSigAlgName()).append(lineSeparator);
        byte[] signature = getSignature();
        stringBuffer.append("            Signature: ").append(new String(Hex.encode(signature, 0, 20))).append(lineSeparator);
        for (int i = 20; i < signature.length; i += 20) {
            if (i < signature.length - 20) {
                stringBuffer.append("                       ").append(new String(Hex.encode(signature, i, 20))).append(lineSeparator);
            } else {
                stringBuffer.append("                       ").append(new String(Hex.encode(signature, i, signature.length - i))).append(lineSeparator);
            }
        }
        Extensions extensions = this.c.getTBSCertList().getExtensions();
        if (extensions != null) {
            Enumeration oids = extensions.oids();
            if (oids.hasMoreElements()) {
                stringBuffer.append("           Extensions: ").append(lineSeparator);
            }
            while (oids.hasMoreElements()) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) oids.nextElement();
                Extension extension = extensions.getExtension(aSN1ObjectIdentifier);
                if (extension.getExtnValue() != null) {
                    ASN1InputStream aSN1InputStream = new ASN1InputStream(extension.getExtnValue().getOctets());
                    stringBuffer.append("                       critical(").append(extension.isCritical()).append(") ");
                    try {
                        if (aSN1ObjectIdentifier.equals(Extension.cRLNumber)) {
                            stringBuffer.append(new CRLNumber(ASN1Integer.getInstance(aSN1InputStream.readObject()).getPositiveValue())).append(lineSeparator);
                        } else if (aSN1ObjectIdentifier.equals(Extension.deltaCRLIndicator)) {
                            stringBuffer.append("Base CRL: " + new CRLNumber(ASN1Integer.getInstance(aSN1InputStream.readObject()).getPositiveValue())).append(lineSeparator);
                        } else if (aSN1ObjectIdentifier.equals(Extension.issuingDistributionPoint)) {
                            stringBuffer.append(IssuingDistributionPoint.getInstance(aSN1InputStream.readObject())).append(lineSeparator);
                        } else if (aSN1ObjectIdentifier.equals(Extension.cRLDistributionPoints)) {
                            stringBuffer.append(CRLDistPoint.getInstance(aSN1InputStream.readObject())).append(lineSeparator);
                        } else if (aSN1ObjectIdentifier.equals(Extension.freshestCRL)) {
                            stringBuffer.append(CRLDistPoint.getInstance(aSN1InputStream.readObject())).append(lineSeparator);
                        } else {
                            stringBuffer.append(aSN1ObjectIdentifier.getId());
                            stringBuffer.append(" value = ").append(ASN1Dump.dumpAsString(aSN1InputStream.readObject())).append(lineSeparator);
                        }
                    } catch (Exception e) {
                        stringBuffer.append(aSN1ObjectIdentifier.getId());
                        stringBuffer.append(" value = ").append("*****").append(lineSeparator);
                    }
                } else {
                    stringBuffer.append(lineSeparator);
                }
            }
        }
        Set<Object> revokedCertificates = getRevokedCertificates();
        if (revokedCertificates != null) {
            for (Object append : revokedCertificates) {
                stringBuffer.append(append);
                stringBuffer.append(lineSeparator);
            }
        }
        return stringBuffer.toString();
    }

    public void verify(PublicKey publicKey) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        Signature instance;
        try {
            instance = Signature.getInstance(getSigAlgName(), BouncyCastleProvider.PROVIDER_NAME);
        } catch (Exception e) {
            instance = Signature.getInstance(getSigAlgName());
        }
        doVerify(publicKey, instance);
    }

    public void verify(PublicKey publicKey, String str) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        doVerify(publicKey, str != null ? Signature.getInstance(getSigAlgName(), str) : Signature.getInstance(getSigAlgName()));
    }

    public void verify(PublicKey publicKey, Provider provider) throws CRLException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        doVerify(publicKey, provider != null ? Signature.getInstance(getSigAlgName(), provider) : Signature.getInstance(getSigAlgName()));
    }
}
