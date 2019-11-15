package org.bouncycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Certificate;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.KeyUsage;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DSAPublicKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.util.PublicKeyFactory;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.io.Streams;

public class TlsUtils {
    public static final byte[] EMPTY_BYTES = new byte[0];
    public static final int[] EMPTY_INTS = new int[0];
    public static final long[] EMPTY_LONGS = new long[0];
    public static final short[] EMPTY_SHORTS = new short[0];
    public static final Integer EXT_signature_algorithms = Integers.valueOf(13);
    static final byte[][] SSL3_CONST = genSSL3Const();
    static final byte[] SSL_CLIENT = {67, 76, 78, 84};
    static final byte[] SSL_SERVER = {83, 82, 86, 82};

    public static byte[] PRF(TlsContext tlsContext, byte[] bArr, String str, byte[] bArr2, int i) {
        if (tlsContext.getServerVersion().isSSL()) {
            throw new IllegalStateException("No PRF available for SSLv3 session");
        }
        byte[] byteArray = Strings.toByteArray(str);
        byte[] concat = concat(byteArray, bArr2);
        int prfAlgorithm = tlsContext.getSecurityParameters().getPrfAlgorithm();
        if (prfAlgorithm == 0) {
            return PRF_legacy(bArr, byteArray, concat, i);
        }
        byte[] bArr3 = new byte[i];
        hmac_hash(createPRFHash(prfAlgorithm), bArr, concat, bArr3);
        return bArr3;
    }

    public static byte[] PRF_legacy(byte[] bArr, String str, byte[] bArr2, int i) {
        byte[] byteArray = Strings.toByteArray(str);
        return PRF_legacy(bArr, byteArray, concat(byteArray, bArr2), i);
    }

    static byte[] PRF_legacy(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        int length = (bArr.length + 1) / 2;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr, 0, bArr4, 0, length);
        System.arraycopy(bArr, bArr.length - length, bArr5, 0, length);
        byte[] bArr6 = new byte[i];
        byte[] bArr7 = new byte[i];
        hmac_hash(createHash(1), bArr4, bArr3, bArr6);
        hmac_hash(createHash(2), bArr5, bArr3, bArr7);
        for (int i2 = 0; i2 < i; i2++) {
            bArr6[i2] = (byte) (bArr6[i2] ^ bArr7[i2]);
        }
        return bArr6;
    }

    public static void addSignatureAlgorithmsExtension(Hashtable hashtable, Vector vector) throws IOException {
        hashtable.put(EXT_signature_algorithms, createSignatureAlgorithmsExtension(vector));
    }

    static byte[] calculateKeyBlock(TlsContext tlsContext, int i) {
        SecurityParameters securityParameters = tlsContext.getSecurityParameters();
        byte[] masterSecret = securityParameters.getMasterSecret();
        byte[] concat = concat(securityParameters.getServerRandom(), securityParameters.getClientRandom());
        return isSSL(tlsContext) ? calculateKeyBlock_SSL(masterSecret, concat, i) : PRF(tlsContext, masterSecret, ExporterLabel.key_expansion, concat, i);
    }

    static byte[] calculateKeyBlock_SSL(byte[] bArr, byte[] bArr2, int i) {
        Digest createHash = createHash(1);
        Digest createHash2 = createHash(2);
        int digestSize = createHash.getDigestSize();
        byte[] bArr3 = new byte[createHash2.getDigestSize()];
        byte[] bArr4 = new byte[(i + digestSize)];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            byte[] bArr5 = SSL3_CONST[i3];
            createHash2.update(bArr5, 0, bArr5.length);
            createHash2.update(bArr, 0, bArr.length);
            createHash2.update(bArr2, 0, bArr2.length);
            createHash2.doFinal(bArr3, 0);
            createHash.update(bArr, 0, bArr.length);
            createHash.update(bArr3, 0, bArr3.length);
            createHash.doFinal(bArr4, i2);
            i2 += digestSize;
            i3++;
        }
        return Arrays.copyOfRange(bArr4, 0, i);
    }

    static byte[] calculateMasterSecret(TlsContext tlsContext, byte[] bArr) {
        SecurityParameters securityParameters = tlsContext.getSecurityParameters();
        byte[] concat = securityParameters.extendedMasterSecret ? securityParameters.getSessionHash() : concat(securityParameters.getClientRandom(), securityParameters.getServerRandom());
        if (isSSL(tlsContext)) {
            return calculateMasterSecret_SSL(bArr, concat);
        }
        return PRF(tlsContext, bArr, securityParameters.extendedMasterSecret ? ExporterLabel.extended_master_secret : ExporterLabel.master_secret, concat, 48);
    }

    static byte[] calculateMasterSecret_SSL(byte[] bArr, byte[] bArr2) {
        Digest createHash = createHash(1);
        Digest createHash2 = createHash(2);
        int digestSize = createHash.getDigestSize();
        byte[] bArr3 = new byte[createHash2.getDigestSize()];
        byte[] bArr4 = new byte[(digestSize * 3)];
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            byte[] bArr5 = SSL3_CONST[i2];
            createHash2.update(bArr5, 0, bArr5.length);
            createHash2.update(bArr, 0, bArr.length);
            createHash2.update(bArr2, 0, bArr2.length);
            createHash2.doFinal(bArr3, 0);
            createHash.update(bArr, 0, bArr.length);
            createHash.update(bArr3, 0, bArr3.length);
            createHash.doFinal(bArr4, i);
            i += digestSize;
        }
        return bArr4;
    }

    static byte[] calculateVerifyData(TlsContext tlsContext, String str, byte[] bArr) {
        if (isSSL(tlsContext)) {
            return bArr;
        }
        SecurityParameters securityParameters = tlsContext.getSecurityParameters();
        return PRF(tlsContext, securityParameters.getMasterSecret(), str, bArr, securityParameters.getVerifyDataLength());
    }

    public static void checkUint16(int i) throws IOException {
        if (!isValidUint16(i)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint16(long j) throws IOException {
        if (!isValidUint16(j)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint24(int i) throws IOException {
        if (!isValidUint24(i)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint24(long j) throws IOException {
        if (!isValidUint24(j)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint32(long j) throws IOException {
        if (!isValidUint32(j)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint48(long j) throws IOException {
        if (!isValidUint48(j)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint64(long j) throws IOException {
        if (!isValidUint64(j)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint8(int i) throws IOException {
        if (!isValidUint8(i)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint8(long j) throws IOException {
        if (!isValidUint8(j)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static void checkUint8(short s) throws IOException {
        if (!isValidUint8(s)) {
            throw new TlsFatalAlert(80);
        }
    }

    public static Digest cloneHash(short s, Digest digest) {
        switch (s) {
            case 1:
                return new MD5Digest((MD5Digest) digest);
            case 2:
                return new SHA1Digest((SHA1Digest) digest);
            case 3:
                return new SHA224Digest((SHA224Digest) digest);
            case 4:
                return new SHA256Digest((SHA256Digest) digest);
            case 5:
                return new SHA384Digest((SHA384Digest) digest);
            case 6:
                return new SHA512Digest((SHA512Digest) digest);
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    public static Digest clonePRFHash(int i, Digest digest) {
        switch (i) {
            case 0:
                return new CombinedHash((CombinedHash) digest);
            default:
                return cloneHash(getHashAlgorithmForPRFAlgorithm(i), digest);
        }
    }

    static byte[] concat(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static Digest createHash(SignatureAndHashAlgorithm signatureAndHashAlgorithm) {
        return signatureAndHashAlgorithm == null ? new CombinedHash() : createHash(signatureAndHashAlgorithm.getHash());
    }

    public static Digest createHash(short s) {
        switch (s) {
            case 1:
                return new MD5Digest();
            case 2:
                return new SHA1Digest();
            case 3:
                return new SHA224Digest();
            case 4:
                return new SHA256Digest();
            case 5:
                return new SHA384Digest();
            case 6:
                return new SHA512Digest();
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    public static Digest createPRFHash(int i) {
        switch (i) {
            case 0:
                return new CombinedHash();
            default:
                return createHash(getHashAlgorithmForPRFAlgorithm(i));
        }
    }

    public static byte[] createSignatureAlgorithmsExtension(Vector vector) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encodeSupportedSignatureAlgorithms(vector, false, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static TlsSigner createTlsSigner(short s) {
        switch (s) {
            case 1:
                return new TlsRSASigner();
            case 2:
                return new TlsDSSSigner();
            case 64:
                return new TlsECDSASigner();
            default:
                throw new IllegalArgumentException("'clientCertificateType' is not a type with signing capability");
        }
    }

    public static byte[] encodeOpaque8(byte[] bArr) throws IOException {
        checkUint8(bArr.length);
        return Arrays.prepend(bArr, (byte) bArr.length);
    }

    public static void encodeSupportedSignatureAlgorithms(Vector vector, boolean z, OutputStream outputStream) throws IOException {
        if (vector == null || vector.size() < 1 || vector.size() >= 32768) {
            throw new IllegalArgumentException("'supportedSignatureAlgorithms' must have length from 1 to (2^15 - 1)");
        }
        int size = vector.size() * 2;
        checkUint16(size);
        writeUint16(size, outputStream);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < vector.size()) {
                SignatureAndHashAlgorithm signatureAndHashAlgorithm = (SignatureAndHashAlgorithm) vector.elementAt(i2);
                if (z || signatureAndHashAlgorithm.getSignature() != 0) {
                    signatureAndHashAlgorithm.encode(outputStream);
                    i = i2 + 1;
                } else {
                    throw new IllegalArgumentException("SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension");
                }
            } else {
                return;
            }
        }
    }

    public static byte[] encodeUint16ArrayWithUint16Length(int[] iArr) throws IOException {
        byte[] bArr = new byte[((iArr.length * 2) + 2)];
        writeUint16ArrayWithUint16Length(iArr, bArr, 0);
        return bArr;
    }

    public static byte[] encodeUint8ArrayWithUint8Length(short[] sArr) throws IOException {
        byte[] bArr = new byte[(sArr.length + 1)];
        writeUint8ArrayWithUint8Length(sArr, bArr, 0);
        return bArr;
    }

    private static byte[][] genSSL3Const() {
        byte[][] bArr = new byte[10][];
        for (int i = 0; i < 10; i++) {
            byte[] bArr2 = new byte[(i + 1)];
            Arrays.fill(bArr2, (byte) (i + 65));
            bArr[i] = bArr2;
        }
        return bArr;
    }

    public static int getCipherType(int i) throws IOException {
        switch (getEncryptionAlgorithm(i)) {
            case 1:
            case 2:
            case 100:
            case 101:
                return 0;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 12:
            case 13:
            case 14:
                return 1;
            case 10:
            case 11:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 102:
                return 2;
            default:
                throw new TlsFatalAlert(80);
        }
    }

    static short getClientCertificateType(Certificate certificate, Certificate certificate2) throws IOException {
        if (certificate.isEmpty()) {
            return -1;
        }
        Certificate certificateAt = certificate.getCertificateAt(0);
        try {
            AsymmetricKeyParameter createKey = PublicKeyFactory.createKey(certificateAt.getSubjectPublicKeyInfo());
            if (createKey.isPrivate()) {
                throw new TlsFatalAlert(80);
            } else if (createKey instanceof RSAKeyParameters) {
                validateKeyUsage(certificateAt, 128);
                return 1;
            } else if (createKey instanceof DSAPublicKeyParameters) {
                validateKeyUsage(certificateAt, 128);
                return 2;
            } else if (createKey instanceof ECPublicKeyParameters) {
                validateKeyUsage(certificateAt, 128);
                return 64;
            } else {
                throw new TlsFatalAlert(43);
            }
        } catch (Exception e) {
            throw new TlsFatalAlert(43, e);
        }
    }

    public static Vector getDefaultDSSSignatureAlgorithms() {
        return vectorOfOne(new SignatureAndHashAlgorithm(2, 2));
    }

    public static Vector getDefaultECDSASignatureAlgorithms() {
        return vectorOfOne(new SignatureAndHashAlgorithm(2, 3));
    }

    public static Vector getDefaultRSASignatureAlgorithms() {
        return vectorOfOne(new SignatureAndHashAlgorithm(2, 1));
    }

    public static Vector getDefaultSupportedSignatureAlgorithms() {
        short[] sArr = {2, 3, 4, 5, 6};
        short[] sArr2 = {1, 2, 3};
        Vector vector = new Vector();
        for (int i = 0; i < sArr2.length; i++) {
            for (short signatureAndHashAlgorithm : sArr) {
                vector.addElement(new SignatureAndHashAlgorithm(signatureAndHashAlgorithm, sArr2[i]));
            }
        }
        return vector;
    }

    public static int getEncryptionAlgorithm(int i) throws IOException {
        switch (i) {
            case 1:
                return 0;
            case 2:
            case 44:
            case 45:
            case 46:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_NULL_SHA /*49153*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_NULL_SHA /*49158*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_NULL_SHA /*49163*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_NULL_SHA /*49168*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA /*49209*/:
                return 0;
            case 4:
            case 24:
                return 2;
            case 5:
            case 138:
            case CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA /*142*/:
            case CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA /*146*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_RC4_128_SHA /*49154*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_RC4_128_SHA /*49159*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_RC4_128_SHA /*49164*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_RC4_128_SHA /*49169*/:
            case CipherSuite.TLS_ECDH_anon_WITH_RC4_128_SHA /*49174*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_RC4_128_SHA /*49203*/:
                return 2;
            case 10:
            case 13:
            case 16:
            case 19:
            case 22:
            case 139:
            case CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA /*143*/:
            case CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA /*147*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA /*49155*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA /*49160*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA /*49165*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA /*49170*/:
            case CipherSuite.TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA /*49178*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA /*49179*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA /*49180*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA /*49204*/:
                return 7;
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 60:
            case 62:
            case 63:
            case 64:
            case 103:
            case 140:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA /*144*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA /*148*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA256 /*174*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA256 /*178*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA256 /*182*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA /*49156*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA /*49161*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA /*49166*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA /*49171*/:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_128_CBC_SHA /*49181*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA /*49182*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA /*49183*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 /*49187*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 /*49189*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 /*49191*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 /*49193*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA /*49205*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256 /*49207*/:
                return 8;
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA /*141*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA /*145*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA /*149*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA /*49157*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA /*49162*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA /*49167*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA /*49172*/:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_256_CBC_SHA /*49184*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA /*49185*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA /*49186*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA /*49206*/:
                return 9;
            case 59:
            case CipherSuite.TLS_PSK_WITH_NULL_SHA256 /*176*/:
            case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256 /*180*/:
            case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256 /*184*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA256 /*49210*/:
                return 0;
            case 61:
            case 104:
            case 105:
            case 106:
            case 107:
                return 9;
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
                return 12;
            case 132:
            case 133:
            case 134:
            case 135:
            case 136:
                return 13;
            case CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA /*150*/:
            case CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA /*151*/:
            case CipherSuite.TLS_DH_RSA_WITH_SEED_CBC_SHA /*152*/:
            case CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA /*153*/:
            case 154:
                return 14;
            case CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256 /*156*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 /*158*/:
            case 160:
            case 162:
            case CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256 /*164*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256 /*168*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256 /*170*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256 /*172*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 /*49195*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 /*49197*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 /*49199*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 /*49201*/:
                return 10;
            case CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384 /*157*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 /*159*/:
            case 161:
            case 163:
            case CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384 /*165*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384 /*169*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384 /*171*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384 /*173*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 /*49196*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 /*49198*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 /*49200*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 /*49202*/:
                return 11;
            case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384 /*175*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384 /*179*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA384 /*183*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 /*49188*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 /*49190*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 /*49192*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 /*49194*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384 /*49208*/:
                return 9;
            case CipherSuite.TLS_PSK_WITH_NULL_SHA384 /*177*/:
            case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384 /*181*/:
            case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384 /*185*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA384 /*49211*/:
                return 0;
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*186*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*187*/:
            case 188:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*189*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*190*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49266*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49268*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49270*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49272*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49300*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49302*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49304*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49306*/:
                return 12;
            case 192:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*193*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*194*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*195*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*196*/:
                return 13;
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49267*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49269*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49271*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49273*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49301*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49303*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49305*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49307*/:
                return 13;
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49274*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49276*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49278*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49280*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49282*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49286*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49288*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49290*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49292*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49294*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49296*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49298*/:
                return 19;
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49275*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49277*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49279*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49281*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49283*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49287*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49289*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49291*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49293*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49295*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49297*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49299*/:
                return 20;
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM /*49308*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM /*49310*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM /*49316*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CCM /*49318*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM /*49324*/:
                return 15;
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM /*49309*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM /*49311*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM /*49317*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CCM /*49319*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM /*49325*/:
                return 17;
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM_8 /*49312*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM_8 /*49314*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM_8 /*49320*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_128_CCM_8 /*49322*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8 /*49326*/:
                return 16;
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM_8 /*49313*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM_8 /*49315*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM_8 /*49321*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_256_CCM_8 /*49323*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8 /*49327*/:
                return 18;
            case CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52243*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 /*52244*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52245*/:
                return 102;
            case CipherSuite.TLS_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58384*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58386*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_ESTREAM_SALSA20_SHA1 /*58388*/:
            case CipherSuite.TLS_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58390*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58392*/:
            case CipherSuite.TLS_RSA_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58394*/:
            case CipherSuite.TLS_DHE_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58396*/:
            case CipherSuite.TLS_DHE_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58398*/:
                return 100;
            case CipherSuite.TLS_RSA_WITH_SALSA20_SHA1 /*58385*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_SALSA20_SHA1 /*58387*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_SALSA20_SHA1 /*58389*/:
            case CipherSuite.TLS_PSK_WITH_SALSA20_SHA1 /*58391*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_SALSA20_SHA1 /*58393*/:
            case CipherSuite.TLS_RSA_PSK_WITH_SALSA20_SHA1 /*58395*/:
            case CipherSuite.TLS_DHE_PSK_WITH_SALSA20_SHA1 /*58397*/:
            case CipherSuite.TLS_DHE_RSA_WITH_SALSA20_SHA1 /*58399*/:
                return 101;
            default:
                throw new TlsFatalAlert(80);
        }
    }

    public static byte[] getExtensionData(Hashtable hashtable, Integer num) {
        if (hashtable == null) {
            return null;
        }
        return (byte[]) hashtable.get(num);
    }

    public static short getHashAlgorithmForPRFAlgorithm(int i) {
        switch (i) {
            case 0:
                throw new IllegalArgumentException("legacy PRF not a valid algorithm");
            case 1:
                return 4;
            case 2:
                return 5;
            default:
                throw new IllegalArgumentException("unknown PRFAlgorithm");
        }
    }

    public static int getKeyExchangeAlgorithm(int i) throws IOException {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 10:
            case 47:
            case 53:
            case 59:
            case 60:
            case 61:
            case 65:
            case 132:
            case CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA /*150*/:
            case CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256 /*156*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384 /*157*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*186*/:
            case 192:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49274*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49275*/:
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM /*49308*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM /*49309*/:
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM_8 /*49312*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM_8 /*49313*/:
            case CipherSuite.TLS_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58384*/:
            case CipherSuite.TLS_RSA_WITH_SALSA20_SHA1 /*58385*/:
                return 1;
            case 13:
            case 48:
            case 54:
            case 62:
            case 66:
            case 104:
            case 133:
            case CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA /*151*/:
            case CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256 /*164*/:
            case CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384 /*165*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*187*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*193*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49282*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49283*/:
                return 7;
            case 16:
            case 49:
            case 55:
            case 63:
            case 67:
            case 105:
            case 134:
            case CipherSuite.TLS_DH_RSA_WITH_SEED_CBC_SHA /*152*/:
            case 160:
            case 161:
            case 188:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*194*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49278*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49279*/:
                return 9;
            case 19:
            case 50:
            case 56:
            case 64:
            case 68:
            case 106:
            case 135:
            case CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA /*153*/:
            case 162:
            case 163:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*189*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*195*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49280*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49281*/:
                return 3;
            case 22:
            case 51:
            case 57:
            case 69:
            case 103:
            case 107:
            case 136:
            case 154:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 /*158*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 /*159*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*190*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*196*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49276*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49277*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM /*49310*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM /*49311*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM_8 /*49314*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM_8 /*49315*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52245*/:
            case CipherSuite.TLS_DHE_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58398*/:
            case CipherSuite.TLS_DHE_RSA_WITH_SALSA20_SHA1 /*58399*/:
                return 5;
            case 44:
            case 138:
            case 139:
            case 140:
            case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA /*141*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256 /*168*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384 /*169*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA256 /*174*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384 /*175*/:
            case CipherSuite.TLS_PSK_WITH_NULL_SHA256 /*176*/:
            case CipherSuite.TLS_PSK_WITH_NULL_SHA384 /*177*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49294*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49295*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49300*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49301*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM /*49316*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM /*49317*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM_8 /*49320*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM_8 /*49321*/:
            case CipherSuite.TLS_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58390*/:
            case CipherSuite.TLS_PSK_WITH_SALSA20_SHA1 /*58391*/:
                return 13;
            case 45:
            case CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA /*142*/:
            case CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA /*143*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA /*144*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA /*145*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256 /*170*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384 /*171*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA256 /*178*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384 /*179*/:
            case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256 /*180*/:
            case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384 /*181*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49296*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49297*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49302*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49303*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CCM /*49318*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CCM /*49319*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_128_CCM_8 /*49322*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_256_CCM_8 /*49323*/:
            case CipherSuite.TLS_DHE_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58396*/:
            case CipherSuite.TLS_DHE_PSK_WITH_SALSA20_SHA1 /*58397*/:
                return 14;
            case 46:
            case CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA /*146*/:
            case CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA /*147*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA /*148*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA /*149*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256 /*172*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384 /*173*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA256 /*182*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA384 /*183*/:
            case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256 /*184*/:
            case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384 /*185*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49298*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49299*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49304*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49305*/:
            case CipherSuite.TLS_RSA_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58394*/:
            case CipherSuite.TLS_RSA_PSK_WITH_SALSA20_SHA1 /*58395*/:
                return 15;
            case CipherSuite.TLS_ECDH_ECDSA_WITH_NULL_SHA /*49153*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_RC4_128_SHA /*49154*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA /*49155*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA /*49156*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA /*49157*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 /*49189*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 /*49190*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 /*49197*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 /*49198*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49268*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49269*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49288*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49289*/:
                return 16;
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_NULL_SHA /*49158*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_RC4_128_SHA /*49159*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA /*49160*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA /*49161*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA /*49162*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 /*49187*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 /*49188*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 /*49195*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 /*49196*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49266*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49267*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49286*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49287*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM /*49324*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM /*49325*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8 /*49326*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8 /*49327*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 /*52244*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_ESTREAM_SALSA20_SHA1 /*58388*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_SALSA20_SHA1 /*58389*/:
                return 17;
            case CipherSuite.TLS_ECDH_RSA_WITH_NULL_SHA /*49163*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_RC4_128_SHA /*49164*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA /*49165*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA /*49166*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA /*49167*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 /*49193*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 /*49194*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 /*49201*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 /*49202*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49272*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49273*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49292*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49293*/:
                return 18;
            case CipherSuite.TLS_ECDHE_RSA_WITH_NULL_SHA /*49168*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_RC4_128_SHA /*49169*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA /*49170*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA /*49171*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA /*49172*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 /*49191*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 /*49192*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 /*49199*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 /*49200*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49270*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49271*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49290*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49291*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52243*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58386*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_SALSA20_SHA1 /*58387*/:
                return 19;
            case CipherSuite.TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA /*49178*/:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_128_CBC_SHA /*49181*/:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_256_CBC_SHA /*49184*/:
                return 21;
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA /*49179*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA /*49182*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA /*49185*/:
                return 23;
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA /*49180*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA /*49183*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA /*49186*/:
                return 22;
            case CipherSuite.TLS_ECDHE_PSK_WITH_RC4_128_SHA /*49203*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA /*49204*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA /*49205*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA /*49206*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256 /*49207*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384 /*49208*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA /*49209*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA256 /*49210*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA384 /*49211*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49306*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49307*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58392*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_SALSA20_SHA1 /*58393*/:
                return 24;
            default:
                throw new TlsFatalAlert(80);
        }
    }

    public static int getMACAlgorithm(int i) throws IOException {
        switch (i) {
            case 1:
            case 4:
                return 1;
            case 2:
            case 5:
            case 10:
            case 13:
            case 16:
            case 19:
            case 22:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 132:
            case 133:
            case 134:
            case 135:
            case 136:
            case 138:
            case 139:
            case 140:
            case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA /*141*/:
            case CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA /*142*/:
            case CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA /*143*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA /*144*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA /*145*/:
            case CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA /*146*/:
            case CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA /*147*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA /*148*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA /*149*/:
            case CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA /*150*/:
            case CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA /*151*/:
            case CipherSuite.TLS_DH_RSA_WITH_SEED_CBC_SHA /*152*/:
            case CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA /*153*/:
            case 154:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_NULL_SHA /*49153*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_RC4_128_SHA /*49154*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA /*49155*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA /*49156*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA /*49157*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_NULL_SHA /*49158*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_RC4_128_SHA /*49159*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA /*49160*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA /*49161*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA /*49162*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_NULL_SHA /*49163*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_RC4_128_SHA /*49164*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA /*49165*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA /*49166*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA /*49167*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_NULL_SHA /*49168*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_RC4_128_SHA /*49169*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA /*49170*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA /*49171*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA /*49172*/:
            case CipherSuite.TLS_SRP_SHA_WITH_3DES_EDE_CBC_SHA /*49178*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_3DES_EDE_CBC_SHA /*49179*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_3DES_EDE_CBC_SHA /*49180*/:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_128_CBC_SHA /*49181*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_128_CBC_SHA /*49182*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_128_CBC_SHA /*49183*/:
            case CipherSuite.TLS_SRP_SHA_WITH_AES_256_CBC_SHA /*49184*/:
            case CipherSuite.TLS_SRP_SHA_RSA_WITH_AES_256_CBC_SHA /*49185*/:
            case CipherSuite.TLS_SRP_SHA_DSS_WITH_AES_256_CBC_SHA /*49186*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_RC4_128_SHA /*49203*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA /*49204*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA /*49205*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA /*49206*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA /*49209*/:
            case CipherSuite.TLS_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58384*/:
            case CipherSuite.TLS_RSA_WITH_SALSA20_SHA1 /*58385*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58386*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_SALSA20_SHA1 /*58387*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_ESTREAM_SALSA20_SHA1 /*58388*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_SALSA20_SHA1 /*58389*/:
            case CipherSuite.TLS_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58390*/:
            case CipherSuite.TLS_PSK_WITH_SALSA20_SHA1 /*58391*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58392*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_SALSA20_SHA1 /*58393*/:
            case CipherSuite.TLS_RSA_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58394*/:
            case CipherSuite.TLS_RSA_PSK_WITH_SALSA20_SHA1 /*58395*/:
            case CipherSuite.TLS_DHE_PSK_WITH_ESTREAM_SALSA20_SHA1 /*58396*/:
            case CipherSuite.TLS_DHE_PSK_WITH_SALSA20_SHA1 /*58397*/:
            case CipherSuite.TLS_DHE_RSA_WITH_ESTREAM_SALSA20_SHA1 /*58398*/:
            case CipherSuite.TLS_DHE_RSA_WITH_SALSA20_SHA1 /*58399*/:
                return 2;
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA256 /*174*/:
            case CipherSuite.TLS_PSK_WITH_NULL_SHA256 /*176*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA256 /*178*/:
            case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256 /*180*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA256 /*182*/:
            case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256 /*184*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*186*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*187*/:
            case 188:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*189*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*190*/:
            case 192:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*193*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*194*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*195*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*196*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 /*49187*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 /*49189*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 /*49191*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 /*49193*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA256 /*49207*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA256 /*49210*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49266*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49268*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49270*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49272*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49300*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49302*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49304*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_CAMELLIA_128_CBC_SHA256 /*49306*/:
                return 3;
            case CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256 /*156*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384 /*157*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 /*158*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 /*159*/:
            case 160:
            case 161:
            case 162:
            case 163:
            case CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256 /*164*/:
            case CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384 /*165*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256 /*168*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384 /*169*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256 /*170*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384 /*171*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256 /*172*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384 /*173*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 /*49195*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 /*49196*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 /*49197*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 /*49198*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 /*49199*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 /*49200*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 /*49201*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 /*49202*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49274*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49275*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49276*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49277*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49278*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49279*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49280*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49281*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49282*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49283*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49286*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49287*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49288*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49289*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49290*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49291*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49292*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49293*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49294*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49295*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49296*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49297*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49298*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49299*/:
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM /*49308*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM /*49309*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM /*49310*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM /*49311*/:
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM_8 /*49312*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM_8 /*49313*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM_8 /*49314*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM_8 /*49315*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM /*49316*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM /*49317*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CCM /*49318*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CCM /*49319*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM_8 /*49320*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM_8 /*49321*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_128_CCM_8 /*49322*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_256_CCM_8 /*49323*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM /*49324*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM /*49325*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8 /*49326*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8 /*49327*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52243*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 /*52244*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52245*/:
                return 0;
            case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384 /*175*/:
            case CipherSuite.TLS_PSK_WITH_NULL_SHA384 /*177*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384 /*179*/:
            case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384 /*181*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA384 /*183*/:
            case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384 /*185*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 /*49188*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 /*49190*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 /*49192*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 /*49194*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA384 /*49208*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_NULL_SHA384 /*49211*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49267*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49269*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49271*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49273*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49301*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49303*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49305*/:
            case CipherSuite.TLS_ECDHE_PSK_WITH_CAMELLIA_256_CBC_SHA384 /*49307*/:
                return 4;
            default:
                throw new TlsFatalAlert(80);
        }
    }

    public static ProtocolVersion getMinimumVersion(int i) {
        switch (i) {
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256 /*156*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384 /*157*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 /*158*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 /*159*/:
            case 160:
            case 161:
            case 162:
            case 163:
            case CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256 /*164*/:
            case CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384 /*165*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256 /*168*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384 /*169*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256 /*170*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384 /*171*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256 /*172*/:
            case CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384 /*173*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*186*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*187*/:
            case 188:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256 /*189*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*190*/:
            case CipherSuite.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256 /*191*/:
            case 192:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*193*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*194*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256 /*195*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256 /*196*/:
            case CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256 /*197*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 /*49187*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 /*49188*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 /*49189*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 /*49190*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 /*49191*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 /*49192*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 /*49193*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 /*49194*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 /*49195*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 /*49196*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 /*49197*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 /*49198*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 /*49199*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 /*49200*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 /*49201*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 /*49202*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49266*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49267*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_CBC_SHA256 /*49268*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_CBC_SHA384 /*49269*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49270*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49271*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_CBC_SHA256 /*49272*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_CBC_SHA384 /*49273*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49274*/:
            case CipherSuite.TLS_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49275*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49276*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49277*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49278*/:
            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49279*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49280*/:
            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49281*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_GCM_SHA256 /*49282*/:
            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_GCM_SHA384 /*49283*/:
            case CipherSuite.TLS_DH_anon_WITH_CAMELLIA_128_GCM_SHA256 /*49284*/:
            case CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_GCM_SHA384 /*49285*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49286*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49287*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256 /*49288*/:
            case CipherSuite.TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384 /*49289*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49290*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49291*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256 /*49292*/:
            case CipherSuite.TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384 /*49293*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49294*/:
            case CipherSuite.TLS_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49295*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49296*/:
            case CipherSuite.TLS_DHE_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49297*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_128_GCM_SHA256 /*49298*/:
            case CipherSuite.TLS_RSA_PSK_WITH_CAMELLIA_256_GCM_SHA384 /*49299*/:
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM /*49308*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM /*49309*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM /*49310*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM /*49311*/:
            case CipherSuite.TLS_RSA_WITH_AES_128_CCM_8 /*49312*/:
            case CipherSuite.TLS_RSA_WITH_AES_256_CCM_8 /*49313*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_128_CCM_8 /*49314*/:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CCM_8 /*49315*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM /*49316*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM /*49317*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CCM /*49318*/:
            case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CCM /*49319*/:
            case CipherSuite.TLS_PSK_WITH_AES_128_CCM_8 /*49320*/:
            case CipherSuite.TLS_PSK_WITH_AES_256_CCM_8 /*49321*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_128_CCM_8 /*49322*/:
            case CipherSuite.TLS_PSK_DHE_WITH_AES_256_CCM_8 /*49323*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM /*49324*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM /*49325*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CCM_8 /*49326*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CCM_8 /*49327*/:
            case CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52243*/:
            case CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 /*52244*/:
            case CipherSuite.TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256 /*52245*/:
                return ProtocolVersion.TLSv12;
            default:
                return ProtocolVersion.SSLv3;
        }
    }

    public static ASN1ObjectIdentifier getOIDForHashAlgorithm(short s) {
        switch (s) {
            case 1:
                return PKCSObjectIdentifiers.md5;
            case 2:
                return X509ObjectIdentifiers.id_SHA1;
            case 3:
                return NISTObjectIdentifiers.id_sha224;
            case 4:
                return NISTObjectIdentifiers.id_sha256;
            case 5:
                return NISTObjectIdentifiers.id_sha384;
            case 6:
                return NISTObjectIdentifiers.id_sha512;
            default:
                throw new IllegalArgumentException("unknown HashAlgorithm");
        }
    }

    public static Vector getSignatureAlgorithmsExtension(Hashtable hashtable) throws IOException {
        byte[] extensionData = getExtensionData(hashtable, EXT_signature_algorithms);
        if (extensionData == null) {
            return null;
        }
        return readSignatureAlgorithmsExtension(extensionData);
    }

    public static SignatureAndHashAlgorithm getSignatureAndHashAlgorithm(TlsContext tlsContext, TlsSignerCredentials tlsSignerCredentials) throws IOException {
        SignatureAndHashAlgorithm signatureAndHashAlgorithm = null;
        if (isTLSv12(tlsContext)) {
            signatureAndHashAlgorithm = tlsSignerCredentials.getSignatureAndHashAlgorithm();
            if (signatureAndHashAlgorithm == null) {
                throw new TlsFatalAlert(80);
            }
        }
        return signatureAndHashAlgorithm;
    }

    public static boolean hasExpectedEmptyExtensionData(Hashtable hashtable, Integer num, short s) throws IOException {
        byte[] extensionData = getExtensionData(hashtable, num);
        if (extensionData == null) {
            return false;
        }
        if (extensionData.length == 0) {
            return true;
        }
        throw new TlsFatalAlert(s);
    }

    public static boolean hasSigningCapability(short s) {
        switch (s) {
            case 1:
            case 2:
            case 64:
                return true;
            default:
                return false;
        }
    }

    static void hmac_hash(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        HMac hMac = new HMac(digest);
        hMac.init(new KeyParameter(bArr));
        int digestSize = digest.getDigestSize();
        int length = ((bArr3.length + digestSize) - 1) / digestSize;
        byte[] bArr4 = new byte[hMac.getMacSize()];
        byte[] bArr5 = new byte[hMac.getMacSize()];
        int i = 0;
        byte[] bArr6 = bArr2;
        while (i < length) {
            hMac.update(bArr6, 0, bArr6.length);
            hMac.doFinal(bArr4, 0);
            hMac.update(bArr4, 0, bArr4.length);
            hMac.update(bArr2, 0, bArr2.length);
            hMac.doFinal(bArr5, 0);
            System.arraycopy(bArr5, 0, bArr3, digestSize * i, Math.min(digestSize, bArr3.length - (digestSize * i)));
            i++;
            bArr6 = bArr4;
        }
    }

    public static TlsSession importSession(byte[] bArr, SessionParameters sessionParameters) {
        return new TlsSessionImpl(bArr, sessionParameters);
    }

    public static boolean isAEADCipherSuite(int i) throws IOException {
        return 2 == getCipherType(i);
    }

    public static boolean isBlockCipherSuite(int i) throws IOException {
        return 1 == getCipherType(i);
    }

    public static boolean isSSL(TlsContext tlsContext) {
        return tlsContext.getServerVersion().isSSL();
    }

    public static boolean isSignatureAlgorithmsExtensionAllowed(ProtocolVersion protocolVersion) {
        return ProtocolVersion.TLSv12.isEqualOrEarlierVersionOf(protocolVersion.getEquivalentTLSVersion());
    }

    public static boolean isStreamCipherSuite(int i) throws IOException {
        return getCipherType(i) == 0;
    }

    public static boolean isTLSv11(ProtocolVersion protocolVersion) {
        return ProtocolVersion.TLSv11.isEqualOrEarlierVersionOf(protocolVersion.getEquivalentTLSVersion());
    }

    public static boolean isTLSv11(TlsContext tlsContext) {
        return isTLSv11(tlsContext.getServerVersion());
    }

    public static boolean isTLSv12(ProtocolVersion protocolVersion) {
        return ProtocolVersion.TLSv12.isEqualOrEarlierVersionOf(protocolVersion.getEquivalentTLSVersion());
    }

    public static boolean isTLSv12(TlsContext tlsContext) {
        return isTLSv12(tlsContext.getServerVersion());
    }

    public static boolean isValidCipherSuiteForVersion(int i, ProtocolVersion protocolVersion) {
        return getMinimumVersion(i).isEqualOrEarlierVersionOf(protocolVersion.getEquivalentTLSVersion());
    }

    public static boolean isValidUint16(int i) {
        return (65535 & i) == i;
    }

    public static boolean isValidUint16(long j) {
        return (65535 & j) == j;
    }

    public static boolean isValidUint24(int i) {
        return (16777215 & i) == i;
    }

    public static boolean isValidUint24(long j) {
        return (16777215 & j) == j;
    }

    public static boolean isValidUint32(long j) {
        return (4294967295L & j) == j;
    }

    public static boolean isValidUint48(long j) {
        return (281474976710655L & j) == j;
    }

    public static boolean isValidUint64(long j) {
        return true;
    }

    public static boolean isValidUint8(int i) {
        return (i & 255) == i;
    }

    public static boolean isValidUint8(long j) {
        return (255 & j) == j;
    }

    public static boolean isValidUint8(short s) {
        return (s & 255) == s;
    }

    public static Vector parseSupportedSignatureAlgorithms(boolean z, InputStream inputStream) throws IOException {
        int readUint16 = readUint16(inputStream);
        if (readUint16 < 2 || (readUint16 & 1) != 0) {
            throw new TlsFatalAlert(50);
        }
        int i = readUint16 / 2;
        Vector vector = new Vector(i);
        int i2 = 0;
        while (i2 < i) {
            SignatureAndHashAlgorithm parse = SignatureAndHashAlgorithm.parse(inputStream);
            if (z || parse.getSignature() != 0) {
                vector.addElement(parse);
                i2++;
            } else {
                throw new TlsFatalAlert(47);
            }
        }
        return vector;
    }

    public static ASN1Primitive readASN1Object(byte[] bArr) throws IOException {
        ASN1InputStream aSN1InputStream = new ASN1InputStream(bArr);
        ASN1Primitive readObject = aSN1InputStream.readObject();
        if (readObject == null) {
            throw new TlsFatalAlert(50);
        } else if (aSN1InputStream.readObject() == null) {
            return readObject;
        } else {
            throw new TlsFatalAlert(50);
        }
    }

    public static byte[] readAllOrNothing(int i, InputStream inputStream) throws IOException {
        if (i < 1) {
            return EMPTY_BYTES;
        }
        byte[] bArr = new byte[i];
        int readFully = Streams.readFully(inputStream, bArr);
        if (readFully == 0) {
            return null;
        }
        if (readFully == i) {
            return bArr;
        }
        throw new EOFException();
    }

    public static ASN1Primitive readDERObject(byte[] bArr) throws IOException {
        ASN1Primitive readASN1Object = readASN1Object(bArr);
        if (Arrays.areEqual(readASN1Object.getEncoded(ASN1Encoding.DER), bArr)) {
            return readASN1Object;
        }
        throw new TlsFatalAlert(50);
    }

    public static void readFully(byte[] bArr, InputStream inputStream) throws IOException {
        int length = bArr.length;
        if (length > 0 && length != Streams.readFully(inputStream, bArr)) {
            throw new EOFException();
        }
    }

    public static byte[] readFully(int i, InputStream inputStream) throws IOException {
        if (i < 1) {
            return EMPTY_BYTES;
        }
        byte[] bArr = new byte[i];
        if (i == Streams.readFully(inputStream, bArr)) {
            return bArr;
        }
        throw new EOFException();
    }

    public static byte[] readOpaque16(InputStream inputStream) throws IOException {
        return readFully(readUint16(inputStream), inputStream);
    }

    public static byte[] readOpaque24(InputStream inputStream) throws IOException {
        return readFully(readUint24(inputStream), inputStream);
    }

    public static byte[] readOpaque8(InputStream inputStream) throws IOException {
        return readFully((int) readUint8(inputStream), inputStream);
    }

    public static Vector readSignatureAlgorithmsExtension(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new IllegalArgumentException("'extensionData' cannot be null");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Vector parseSupportedSignatureAlgorithms = parseSupportedSignatureAlgorithms(false, byteArrayInputStream);
        TlsProtocol.assertEmpty(byteArrayInputStream);
        return parseSupportedSignatureAlgorithms;
    }

    public static int readUint16(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if (read2 >= 0) {
            return (read << 8) | read2;
        }
        throw new EOFException();
    }

    public static int readUint16(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) | (bArr[i + 1] & 255);
    }

    public static int[] readUint16Array(int i, InputStream inputStream) throws IOException {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = readUint16(inputStream);
        }
        return iArr;
    }

    public static int readUint24(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        if (read3 >= 0) {
            return (read << 16) | (read2 << 8) | read3;
        }
        throw new EOFException();
    }

    public static int readUint24(byte[] bArr, int i) {
        int i2 = i + 1;
        return ((bArr[i] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255);
    }

    public static long readUint32(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if (read4 >= 0) {
            return ((long) ((read << 2) | (read2 << 16) | (read3 << 8) | read4)) & 4294967295L;
        }
        throw new EOFException();
    }

    public static long readUint32(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        return ((long) (((bArr[i] & 255) << 24) | ((bArr[i2] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i3] & 255) << 8) | (bArr[i3 + 1] & 255))) & 4294967295L;
    }

    public static long readUint48(InputStream inputStream) throws IOException {
        return (((long) readUint24(inputStream)) & 4294967295L) | ((((long) readUint24(inputStream)) & 4294967295L) << 24);
    }

    public static long readUint48(byte[] bArr, int i) {
        return (((long) readUint24(bArr, i + 3)) & 4294967295L) | ((((long) readUint24(bArr, i)) & 4294967295L) << 24);
    }

    public static short readUint8(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read >= 0) {
            return (short) read;
        }
        throw new EOFException();
    }

    public static short readUint8(byte[] bArr, int i) {
        return (short) bArr[i];
    }

    public static short[] readUint8Array(int i, InputStream inputStream) throws IOException {
        short[] sArr = new short[i];
        for (int i2 = 0; i2 < i; i2++) {
            sArr[i2] = readUint8(inputStream);
        }
        return sArr;
    }

    public static ProtocolVersion readVersion(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if (read2 >= 0) {
            return ProtocolVersion.get(read, read2);
        }
        throw new EOFException();
    }

    public static ProtocolVersion readVersion(byte[] bArr, int i) throws IOException {
        return ProtocolVersion.get(bArr[i] & 255, bArr[i + 1] & 255);
    }

    public static int readVersionRaw(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if (read2 >= 0) {
            return (read << 8) | read2;
        }
        throw new EOFException();
    }

    public static int readVersionRaw(byte[] bArr, int i) throws IOException {
        return (bArr[i] << 8) | bArr[i + 1];
    }

    static void trackHashAlgorithms(TlsHandshakeHash tlsHandshakeHash, Vector vector) {
        if (vector != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < vector.size()) {
                    tlsHandshakeHash.trackHashAlgorithm(((SignatureAndHashAlgorithm) vector.elementAt(i2)).getHash());
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    static void validateKeyUsage(Certificate certificate, int i) throws IOException {
        Extensions extensions = certificate.getTBSCertificate().getExtensions();
        if (extensions != null) {
            KeyUsage fromExtensions = KeyUsage.fromExtensions(extensions);
            if (fromExtensions != null && (fromExtensions.getBytes()[0] & 255 & i) != i) {
                throw new TlsFatalAlert(46);
            }
        }
    }

    private static Vector vectorOfOne(Object obj) {
        Vector vector = new Vector(1);
        vector.addElement(obj);
        return vector;
    }

    public static void verifySupportedSignatureAlgorithm(Vector vector, SignatureAndHashAlgorithm signatureAndHashAlgorithm) throws IOException {
        if (vector == null || vector.size() < 1 || vector.size() >= 32768) {
            throw new IllegalArgumentException("'supportedSignatureAlgorithms' must have length from 1 to (2^15 - 1)");
        } else if (signatureAndHashAlgorithm == null) {
            throw new IllegalArgumentException("'signatureAlgorithm' cannot be null");
        } else {
            if (signatureAndHashAlgorithm.getSignature() != 0) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= vector.size()) {
                        break;
                    }
                    SignatureAndHashAlgorithm signatureAndHashAlgorithm2 = (SignatureAndHashAlgorithm) vector.elementAt(i2);
                    if (signatureAndHashAlgorithm2.getHash() != signatureAndHashAlgorithm.getHash() || signatureAndHashAlgorithm2.getSignature() != signatureAndHashAlgorithm.getSignature()) {
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
            throw new TlsFatalAlert(47);
        }
    }

    public static void writeGMTUnixTime(byte[] bArr, int i) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        bArr[i] = (byte) (currentTimeMillis >>> 24);
        bArr[i + 1] = (byte) (currentTimeMillis >>> 16);
        bArr[i + 2] = (byte) (currentTimeMillis >>> 8);
        bArr[i + 3] = (byte) currentTimeMillis;
    }

    public static void writeOpaque16(byte[] bArr, OutputStream outputStream) throws IOException {
        checkUint16(bArr.length);
        writeUint16(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void writeOpaque24(byte[] bArr, OutputStream outputStream) throws IOException {
        checkUint24(bArr.length);
        writeUint24(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void writeOpaque8(byte[] bArr, OutputStream outputStream) throws IOException {
        checkUint8(bArr.length);
        writeUint8(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void writeUint16(int i, OutputStream outputStream) throws IOException {
        outputStream.write(i >>> 8);
        outputStream.write(i);
    }

    public static void writeUint16(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
    }

    public static void writeUint16Array(int[] iArr, OutputStream outputStream) throws IOException {
        for (int writeUint16 : iArr) {
            writeUint16(writeUint16, outputStream);
        }
    }

    public static void writeUint16Array(int[] iArr, byte[] bArr, int i) throws IOException {
        for (int writeUint16 : iArr) {
            writeUint16(writeUint16, bArr, i);
            i += 2;
        }
    }

    public static void writeUint16ArrayWithUint16Length(int[] iArr, OutputStream outputStream) throws IOException {
        int length = iArr.length * 2;
        checkUint16(length);
        writeUint16(length, outputStream);
        writeUint16Array(iArr, outputStream);
    }

    public static void writeUint16ArrayWithUint16Length(int[] iArr, byte[] bArr, int i) throws IOException {
        int length = iArr.length * 2;
        checkUint16(length);
        writeUint16(length, bArr, i);
        writeUint16Array(iArr, bArr, i + 2);
    }

    public static void writeUint24(int i, OutputStream outputStream) throws IOException {
        outputStream.write((byte) (i >>> 16));
        outputStream.write((byte) (i >>> 8));
        outputStream.write((byte) i);
    }

    public static void writeUint24(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) i;
    }

    public static void writeUint32(long j, OutputStream outputStream) throws IOException {
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) j));
    }

    public static void writeUint32(long j, byte[] bArr, int i) {
        bArr[i] = (byte) ((int) (j >>> 24));
        bArr[i + 1] = (byte) ((int) (j >>> 16));
        bArr[i + 2] = (byte) ((int) (j >>> 8));
        bArr[i + 3] = (byte) ((int) j);
    }

    public static void writeUint48(long j, OutputStream outputStream) throws IOException {
        outputStream.write((byte) ((int) (j >>> 40)));
        outputStream.write((byte) ((int) (j >>> 32)));
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) j));
    }

    public static void writeUint48(long j, byte[] bArr, int i) {
        bArr[i] = (byte) ((int) (j >>> 40));
        bArr[i + 1] = (byte) ((int) (j >>> 32));
        bArr[i + 2] = (byte) ((int) (j >>> 24));
        bArr[i + 3] = (byte) ((int) (j >>> 16));
        bArr[i + 4] = (byte) ((int) (j >>> 8));
        bArr[i + 5] = (byte) ((int) j);
    }

    public static void writeUint64(long j, OutputStream outputStream) throws IOException {
        outputStream.write((byte) ((int) (j >>> 56)));
        outputStream.write((byte) ((int) (j >>> 48)));
        outputStream.write((byte) ((int) (j >>> 40)));
        outputStream.write((byte) ((int) (j >>> 32)));
        outputStream.write((byte) ((int) (j >>> 24)));
        outputStream.write((byte) ((int) (j >>> 16)));
        outputStream.write((byte) ((int) (j >>> 8)));
        outputStream.write((byte) ((int) j));
    }

    public static void writeUint64(long j, byte[] bArr, int i) {
        bArr[i] = (byte) ((int) (j >>> 56));
        bArr[i + 1] = (byte) ((int) (j >>> 48));
        bArr[i + 2] = (byte) ((int) (j >>> 40));
        bArr[i + 3] = (byte) ((int) (j >>> 32));
        bArr[i + 4] = (byte) ((int) (j >>> 24));
        bArr[i + 5] = (byte) ((int) (j >>> 16));
        bArr[i + 6] = (byte) ((int) (j >>> 8));
        bArr[i + 7] = (byte) ((int) j);
    }

    public static void writeUint8(int i, OutputStream outputStream) throws IOException {
        outputStream.write(i);
    }

    public static void writeUint8(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
    }

    public static void writeUint8(short s, OutputStream outputStream) throws IOException {
        outputStream.write(s);
    }

    public static void writeUint8(short s, byte[] bArr, int i) {
        bArr[i] = (byte) s;
    }

    public static void writeUint8Array(short[] sArr, OutputStream outputStream) throws IOException {
        for (short writeUint8 : sArr) {
            writeUint8(writeUint8, outputStream);
        }
    }

    public static void writeUint8Array(short[] sArr, byte[] bArr, int i) throws IOException {
        for (short writeUint8 : sArr) {
            writeUint8(writeUint8, bArr, i);
            i++;
        }
    }

    public static void writeUint8ArrayWithUint8Length(short[] sArr, OutputStream outputStream) throws IOException {
        checkUint8(sArr.length);
        writeUint8(sArr.length, outputStream);
        writeUint8Array(sArr, outputStream);
    }

    public static void writeUint8ArrayWithUint8Length(short[] sArr, byte[] bArr, int i) throws IOException {
        checkUint8(sArr.length);
        writeUint8(sArr.length, bArr, i);
        writeUint8Array(sArr, bArr, i + 1);
    }

    public static void writeVersion(ProtocolVersion protocolVersion, OutputStream outputStream) throws IOException {
        outputStream.write(protocolVersion.getMajorVersion());
        outputStream.write(protocolVersion.getMinorVersion());
    }

    public static void writeVersion(ProtocolVersion protocolVersion, byte[] bArr, int i) {
        bArr[i] = (byte) protocolVersion.getMajorVersion();
        bArr[i + 1] = (byte) protocolVersion.getMinorVersion();
    }
}
