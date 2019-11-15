package org.bouncycastle.jcajce.provider.keystore.pkcs12;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore.LoadStoreParameter;
import java.security.KeyStore.PasswordProtection;
import java.security.KeyStore.ProtectionParameter;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.BEROctetString;
import org.bouncycastle.asn1.BEROutputStream;
import org.bouncycastle.asn1.DERBMPString;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DEROutputStream;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.cryptopro.GOST28147Parameters;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.ntt.NTTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.AuthenticatedSafe;
import org.bouncycastle.asn1.pkcs.CertBag;
import org.bouncycastle.asn1.pkcs.ContentInfo;
import org.bouncycastle.asn1.pkcs.EncryptedData;
import org.bouncycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.MacData;
import org.bouncycastle.asn1.pkcs.PBES2Parameters;
import org.bouncycastle.asn1.pkcs.PBKDF2Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Pfx;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.SafeBag;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
import org.bouncycastle.asn1.x509.DigestInfo;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.SubjectKeyIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.jcajce.PKCS12Key;
import org.bouncycastle.jcajce.PKCS12StoreParameter;
import org.bouncycastle.jcajce.spec.GOST28147ParameterSpec;
import org.bouncycastle.jcajce.spec.PBKDF2KeySpec;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.BCKeyStore;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JDKPKCS12StoreParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

public class PKCS12KeyStoreSpi extends KeyStoreSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers, BCKeyStore {
    static final int CERTIFICATE = 1;
    static final int KEY = 2;
    static final int KEY_PRIVATE = 0;
    static final int KEY_PUBLIC = 1;
    static final int KEY_SECRET = 2;
    private static final int MIN_ITERATIONS = 1024;
    static final int NULL = 0;
    private static final int SALT_SIZE = 20;
    static final int SEALED = 4;
    static final int SECRET = 3;
    private static final DefaultSecretKeyProvider keySizeProvider = new DefaultSecretKeyProvider();
    private ASN1ObjectIdentifier certAlgorithm;
    private CertificateFactory certFact;
    private IgnoresCaseHashtable certs = new IgnoresCaseHashtable();
    private Hashtable chainCerts = new Hashtable();
    private final JcaJceHelper helper = new BCJcaJceHelper();
    private ASN1ObjectIdentifier keyAlgorithm;
    private Hashtable keyCerts = new Hashtable();
    private IgnoresCaseHashtable keys = new IgnoresCaseHashtable();
    private Hashtable localIds = new Hashtable();
    protected SecureRandom random = new SecureRandom();

    public static class BCPKCS12KeyStore extends PKCS12KeyStoreSpi {
        public BCPKCS12KeyStore() {
            super(new BouncyCastleProvider(), pbeWithSHAAnd3_KeyTripleDES_CBC, pbeWithSHAAnd40BitRC2_CBC);
        }
    }

    public static class BCPKCS12KeyStore3DES extends PKCS12KeyStoreSpi {
        public BCPKCS12KeyStore3DES() {
            super(new BouncyCastleProvider(), pbeWithSHAAnd3_KeyTripleDES_CBC, pbeWithSHAAnd3_KeyTripleDES_CBC);
        }
    }

    private class CertId {
        byte[] id;

        CertId(PublicKey publicKey) {
            this.id = PKCS12KeyStoreSpi.this.createSubjectKeyId(publicKey).getKeyIdentifier();
        }

        CertId(byte[] bArr) {
            this.id = bArr;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CertId)) {
                return false;
            }
            return Arrays.areEqual(this.id, ((CertId) obj).id);
        }

        public int hashCode() {
            return Arrays.hashCode(this.id);
        }
    }

    public static class DefPKCS12KeyStore extends PKCS12KeyStoreSpi {
        public DefPKCS12KeyStore() {
            super(null, pbeWithSHAAnd3_KeyTripleDES_CBC, pbeWithSHAAnd40BitRC2_CBC);
        }
    }

    public static class DefPKCS12KeyStore3DES extends PKCS12KeyStoreSpi {
        public DefPKCS12KeyStore3DES() {
            super(null, pbeWithSHAAnd3_KeyTripleDES_CBC, pbeWithSHAAnd3_KeyTripleDES_CBC);
        }
    }

    private static class DefaultSecretKeyProvider {
        private final Map KEY_SIZES;

        DefaultSecretKeyProvider() {
            HashMap hashMap = new HashMap();
            hashMap.put(new ASN1ObjectIdentifier("1.2.840.113533.7.66.10"), Integers.valueOf(128));
            hashMap.put(PKCSObjectIdentifiers.des_EDE3_CBC, Integers.valueOf(192));
            hashMap.put(NISTObjectIdentifiers.id_aes128_CBC, Integers.valueOf(128));
            hashMap.put(NISTObjectIdentifiers.id_aes192_CBC, Integers.valueOf(192));
            hashMap.put(NISTObjectIdentifiers.id_aes256_CBC, Integers.valueOf(256));
            hashMap.put(NTTObjectIdentifiers.id_camellia128_cbc, Integers.valueOf(128));
            hashMap.put(NTTObjectIdentifiers.id_camellia192_cbc, Integers.valueOf(192));
            hashMap.put(NTTObjectIdentifiers.id_camellia256_cbc, Integers.valueOf(256));
            hashMap.put(CryptoProObjectIdentifiers.gostR28147_gcfb, Integers.valueOf(256));
            this.KEY_SIZES = Collections.unmodifiableMap(hashMap);
        }

        public int getKeySize(AlgorithmIdentifier algorithmIdentifier) {
            Integer num = (Integer) this.KEY_SIZES.get(algorithmIdentifier.getAlgorithm());
            if (num != null) {
                return num.intValue();
            }
            return -1;
        }
    }

    private static class IgnoresCaseHashtable {
        private Hashtable keys;
        private Hashtable orig;

        private IgnoresCaseHashtable() {
            this.orig = new Hashtable();
            this.keys = new Hashtable();
        }

        public Enumeration elements() {
            return this.orig.elements();
        }

        public Object get(String str) {
            String str2 = (String) this.keys.get(str == null ? null : Strings.toLowerCase(str));
            if (str2 == null) {
                return null;
            }
            return this.orig.get(str2);
        }

        public Enumeration keys() {
            return this.orig.keys();
        }

        public void put(String str, Object obj) {
            String lowerCase = str == null ? null : Strings.toLowerCase(str);
            String str2 = (String) this.keys.get(lowerCase);
            if (str2 != null) {
                this.orig.remove(str2);
            }
            this.keys.put(lowerCase, str);
            this.orig.put(str, obj);
        }

        public Object remove(String str) {
            String str2 = (String) this.keys.remove(str == null ? null : Strings.toLowerCase(str));
            if (str2 == null) {
                return null;
            }
            return this.orig.remove(str2);
        }
    }

    public PKCS12KeyStoreSpi(Provider provider, ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1ObjectIdentifier aSN1ObjectIdentifier2) {
        this.keyAlgorithm = aSN1ObjectIdentifier;
        this.certAlgorithm = aSN1ObjectIdentifier2;
        if (provider != null) {
            try {
                this.certFact = CertificateFactory.getInstance("X.509", provider);
            } catch (Exception e) {
                throw new IllegalArgumentException("can't create cert factory - " + e.toString());
            }
        } else {
            this.certFact = CertificateFactory.getInstance("X.509");
        }
    }

    private byte[] calculatePbeMac(ASN1ObjectIdentifier aSN1ObjectIdentifier, byte[] bArr, int i, char[] cArr, boolean z, byte[] bArr2) throws Exception {
        PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i);
        Mac createMac = this.helper.createMac(aSN1ObjectIdentifier.getId());
        createMac.init(new PKCS12Key(cArr, z), pBEParameterSpec);
        createMac.update(bArr2);
        return createMac.doFinal();
    }

    private Cipher createCipher(int i, char[] cArr, AlgorithmIdentifier algorithmIdentifier) throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, NoSuchProviderException {
        SecretKey generateSecret;
        PBES2Parameters instance = PBES2Parameters.getInstance(algorithmIdentifier.getParameters());
        PBKDF2Params instance2 = PBKDF2Params.getInstance(instance.getKeyDerivationFunc().getParameters());
        AlgorithmIdentifier instance3 = AlgorithmIdentifier.getInstance(instance.getEncryptionScheme());
        SecretKeyFactory createSecretKeyFactory = this.helper.createSecretKeyFactory(instance.getKeyDerivationFunc().getAlgorithm().getId());
        if (instance2.isDefaultPrf()) {
            generateSecret = createSecretKeyFactory.generateSecret(new PBEKeySpec(cArr, instance2.getSalt(), instance2.getIterationCount().intValue(), keySizeProvider.getKeySize(instance3)));
        } else {
            generateSecret = createSecretKeyFactory.generateSecret(new PBKDF2KeySpec(cArr, instance2.getSalt(), instance2.getIterationCount().intValue(), keySizeProvider.getKeySize(instance3), instance2.getPrf()));
        }
        Cipher instance4 = Cipher.getInstance(instance.getEncryptionScheme().getAlgorithm().getId());
        AlgorithmIdentifier.getInstance(instance.getEncryptionScheme());
        ASN1Encodable parameters = instance.getEncryptionScheme().getParameters();
        if (parameters instanceof ASN1OctetString) {
            instance4.init(i, generateSecret, new IvParameterSpec(ASN1OctetString.getInstance(parameters).getOctets()));
        } else {
            GOST28147Parameters instance5 = GOST28147Parameters.getInstance(parameters);
            instance4.init(i, generateSecret, new GOST28147ParameterSpec(instance5.getEncryptionParamSet(), instance5.getIV()));
        }
        return instance4;
    }

    /* access modifiers changed from: private */
    public SubjectKeyIdentifier createSubjectKeyId(PublicKey publicKey) {
        try {
            return new SubjectKeyIdentifier(getDigest(SubjectPublicKeyInfo.getInstance(publicKey.getEncoded())));
        } catch (Exception e) {
            throw new RuntimeException("error creating key");
        }
    }

    private void doStore(OutputStream outputStream, char[] cArr, boolean z) throws IOException {
        boolean z2;
        boolean z3;
        if (cArr == null) {
            throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        Enumeration keys2 = this.keys.keys();
        while (keys2.hasMoreElements()) {
            byte[] bArr = new byte[20];
            this.random.nextBytes(bArr);
            String str = (String) keys2.nextElement();
            PrivateKey privateKey = (PrivateKey) this.keys.get(str);
            PKCS12PBEParams pKCS12PBEParams = new PKCS12PBEParams(bArr, 1024);
            EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(new AlgorithmIdentifier(this.keyAlgorithm, pKCS12PBEParams.toASN1Primitive()), wrapKey(this.keyAlgorithm.getId(), privateKey, pKCS12PBEParams, cArr));
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            if (privateKey instanceof PKCS12BagAttributeCarrier) {
                PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) privateKey;
                DERBMPString dERBMPString = (DERBMPString) pKCS12BagAttributeCarrier.getBagAttribute(pkcs_9_at_friendlyName);
                if (dERBMPString == null || !dERBMPString.getString().equals(str)) {
                    pKCS12BagAttributeCarrier.setBagAttribute(pkcs_9_at_friendlyName, new DERBMPString(str));
                }
                if (pKCS12BagAttributeCarrier.getBagAttribute(pkcs_9_at_localKeyId) == null) {
                    pKCS12BagAttributeCarrier.setBagAttribute(pkcs_9_at_localKeyId, createSubjectKeyId(engineGetCertificate(str).getPublicKey()));
                }
                Enumeration bagAttributeKeys = pKCS12BagAttributeCarrier.getBagAttributeKeys();
                z3 = false;
                while (bagAttributeKeys.hasMoreElements()) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) bagAttributeKeys.nextElement();
                    ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
                    aSN1EncodableVector3.add(aSN1ObjectIdentifier);
                    aSN1EncodableVector3.add(new DERSet(pKCS12BagAttributeCarrier.getBagAttribute(aSN1ObjectIdentifier)));
                    z3 = true;
                    aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector3));
                }
            } else {
                z3 = false;
            }
            if (!z3) {
                ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
                Certificate engineGetCertificate = engineGetCertificate(str);
                aSN1EncodableVector4.add(pkcs_9_at_localKeyId);
                aSN1EncodableVector4.add(new DERSet((ASN1Encodable) createSubjectKeyId(engineGetCertificate.getPublicKey())));
                aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector4));
                ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
                aSN1EncodableVector5.add(pkcs_9_at_friendlyName);
                aSN1EncodableVector5.add(new DERSet((ASN1Encodable) new DERBMPString(str)));
                aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector5));
            }
            aSN1EncodableVector.add(new SafeBag(pkcs8ShroudedKeyBag, encryptedPrivateKeyInfo.toASN1Primitive(), new DERSet(aSN1EncodableVector2)));
        }
        BEROctetString bEROctetString = new BEROctetString(new DERSequence(aSN1EncodableVector).getEncoded(ASN1Encoding.DER));
        byte[] bArr2 = new byte[20];
        this.random.nextBytes(bArr2);
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        AlgorithmIdentifier algorithmIdentifier = new AlgorithmIdentifier(this.certAlgorithm, new PKCS12PBEParams(bArr2, 1024).toASN1Primitive());
        Hashtable hashtable = new Hashtable();
        Enumeration keys3 = this.keys.keys();
        while (keys3.hasMoreElements()) {
            try {
                String str2 = (String) keys3.nextElement();
                Certificate engineGetCertificate2 = engineGetCertificate(str2);
                CertBag certBag = new CertBag(x509Certificate, new DEROctetString(engineGetCertificate2.getEncoded()));
                ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
                if (engineGetCertificate2 instanceof PKCS12BagAttributeCarrier) {
                    PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) engineGetCertificate2;
                    DERBMPString dERBMPString2 = (DERBMPString) pKCS12BagAttributeCarrier2.getBagAttribute(pkcs_9_at_friendlyName);
                    if (dERBMPString2 == null || !dERBMPString2.getString().equals(str2)) {
                        pKCS12BagAttributeCarrier2.setBagAttribute(pkcs_9_at_friendlyName, new DERBMPString(str2));
                    }
                    if (pKCS12BagAttributeCarrier2.getBagAttribute(pkcs_9_at_localKeyId) == null) {
                        pKCS12BagAttributeCarrier2.setBagAttribute(pkcs_9_at_localKeyId, createSubjectKeyId(engineGetCertificate2.getPublicKey()));
                    }
                    Enumeration bagAttributeKeys2 = pKCS12BagAttributeCarrier2.getBagAttributeKeys();
                    boolean z4 = false;
                    while (bagAttributeKeys2.hasMoreElements()) {
                        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) bagAttributeKeys2.nextElement();
                        ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
                        aSN1EncodableVector8.add(aSN1ObjectIdentifier2);
                        aSN1EncodableVector8.add(new DERSet(pKCS12BagAttributeCarrier2.getBagAttribute(aSN1ObjectIdentifier2)));
                        aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector8));
                        z4 = true;
                    }
                    z2 = z4;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
                    aSN1EncodableVector9.add(pkcs_9_at_localKeyId);
                    aSN1EncodableVector9.add(new DERSet((ASN1Encodable) createSubjectKeyId(engineGetCertificate2.getPublicKey())));
                    aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector9));
                    ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
                    aSN1EncodableVector10.add(pkcs_9_at_friendlyName);
                    aSN1EncodableVector10.add(new DERSet((ASN1Encodable) new DERBMPString(str2)));
                    aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector10));
                }
                aSN1EncodableVector6.add(new SafeBag(certBag, certBag.toASN1Primitive(), new DERSet(aSN1EncodableVector7)));
                hashtable.put(engineGetCertificate2, engineGetCertificate2);
            } catch (CertificateEncodingException e) {
                throw new IOException("Error encoding certificate: " + e.toString());
            }
        }
        Enumeration keys4 = this.certs.keys();
        while (keys4.hasMoreElements()) {
            try {
                String str3 = (String) keys4.nextElement();
                Certificate certificate = (Certificate) this.certs.get(str3);
                boolean z5 = false;
                if (this.keys.get(str3) == null) {
                    CertBag certBag2 = new CertBag(x509Certificate, new DEROctetString(certificate.getEncoded()));
                    ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
                    if (certificate instanceof PKCS12BagAttributeCarrier) {
                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) certificate;
                        DERBMPString dERBMPString3 = (DERBMPString) pKCS12BagAttributeCarrier3.getBagAttribute(pkcs_9_at_friendlyName);
                        if (dERBMPString3 == null || !dERBMPString3.getString().equals(str3)) {
                            pKCS12BagAttributeCarrier3.setBagAttribute(pkcs_9_at_friendlyName, new DERBMPString(str3));
                        }
                        Enumeration bagAttributeKeys3 = pKCS12BagAttributeCarrier3.getBagAttributeKeys();
                        while (bagAttributeKeys3.hasMoreElements()) {
                            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = (ASN1ObjectIdentifier) bagAttributeKeys3.nextElement();
                            if (!aSN1ObjectIdentifier3.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                ASN1EncodableVector aSN1EncodableVector12 = new ASN1EncodableVector();
                                aSN1EncodableVector12.add(aSN1ObjectIdentifier3);
                                aSN1EncodableVector12.add(new DERSet(pKCS12BagAttributeCarrier3.getBagAttribute(aSN1ObjectIdentifier3)));
                                aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector12));
                                z5 = true;
                            }
                        }
                    }
                    if (!z5) {
                        ASN1EncodableVector aSN1EncodableVector13 = new ASN1EncodableVector();
                        aSN1EncodableVector13.add(pkcs_9_at_friendlyName);
                        aSN1EncodableVector13.add(new DERSet((ASN1Encodable) new DERBMPString(str3)));
                        aSN1EncodableVector11.add(new DERSequence(aSN1EncodableVector13));
                    }
                    aSN1EncodableVector6.add(new SafeBag(certBag, certBag2.toASN1Primitive(), new DERSet(aSN1EncodableVector11)));
                    hashtable.put(certificate, certificate);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException("Error encoding certificate: " + e2.toString());
            }
        }
        Set usedCertificateSet = getUsedCertificateSet();
        Enumeration keys5 = this.chainCerts.keys();
        while (keys5.hasMoreElements()) {
            try {
                Certificate certificate2 = (Certificate) this.chainCerts.get((CertId) keys5.nextElement());
                if (usedCertificateSet.contains(certificate2) && hashtable.get(certificate2) == null) {
                    CertBag certBag3 = new CertBag(x509Certificate, new DEROctetString(certificate2.getEncoded()));
                    ASN1EncodableVector aSN1EncodableVector14 = new ASN1EncodableVector();
                    if (certificate2 instanceof PKCS12BagAttributeCarrier) {
                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier4 = (PKCS12BagAttributeCarrier) certificate2;
                        Enumeration bagAttributeKeys4 = pKCS12BagAttributeCarrier4.getBagAttributeKeys();
                        while (bagAttributeKeys4.hasMoreElements()) {
                            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = (ASN1ObjectIdentifier) bagAttributeKeys4.nextElement();
                            if (!aSN1ObjectIdentifier4.equals(PKCSObjectIdentifiers.pkcs_9_at_localKeyId)) {
                                ASN1EncodableVector aSN1EncodableVector15 = new ASN1EncodableVector();
                                aSN1EncodableVector15.add(aSN1ObjectIdentifier4);
                                aSN1EncodableVector15.add(new DERSet(pKCS12BagAttributeCarrier4.getBagAttribute(aSN1ObjectIdentifier4)));
                                aSN1EncodableVector14.add(new DERSequence(aSN1EncodableVector15));
                            }
                        }
                    }
                    aSN1EncodableVector6.add(new SafeBag(certBag, certBag3.toASN1Primitive(), new DERSet(aSN1EncodableVector14)));
                }
            } catch (CertificateEncodingException e3) {
                throw new IOException("Error encoding certificate: " + e3.toString());
            }
        }
        AuthenticatedSafe authenticatedSafe = new AuthenticatedSafe(new ContentInfo[]{new ContentInfo(data, bEROctetString), new ContentInfo(encryptedData, new EncryptedData(data, algorithmIdentifier, new BEROctetString(cryptData(true, algorithmIdentifier, cArr, false, new DERSequence(aSN1EncodableVector6).getEncoded(ASN1Encoding.DER)))).toASN1Primitive())});
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        (z ? new DEROutputStream(byteArrayOutputStream) : new BEROutputStream(byteArrayOutputStream)).writeObject(authenticatedSafe);
        ContentInfo contentInfo = new ContentInfo(data, new BEROctetString(byteArrayOutputStream.toByteArray()));
        byte[] bArr3 = new byte[20];
        this.random.nextBytes(bArr3);
        try {
            (z ? new DEROutputStream(outputStream) : new BEROutputStream(outputStream)).writeObject(new Pfx(contentInfo, new MacData(new DigestInfo(new AlgorithmIdentifier(id_SHA1, DERNull.INSTANCE), calculatePbeMac(id_SHA1, bArr3, 1024, cArr, false, ((ASN1OctetString) contentInfo.getContent()).getOctets())), bArr3, 1024)));
        } catch (Exception e4) {
            throw new IOException("error constructing MAC: " + e4.toString());
        }
    }

    private static byte[] getDigest(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        SHA1Digest sHA1Digest = new SHA1Digest();
        byte[] bArr = new byte[sHA1Digest.getDigestSize()];
        byte[] bytes = subjectPublicKeyInfo.getPublicKeyData().getBytes();
        sHA1Digest.update(bytes, 0, bytes.length);
        sHA1Digest.doFinal(bArr, 0);
        return bArr;
    }

    private Set getUsedCertificateSet() {
        HashSet hashSet = new HashSet();
        Enumeration keys2 = this.keys.keys();
        while (keys2.hasMoreElements()) {
            Certificate[] engineGetCertificateChain = engineGetCertificateChain((String) keys2.nextElement());
            for (int i = 0; i != engineGetCertificateChain.length; i++) {
                hashSet.add(engineGetCertificateChain[i]);
            }
        }
        Enumeration keys3 = this.certs.keys();
        while (keys3.hasMoreElements()) {
            hashSet.add(engineGetCertificate((String) keys3.nextElement()));
        }
        return hashSet;
    }

    /* access modifiers changed from: protected */
    public byte[] cryptData(boolean z, AlgorithmIdentifier algorithmIdentifier, char[] cArr, boolean z2, byte[] bArr) throws IOException {
        ASN1ObjectIdentifier algorithm = algorithmIdentifier.getAlgorithm();
        int i = z ? 1 : 2;
        if (algorithm.on(PKCSObjectIdentifiers.pkcs_12PbeIds)) {
            PKCS12PBEParams instance = PKCS12PBEParams.getInstance(algorithmIdentifier.getParameters());
            new PBEKeySpec(cArr);
            try {
                PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(instance.getIV(), instance.getIterations().intValue());
                PKCS12Key pKCS12Key = new PKCS12Key(cArr, z2);
                Cipher createCipher = this.helper.createCipher(algorithm.getId());
                createCipher.init(i, pKCS12Key, pBEParameterSpec);
                return createCipher.doFinal(bArr);
            } catch (Exception e) {
                throw new IOException("exception decrypting data - " + e.toString());
            }
        } else if (algorithm.equals(PKCSObjectIdentifiers.id_PBES2)) {
            try {
                return createCipher(i, cArr, algorithmIdentifier).doFinal(bArr);
            } catch (Exception e2) {
                throw new IOException("exception decrypting data - " + e2.toString());
            }
        } else {
            throw new IOException("unknown PBE algorithm: " + algorithm);
        }
    }

    public Enumeration engineAliases() {
        Hashtable hashtable = new Hashtable();
        Enumeration keys2 = this.certs.keys();
        while (keys2.hasMoreElements()) {
            hashtable.put(keys2.nextElement(), "cert");
        }
        Enumeration keys3 = this.keys.keys();
        while (keys3.hasMoreElements()) {
            String str = (String) keys3.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.keys();
    }

    public boolean engineContainsAlias(String str) {
        return (this.certs.get(str) == null && this.keys.get(str) == null) ? false : true;
    }

    public void engineDeleteEntry(String str) throws KeyStoreException {
        Key key = (Key) this.keys.remove(str);
        Certificate certificate = (Certificate) this.certs.remove(str);
        if (certificate != null) {
            this.chainCerts.remove(new CertId(certificate.getPublicKey()));
        }
        if (key != null) {
            String str2 = (String) this.localIds.remove(str);
            Certificate certificate2 = str2 != null ? (Certificate) this.keyCerts.remove(str2) : certificate;
            if (certificate2 != null) {
                this.chainCerts.remove(new CertId(certificate2.getPublicKey()));
            }
        }
    }

    public Certificate engineGetCertificate(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificate.");
        }
        Certificate certificate = (Certificate) this.certs.get(str);
        if (certificate != null) {
            return certificate;
        }
        String str2 = (String) this.localIds.get(str);
        return str2 != null ? (Certificate) this.keyCerts.get(str2) : (Certificate) this.keyCerts.get(str);
    }

    public String engineGetCertificateAlias(Certificate certificate) {
        Enumeration elements = this.certs.elements();
        Enumeration keys2 = this.certs.keys();
        while (elements.hasMoreElements()) {
            String str = (String) keys2.nextElement();
            if (((Certificate) elements.nextElement()).equals(certificate)) {
                return str;
            }
        }
        Enumeration elements2 = this.keyCerts.elements();
        Enumeration keys3 = this.keyCerts.keys();
        while (elements2.hasMoreElements()) {
            String str2 = (String) keys3.nextElement();
            if (((Certificate) elements2.nextElement()).equals(certificate)) {
                return str2;
            }
        }
        return null;
    }

    public Certificate[] engineGetCertificateChain(String str) {
        Object obj;
        Object obj2;
        Certificate[] certificateArr = null;
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificateChain.");
        }
        if (engineIsKeyEntry(str)) {
            Object engineGetCertificate = engineGetCertificate(str);
            if (engineGetCertificate != null) {
                Vector vector = new Vector();
                while (engineGetCertificate != null) {
                    X509Certificate x509Certificate = (X509Certificate) engineGetCertificate;
                    byte[] extensionValue = x509Certificate.getExtensionValue(Extension.authorityKeyIdentifier.getId());
                    if (extensionValue != null) {
                        try {
                            AuthorityKeyIdentifier instance = AuthorityKeyIdentifier.getInstance(new ASN1InputStream(((ASN1OctetString) new ASN1InputStream(extensionValue).readObject()).getOctets()).readObject());
                            obj = instance.getKeyIdentifier() != null ? (Certificate) this.chainCerts.get(new CertId(instance.getKeyIdentifier())) : null;
                        } catch (IOException e) {
                            throw new RuntimeException(e.toString());
                        }
                    } else {
                        obj = null;
                    }
                    if (obj == null) {
                        Principal issuerDN = x509Certificate.getIssuerDN();
                        if (!issuerDN.equals(x509Certificate.getSubjectDN())) {
                            Enumeration keys2 = this.chainCerts.keys();
                            while (true) {
                                if (!keys2.hasMoreElements()) {
                                    break;
                                }
                                X509Certificate x509Certificate2 = (X509Certificate) this.chainCerts.get(keys2.nextElement());
                                if (x509Certificate2.getSubjectDN().equals(issuerDN)) {
                                    try {
                                        x509Certificate.verify(x509Certificate2.getPublicKey());
                                        obj2 = x509Certificate2;
                                        break;
                                    } catch (Exception e2) {
                                    }
                                }
                            }
                        }
                    }
                    obj2 = obj;
                    if (vector.contains(engineGetCertificate)) {
                        obj2 = null;
                    } else {
                        vector.addElement(engineGetCertificate);
                        if (obj2 == engineGetCertificate) {
                            obj2 = null;
                        }
                    }
                    engineGetCertificate = obj2;
                }
                certificateArr = new Certificate[vector.size()];
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 == certificateArr.length) {
                        break;
                    }
                    certificateArr[i2] = (Certificate) vector.elementAt(i2);
                    i = i2 + 1;
                }
            }
        }
        return certificateArr;
    }

    public Date engineGetCreationDate(String str) {
        if (str == null) {
            throw new NullPointerException("alias == null");
        } else if (this.keys.get(str) == null && this.certs.get(str) == null) {
            return null;
        } else {
            return new Date();
        }
    }

    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        if (str != null) {
            return (Key) this.keys.get(str);
        }
        throw new IllegalArgumentException("null alias passed to getKey.");
    }

    public boolean engineIsCertificateEntry(String str) {
        return this.certs.get(str) != null && this.keys.get(str) == null;
    }

    public boolean engineIsKeyEntry(String str) {
        return this.keys.get(str) != null;
    }

    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
        boolean z;
        boolean z2;
        String str;
        ASN1OctetString aSN1OctetString;
        boolean z3;
        ASN1OctetString aSN1OctetString2;
        String str2;
        ASN1Primitive aSN1Primitive;
        ASN1OctetString aSN1OctetString3;
        String str3;
        ASN1Primitive aSN1Primitive2;
        ASN1OctetString aSN1OctetString4;
        String str4;
        boolean z4;
        if (inputStream != null) {
            if (cArr == null) {
                throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedInputStream.mark(10);
            if (bufferedInputStream.read() != 48) {
                throw new IOException("stream does not represent a PKCS12 key store");
            }
            bufferedInputStream.reset();
            Pfx instance = Pfx.getInstance((ASN1Sequence) new ASN1InputStream((InputStream) bufferedInputStream).readObject());
            ContentInfo authSafe = instance.getAuthSafe();
            Vector vector = new Vector();
            if (instance.getMacData() != null) {
                MacData macData = instance.getMacData();
                DigestInfo mac = macData.getMac();
                AlgorithmIdentifier algorithmId = mac.getAlgorithmId();
                byte[] salt = macData.getSalt();
                int intValue = macData.getIterationCount().intValue();
                byte[] octets = ((ASN1OctetString) authSafe.getContent()).getOctets();
                try {
                    byte[] calculatePbeMac = calculatePbeMac(algorithmId.getAlgorithm(), salt, intValue, cArr, false, octets);
                    byte[] digest = mac.getDigest();
                    if (Arrays.constantTimeAreEqual(calculatePbeMac, digest)) {
                        z4 = false;
                    } else if (cArr.length > 0) {
                        throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                    } else {
                        if (!Arrays.constantTimeAreEqual(calculatePbeMac(algorithmId.getAlgorithm(), salt, intValue, cArr, true, octets), digest)) {
                            throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                        }
                        z4 = true;
                    }
                    z = z4;
                } catch (IOException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new IOException("error constructing MAC: " + e2.toString());
                }
            } else {
                z = false;
            }
            this.keys = new IgnoresCaseHashtable();
            this.localIds = new Hashtable();
            if (authSafe.getContentType().equals(data)) {
                ContentInfo[] contentInfo = AuthenticatedSafe.getInstance(new ASN1InputStream(((ASN1OctetString) authSafe.getContent()).getOctets()).readObject()).getContentInfo();
                int i = 0;
                z2 = false;
                while (i != contentInfo.length) {
                    if (contentInfo[i].getContentType().equals(data)) {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(((ASN1OctetString) contentInfo[i].getContent()).getOctets()).readObject();
                        boolean z5 = z2;
                        int i2 = 0;
                        while (i2 != aSN1Sequence.size()) {
                            SafeBag instance2 = SafeBag.getInstance(aSN1Sequence.getObjectAt(i2));
                            if (instance2.getBagId().equals(pkcs8ShroudedKeyBag)) {
                                EncryptedPrivateKeyInfo instance3 = EncryptedPrivateKeyInfo.getInstance(instance2.getBagValue());
                                PrivateKey unwrapKey = unwrapKey(instance3.getEncryptionAlgorithm(), instance3.getEncryptedData(), cArr, z);
                                PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) unwrapKey;
                                String str5 = null;
                                ASN1OctetString aSN1OctetString5 = null;
                                if (instance2.getBagAttributes() != null) {
                                    Enumeration objects = instance2.getBagAttributes().getObjects();
                                    while (objects.hasMoreElements()) {
                                        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) objects.nextElement();
                                        ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1Sequence2.getObjectAt(0);
                                        ASN1Set aSN1Set = (ASN1Set) aSN1Sequence2.getObjectAt(1);
                                        if (aSN1Set.size() > 0) {
                                            aSN1Primitive2 = (ASN1Primitive) aSN1Set.getObjectAt(0);
                                            ASN1Encodable bagAttribute = pKCS12BagAttributeCarrier.getBagAttribute(aSN1ObjectIdentifier);
                                            if (bagAttribute == null) {
                                                pKCS12BagAttributeCarrier.setBagAttribute(aSN1ObjectIdentifier, aSN1Primitive2);
                                            } else if (!bagAttribute.toASN1Primitive().equals(aSN1Primitive2)) {
                                                throw new IOException("attempt to add existing attribute with different value");
                                            }
                                        } else {
                                            aSN1Primitive2 = null;
                                        }
                                        if (aSN1ObjectIdentifier.equals(pkcs_9_at_friendlyName)) {
                                            String string = ((DERBMPString) aSN1Primitive2).getString();
                                            this.keys.put(string, unwrapKey);
                                            str4 = string;
                                            aSN1OctetString4 = aSN1OctetString5;
                                        } else if (aSN1ObjectIdentifier.equals(pkcs_9_at_localKeyId)) {
                                            aSN1OctetString4 = (ASN1OctetString) aSN1Primitive2;
                                            str4 = str5;
                                        } else {
                                            aSN1OctetString4 = aSN1OctetString5;
                                            str4 = str5;
                                        }
                                        aSN1OctetString5 = aSN1OctetString4;
                                        str5 = str4;
                                    }
                                }
                                if (aSN1OctetString5 != null) {
                                    String str6 = new String(Hex.encode(aSN1OctetString5.getOctets()));
                                    if (str5 == null) {
                                        this.keys.put(str6, unwrapKey);
                                    } else {
                                        this.localIds.put(str5, str6);
                                    }
                                } else {
                                    z5 = true;
                                    this.keys.put("unmarked", unwrapKey);
                                }
                            } else if (instance2.getBagId().equals(certBag)) {
                                vector.addElement(instance2);
                            } else {
                                System.out.println("extra in data " + instance2.getBagId());
                                System.out.println(ASN1Dump.dumpAsString(instance2));
                            }
                            i2++;
                            z5 = z5;
                        }
                        z3 = z5;
                    } else if (contentInfo[i].getContentType().equals(encryptedData)) {
                        EncryptedData instance4 = EncryptedData.getInstance(contentInfo[i].getContent());
                        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) ASN1Primitive.fromByteArray(cryptData(false, instance4.getEncryptionAlgorithm(), cArr, z, instance4.getContent().getOctets()));
                        int i3 = 0;
                        while (true) {
                            int i4 = i3;
                            if (i4 == aSN1Sequence3.size()) {
                                z3 = z2;
                                break;
                            }
                            SafeBag instance5 = SafeBag.getInstance(aSN1Sequence3.getObjectAt(i4));
                            if (instance5.getBagId().equals(certBag)) {
                                vector.addElement(instance5);
                            } else if (instance5.getBagId().equals(pkcs8ShroudedKeyBag)) {
                                EncryptedPrivateKeyInfo instance6 = EncryptedPrivateKeyInfo.getInstance(instance5.getBagValue());
                                PrivateKey unwrapKey2 = unwrapKey(instance6.getEncryptionAlgorithm(), instance6.getEncryptedData(), cArr, z);
                                PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) unwrapKey2;
                                String str7 = null;
                                ASN1OctetString aSN1OctetString6 = null;
                                Enumeration objects2 = instance5.getBagAttributes().getObjects();
                                while (objects2.hasMoreElements()) {
                                    ASN1Sequence aSN1Sequence4 = (ASN1Sequence) objects2.nextElement();
                                    ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) aSN1Sequence4.getObjectAt(0);
                                    ASN1Set aSN1Set2 = (ASN1Set) aSN1Sequence4.getObjectAt(1);
                                    if (aSN1Set2.size() > 0) {
                                        aSN1Primitive = (ASN1Primitive) aSN1Set2.getObjectAt(0);
                                        ASN1Encodable bagAttribute2 = pKCS12BagAttributeCarrier2.getBagAttribute(aSN1ObjectIdentifier2);
                                        if (bagAttribute2 == null) {
                                            pKCS12BagAttributeCarrier2.setBagAttribute(aSN1ObjectIdentifier2, aSN1Primitive);
                                        } else if (!bagAttribute2.toASN1Primitive().equals(aSN1Primitive)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    } else {
                                        aSN1Primitive = null;
                                    }
                                    if (aSN1ObjectIdentifier2.equals(pkcs_9_at_friendlyName)) {
                                        String string2 = ((DERBMPString) aSN1Primitive).getString();
                                        this.keys.put(string2, unwrapKey2);
                                        str3 = string2;
                                        aSN1OctetString3 = aSN1OctetString6;
                                    } else if (aSN1ObjectIdentifier2.equals(pkcs_9_at_localKeyId)) {
                                        aSN1OctetString3 = (ASN1OctetString) aSN1Primitive;
                                        str3 = str7;
                                    } else {
                                        aSN1OctetString3 = aSN1OctetString6;
                                        str3 = str7;
                                    }
                                    aSN1OctetString6 = aSN1OctetString3;
                                    str7 = str3;
                                }
                                String str8 = new String(Hex.encode(aSN1OctetString6.getOctets()));
                                if (str7 == null) {
                                    this.keys.put(str8, unwrapKey2);
                                } else {
                                    this.localIds.put(str7, str8);
                                }
                            } else if (instance5.getBagId().equals(keyBag)) {
                                PrivateKey privateKey = BouncyCastleProvider.getPrivateKey(PrivateKeyInfo.getInstance(instance5.getBagValue()));
                                PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) privateKey;
                                String str9 = null;
                                ASN1OctetString aSN1OctetString7 = null;
                                Enumeration objects3 = instance5.getBagAttributes().getObjects();
                                while (objects3.hasMoreElements()) {
                                    ASN1Sequence instance7 = ASN1Sequence.getInstance(objects3.nextElement());
                                    ASN1ObjectIdentifier instance8 = ASN1ObjectIdentifier.getInstance(instance7.getObjectAt(0));
                                    ASN1Set instance9 = ASN1Set.getInstance(instance7.getObjectAt(1));
                                    if (instance9.size() > 0) {
                                        ASN1Primitive aSN1Primitive3 = (ASN1Primitive) instance9.getObjectAt(0);
                                        ASN1Encodable bagAttribute3 = pKCS12BagAttributeCarrier3.getBagAttribute(instance8);
                                        if (bagAttribute3 == null) {
                                            pKCS12BagAttributeCarrier3.setBagAttribute(instance8, aSN1Primitive3);
                                        } else if (!bagAttribute3.toASN1Primitive().equals(aSN1Primitive3)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                        if (instance8.equals(pkcs_9_at_friendlyName)) {
                                            String string3 = ((DERBMPString) aSN1Primitive3).getString();
                                            this.keys.put(string3, privateKey);
                                            ASN1OctetString aSN1OctetString8 = aSN1OctetString7;
                                            str2 = string3;
                                            aSN1OctetString2 = aSN1OctetString8;
                                        } else if (instance8.equals(pkcs_9_at_localKeyId)) {
                                            aSN1OctetString2 = (ASN1OctetString) aSN1Primitive3;
                                            str2 = str9;
                                        }
                                        str9 = str2;
                                        aSN1OctetString7 = aSN1OctetString2;
                                    }
                                    aSN1OctetString2 = aSN1OctetString7;
                                    str2 = str9;
                                    str9 = str2;
                                    aSN1OctetString7 = aSN1OctetString2;
                                }
                                String str10 = new String(Hex.encode(aSN1OctetString7.getOctets()));
                                if (str9 == null) {
                                    this.keys.put(str10, privateKey);
                                } else {
                                    this.localIds.put(str9, str10);
                                }
                            } else {
                                System.out.println("extra in encryptedData " + instance5.getBagId());
                                System.out.println(ASN1Dump.dumpAsString(instance5));
                            }
                            i3 = i4 + 1;
                        }
                    } else {
                        System.out.println("extra " + contentInfo[i].getContentType().getId());
                        System.out.println("extra " + ASN1Dump.dumpAsString(contentInfo[i].getContent()));
                        z3 = z2;
                    }
                    i++;
                    z2 = z3;
                }
            } else {
                z2 = false;
            }
            this.certs = new IgnoresCaseHashtable();
            this.chainCerts = new Hashtable();
            this.keyCerts = new Hashtable();
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 != vector.size()) {
                    SafeBag safeBag = (SafeBag) vector.elementAt(i6);
                    CertBag instance10 = CertBag.getInstance(safeBag.getBagValue());
                    if (!instance10.getCertId().equals(x509Certificate)) {
                        throw new RuntimeException("Unsupported certificate type: " + instance10.getCertId());
                    }
                    try {
                        Certificate generateCertificate = this.certFact.generateCertificate(new ByteArrayInputStream(((ASN1OctetString) instance10.getCertValue()).getOctets()));
                        ASN1OctetString aSN1OctetString9 = null;
                        String str11 = null;
                        if (safeBag.getBagAttributes() != null) {
                            Enumeration objects4 = safeBag.getBagAttributes().getObjects();
                            while (objects4.hasMoreElements()) {
                                ASN1Sequence instance11 = ASN1Sequence.getInstance(objects4.nextElement());
                                ASN1ObjectIdentifier instance12 = ASN1ObjectIdentifier.getInstance(instance11.getObjectAt(0));
                                ASN1Set instance13 = ASN1Set.getInstance(instance11.getObjectAt(1));
                                if (instance13.size() > 0) {
                                    ASN1Primitive aSN1Primitive4 = (ASN1Primitive) instance13.getObjectAt(0);
                                    if (generateCertificate instanceof PKCS12BagAttributeCarrier) {
                                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier4 = (PKCS12BagAttributeCarrier) generateCertificate;
                                        ASN1Encodable bagAttribute4 = pKCS12BagAttributeCarrier4.getBagAttribute(instance12);
                                        if (bagAttribute4 == null) {
                                            pKCS12BagAttributeCarrier4.setBagAttribute(instance12, aSN1Primitive4);
                                        } else if (!bagAttribute4.toASN1Primitive().equals(aSN1Primitive4)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    }
                                    if (instance12.equals(pkcs_9_at_friendlyName)) {
                                        str = ((DERBMPString) aSN1Primitive4).getString();
                                        aSN1OctetString = aSN1OctetString9;
                                    } else if (instance12.equals(pkcs_9_at_localKeyId)) {
                                        aSN1OctetString = (ASN1OctetString) aSN1Primitive4;
                                        str = str11;
                                    }
                                    str11 = str;
                                    aSN1OctetString9 = aSN1OctetString;
                                }
                                str = str11;
                                aSN1OctetString = aSN1OctetString9;
                                str11 = str;
                                aSN1OctetString9 = aSN1OctetString;
                            }
                        }
                        this.chainCerts.put(new CertId(generateCertificate.getPublicKey()), generateCertificate);
                        if (!z2) {
                            if (aSN1OctetString9 != null) {
                                this.keyCerts.put(new String(Hex.encode(aSN1OctetString9.getOctets())), generateCertificate);
                            }
                            if (str11 != null) {
                                this.certs.put(str11, generateCertificate);
                            }
                        } else if (this.keyCerts.isEmpty()) {
                            String str12 = new String(Hex.encode(createSubjectKeyId(generateCertificate.getPublicKey()).getKeyIdentifier()));
                            this.keyCerts.put(str12, generateCertificate);
                            this.keys.put(str12, this.keys.remove("unmarked"));
                        }
                        i5 = i6 + 1;
                    } catch (Exception e3) {
                        throw new RuntimeException(e3.toString());
                    }
                } else {
                    return;
                }
            }
        }
    }

    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        if (this.keys.get(str) != null) {
            throw new KeyStoreException("There is a key entry with the name " + str + ".");
        }
        this.certs.put(str, certificate);
        this.chainCerts.put(new CertId(certificate.getPublicKey()), certificate);
    }

    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        if (!(key instanceof PrivateKey)) {
            throw new KeyStoreException("PKCS12 does not support non-PrivateKeys");
        } else if (!(key instanceof PrivateKey) || certificateArr != null) {
            if (this.keys.get(str) != null) {
                engineDeleteEntry(str);
            }
            this.keys.put(str, key);
            if (certificateArr != null) {
                this.certs.put(str, certificateArr[0]);
                for (int i = 0; i != certificateArr.length; i++) {
                    this.chainCerts.put(new CertId(certificateArr[i].getPublicKey()), certificateArr[i]);
                }
            }
        } else {
            throw new KeyStoreException("no certificate chain for private key");
        }
    }

    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new RuntimeException("operation not supported");
    }

    public int engineSize() {
        Hashtable hashtable = new Hashtable();
        Enumeration keys2 = this.certs.keys();
        while (keys2.hasMoreElements()) {
            hashtable.put(keys2.nextElement(), "cert");
        }
        Enumeration keys3 = this.keys.keys();
        while (keys3.hasMoreElements()) {
            String str = (String) keys3.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.size();
    }

    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException {
        doStore(outputStream, cArr, false);
    }

    public void engineStore(LoadStoreParameter loadStoreParameter) throws IOException, NoSuchAlgorithmException, CertificateException {
        char[] password;
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'param' arg cannot be null");
        } else if ((loadStoreParameter instanceof PKCS12StoreParameter) || (loadStoreParameter instanceof JDKPKCS12StoreParameter)) {
            PKCS12StoreParameter pKCS12StoreParameter = loadStoreParameter instanceof PKCS12StoreParameter ? (PKCS12StoreParameter) loadStoreParameter : new PKCS12StoreParameter(((JDKPKCS12StoreParameter) loadStoreParameter).getOutputStream(), loadStoreParameter.getProtectionParameter(), ((JDKPKCS12StoreParameter) loadStoreParameter).isUseDEREncoding());
            ProtectionParameter protectionParameter = loadStoreParameter.getProtectionParameter();
            if (protectionParameter == null) {
                password = null;
            } else if (protectionParameter instanceof PasswordProtection) {
                password = ((PasswordProtection) protectionParameter).getPassword();
            } else {
                throw new IllegalArgumentException("No support for protection parameter of type " + protectionParameter.getClass().getName());
            }
            doStore(pKCS12StoreParameter.getOutputStream(), password, pKCS12StoreParameter.isForDEREncoding());
        } else {
            throw new IllegalArgumentException("No support for 'param' of type " + loadStoreParameter.getClass().getName());
        }
    }

    public void setRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
    }

    /* access modifiers changed from: protected */
    public PrivateKey unwrapKey(AlgorithmIdentifier algorithmIdentifier, byte[] bArr, char[] cArr, boolean z) throws IOException {
        ASN1ObjectIdentifier algorithm = algorithmIdentifier.getAlgorithm();
        try {
            if (algorithm.on(PKCSObjectIdentifiers.pkcs_12PbeIds)) {
                PKCS12PBEParams instance = PKCS12PBEParams.getInstance(algorithmIdentifier.getParameters());
                PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(instance.getIV(), instance.getIterations().intValue());
                Cipher createCipher = this.helper.createCipher(algorithm.getId());
                createCipher.init(4, new PKCS12Key(cArr, z), pBEParameterSpec);
                return (PrivateKey) createCipher.unwrap(bArr, "", 2);
            } else if (algorithm.equals(PKCSObjectIdentifiers.id_PBES2)) {
                return (PrivateKey) createCipher(4, cArr, algorithmIdentifier).unwrap(bArr, "", 2);
            } else {
                throw new IOException("exception unwrapping private key - cannot recognise: " + algorithm);
            }
        } catch (Exception e) {
            throw new IOException("exception unwrapping private key - " + e.toString());
        }
    }

    /* access modifiers changed from: protected */
    public byte[] wrapKey(String str, Key key, PKCS12PBEParams pKCS12PBEParams, char[] cArr) throws IOException {
        PBEKeySpec pBEKeySpec = new PBEKeySpec(cArr);
        try {
            SecretKeyFactory createSecretKeyFactory = this.helper.createSecretKeyFactory(str);
            PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(pKCS12PBEParams.getIV(), pKCS12PBEParams.getIterations().intValue());
            Cipher createCipher = this.helper.createCipher(str);
            createCipher.init(3, createSecretKeyFactory.generateSecret(pBEKeySpec), pBEParameterSpec);
            return createCipher.wrap(key);
        } catch (Exception e) {
            throw new IOException("exception encrypting data - " + e.toString());
        }
    }
}
