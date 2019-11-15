package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.X962Parameters;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.asn1.x9.X9ECPoint;
import org.bouncycastle.asn1.x9.X9IntegerConverter;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.bouncycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.bouncycastle.jce.ECGOST3410NamedCurveTable;
import org.bouncycastle.jce.interfaces.ECPointEncoder;
import org.bouncycastle.jce.spec.ECNamedCurveParameterSpec;
import org.bouncycastle.jce.spec.ECNamedCurveSpec;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.Strings;

public class JCEECPublicKey implements ECPublicKey, ECPointEncoder, org.bouncycastle.jce.interfaces.ECPublicKey {
    private String algorithm = "EC";
    private ECParameterSpec ecSpec;
    private GOST3410PublicKeyAlgParameters gostParams;
    private ECPoint q;
    private boolean withCompression;

    public JCEECPublicKey(String str, ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = str;
        this.ecSpec = eCPublicKeySpec.getParams();
        this.q = EC5Util.convertPoint(this.ecSpec, eCPublicKeySpec.getW(), false);
    }

    public JCEECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters) {
        this.algorithm = str;
        this.q = eCPublicKeyParameters.getQ();
        this.ecSpec = null;
    }

    public JCEECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ECParameterSpec eCParameterSpec) {
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        this.algorithm = str;
        this.q = eCPublicKeyParameters.getQ();
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), parameters);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public JCEECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, org.bouncycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        this.algorithm = str;
        this.q = eCPublicKeyParameters.getQ();
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), parameters);
        } else {
            this.ecSpec = EC5Util.convertSpec(EC5Util.convertCurve(eCParameterSpec.getCurve(), eCParameterSpec.getSeed()), eCParameterSpec);
        }
    }

    public JCEECPublicKey(String str, JCEECPublicKey jCEECPublicKey) {
        this.algorithm = str;
        this.q = jCEECPublicKey.q;
        this.ecSpec = jCEECPublicKey.ecSpec;
        this.withCompression = jCEECPublicKey.withCompression;
        this.gostParams = jCEECPublicKey.gostParams;
    }

    public JCEECPublicKey(String str, org.bouncycastle.jce.spec.ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = str;
        this.q = eCPublicKeySpec.getQ();
        if (eCPublicKeySpec.getParams() != null) {
            this.ecSpec = EC5Util.convertSpec(EC5Util.convertCurve(eCPublicKeySpec.getParams().getCurve(), eCPublicKeySpec.getParams().getSeed()), eCPublicKeySpec.getParams());
            return;
        }
        if (this.q.getCurve() == null) {
            this.q = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa().getCurve().createPoint(this.q.getAffineXCoord().toBigInteger(), this.q.getAffineYCoord().toBigInteger(), false);
        }
        this.ecSpec = null;
    }

    public JCEECPublicKey(ECPublicKey eCPublicKey) {
        this.algorithm = eCPublicKey.getAlgorithm();
        this.ecSpec = eCPublicKey.getParams();
        this.q = EC5Util.convertPoint(this.ecSpec, eCPublicKey.getW(), false);
    }

    JCEECPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        populateFromPubKeyInfo(subjectPublicKeyInfo);
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, ECDomainParameters eCDomainParameters) {
        return new ECParameterSpec(ellipticCurve, new java.security.spec.ECPoint(eCDomainParameters.getG().getAffineXCoord().toBigInteger(), eCDomainParameters.getG().getAffineYCoord().toBigInteger()), eCDomainParameters.getN(), eCDomainParameters.getH().intValue());
    }

    private void extractBytes(byte[] bArr, int i, BigInteger bigInteger) {
        byte[] bArr2;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < 32) {
            bArr2 = new byte[32];
            System.arraycopy(byteArray, 0, bArr2, bArr2.length - byteArray.length, byteArray.length);
        } else {
            bArr2 = byteArray;
        }
        for (int i2 = 0; i2 != 32; i2++) {
            bArr[i + i2] = bArr2[(bArr2.length - 1) - i2];
        }
    }

    private void populateFromPubKeyInfo(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        ECCurve eCCurve;
        if (subjectPublicKeyInfo.getAlgorithmId().getAlgorithm().equals(CryptoProObjectIdentifiers.gostR3410_2001)) {
            DERBitString publicKeyData = subjectPublicKeyInfo.getPublicKeyData();
            this.algorithm = "ECGOST3410";
            try {
                byte[] octets = ((ASN1OctetString) ASN1Primitive.fromByteArray(publicKeyData.getBytes())).getOctets();
                byte[] bArr = new byte[32];
                byte[] bArr2 = new byte[32];
                for (int i = 0; i != bArr.length; i++) {
                    bArr[i] = octets[31 - i];
                }
                for (int i2 = 0; i2 != bArr2.length; i2++) {
                    bArr2[i2] = octets[63 - i2];
                }
                this.gostParams = new GOST3410PublicKeyAlgParameters((ASN1Sequence) subjectPublicKeyInfo.getAlgorithmId().getParameters());
                ECNamedCurveParameterSpec parameterSpec = ECGOST3410NamedCurveTable.getParameterSpec(ECGOST3410NamedCurves.getName(this.gostParams.getPublicKeyParamSet()));
                ECCurve curve = parameterSpec.getCurve();
                EllipticCurve convertCurve = EC5Util.convertCurve(curve, parameterSpec.getSeed());
                this.q = curve.createPoint(new BigInteger(1, bArr), new BigInteger(1, bArr2), false);
                this.ecSpec = new ECNamedCurveSpec(ECGOST3410NamedCurves.getName(this.gostParams.getPublicKeyParamSet()), convertCurve, new java.security.spec.ECPoint(parameterSpec.getG().getAffineXCoord().toBigInteger(), parameterSpec.getG().getAffineYCoord().toBigInteger()), parameterSpec.getN(), parameterSpec.getH());
            } catch (IOException e) {
                throw new IllegalArgumentException("error recovering public key");
            }
        } else {
            X962Parameters x962Parameters = new X962Parameters((ASN1Primitive) subjectPublicKeyInfo.getAlgorithmId().getParameters());
            if (x962Parameters.isNamedCurve()) {
                ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) x962Parameters.getParameters();
                X9ECParameters namedCurveByOid = ECUtil.getNamedCurveByOid(aSN1ObjectIdentifier);
                ECCurve curve2 = namedCurveByOid.getCurve();
                this.ecSpec = new ECNamedCurveSpec(ECUtil.getCurveName(aSN1ObjectIdentifier), EC5Util.convertCurve(curve2, namedCurveByOid.getSeed()), new java.security.spec.ECPoint(namedCurveByOid.getG().getAffineXCoord().toBigInteger(), namedCurveByOid.getG().getAffineYCoord().toBigInteger()), namedCurveByOid.getN(), namedCurveByOid.getH());
                eCCurve = curve2;
            } else if (x962Parameters.isImplicitlyCA()) {
                this.ecSpec = null;
                eCCurve = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa().getCurve();
            } else {
                X9ECParameters instance = X9ECParameters.getInstance(x962Parameters.getParameters());
                ECCurve curve3 = instance.getCurve();
                this.ecSpec = new ECParameterSpec(EC5Util.convertCurve(curve3, instance.getSeed()), new java.security.spec.ECPoint(instance.getG().getAffineXCoord().toBigInteger(), instance.getG().getAffineYCoord().toBigInteger()), instance.getN(), instance.getH().intValue());
                eCCurve = curve3;
            }
            byte[] bytes = subjectPublicKeyInfo.getPublicKeyData().getBytes();
            ASN1OctetString dEROctetString = new DEROctetString(bytes);
            if (bytes[0] == 4 && bytes[1] == bytes.length - 2 && ((bytes[2] == 2 || bytes[2] == 3) && new X9IntegerConverter().getByteLength(eCCurve) >= bytes.length - 3)) {
                try {
                    dEROctetString = (ASN1OctetString) ASN1Primitive.fromByteArray(bytes);
                } catch (IOException e2) {
                    throw new IllegalArgumentException("error recovering public key");
                }
            }
            this.q = new X9ECPoint(eCCurve, dEROctetString).getPoint();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        populateFromPubKeyInfo(SubjectPublicKeyInfo.getInstance(ASN1Primitive.fromByteArray((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
    }

    public ECPoint engineGetQ() {
        return this.q;
    }

    /* access modifiers changed from: 0000 */
    public org.bouncycastle.jce.spec.ECParameterSpec engineGetSpec() {
        return this.ecSpec != null ? EC5Util.convertSpec(this.ecSpec, this.withCompression) : BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JCEECPublicKey)) {
            return false;
        }
        JCEECPublicKey jCEECPublicKey = (JCEECPublicKey) obj;
        return engineGetQ().equals(jCEECPublicKey.engineGetQ()) && engineGetSpec().equals(jCEECPublicKey.engineGetSpec());
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public byte[] getEncoded() {
        X962Parameters x962Parameters;
        SubjectPublicKeyInfo subjectPublicKeyInfo;
        ASN1Encodable x962Parameters2;
        if (this.algorithm.equals("ECGOST3410")) {
            if (this.gostParams != null) {
                x962Parameters2 = this.gostParams;
            } else if (this.ecSpec instanceof ECNamedCurveSpec) {
                x962Parameters2 = new GOST3410PublicKeyAlgParameters(ECGOST3410NamedCurves.getOID(((ECNamedCurveSpec) this.ecSpec).getName()), CryptoProObjectIdentifiers.gostR3411_94_CryptoProParamSet);
            } else {
                ECCurve convertCurve = EC5Util.convertCurve(this.ecSpec.getCurve());
                x962Parameters2 = new X962Parameters(new X9ECParameters(convertCurve, EC5Util.convertPoint(convertCurve, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf((long) this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            BigInteger bigInteger = this.q.getAffineXCoord().toBigInteger();
            BigInteger bigInteger2 = this.q.getAffineYCoord().toBigInteger();
            byte[] bArr = new byte[64];
            extractBytes(bArr, 0, bigInteger);
            extractBytes(bArr, 32, bigInteger2);
            try {
                subjectPublicKeyInfo = new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.gostR3410_2001, x962Parameters2), (ASN1Encodable) new DEROctetString(bArr));
            } catch (IOException e) {
                return null;
            }
        } else {
            if (this.ecSpec instanceof ECNamedCurveSpec) {
                ASN1ObjectIdentifier namedCurveOid = ECUtil.getNamedCurveOid(((ECNamedCurveSpec) this.ecSpec).getName());
                if (namedCurveOid == null) {
                    namedCurveOid = new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.ecSpec).getName());
                }
                x962Parameters = new X962Parameters(namedCurveOid);
            } else if (this.ecSpec == null) {
                x962Parameters = new X962Parameters((ASN1Null) DERNull.INSTANCE);
            } else {
                ECCurve convertCurve2 = EC5Util.convertCurve(this.ecSpec.getCurve());
                x962Parameters = new X962Parameters(new X9ECParameters(convertCurve2, EC5Util.convertPoint(convertCurve2, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf((long) this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            subjectPublicKeyInfo = new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, x962Parameters), ((ASN1OctetString) new X9ECPoint(engineGetQ().getCurve().createPoint(getQ().getAffineXCoord().toBigInteger(), getQ().getAffineYCoord().toBigInteger(), this.withCompression)).toASN1Primitive()).getOctets());
        }
        return KeyUtil.getEncodedSubjectPublicKeyInfo(subjectPublicKeyInfo);
    }

    public String getFormat() {
        return "X.509";
    }

    public org.bouncycastle.jce.spec.ECParameterSpec getParameters() {
        if (this.ecSpec == null) {
            return null;
        }
        return EC5Util.convertSpec(this.ecSpec, this.withCompression);
    }

    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    public ECPoint getQ() {
        return this.ecSpec == null ? this.q.getDetachedPoint() : this.q;
    }

    public java.security.spec.ECPoint getW() {
        return new java.security.spec.ECPoint(this.q.getAffineXCoord().toBigInteger(), this.q.getAffineYCoord().toBigInteger());
    }

    public int hashCode() {
        return engineGetQ().hashCode() ^ engineGetSpec().hashCode();
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        stringBuffer.append("EC Public Key").append(lineSeparator);
        stringBuffer.append("            X: ").append(this.q.getAffineXCoord().toBigInteger().toString(16)).append(lineSeparator);
        stringBuffer.append("            Y: ").append(this.q.getAffineYCoord().toBigInteger().toString(16)).append(lineSeparator);
        return stringBuffer.toString();
    }
}
