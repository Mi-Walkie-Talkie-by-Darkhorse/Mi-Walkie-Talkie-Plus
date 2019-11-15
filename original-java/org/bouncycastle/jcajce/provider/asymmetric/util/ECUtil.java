package org.bouncycastle.jcajce.provider.asymmetric.util;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.anssi.ANSSINamedCurves;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x9.ECNamedCurveTable;
import org.bouncycastle.asn1.x9.X962NamedCurves;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.crypto.ec.CustomNamedCurves;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPublicKey;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.spec.ECParameterSpec;

public class ECUtil {
    static int[] convertMidTerms(int[] iArr) {
        int[] iArr2 = new int[3];
        if (iArr.length == 1) {
            iArr2[0] = iArr[0];
        } else if (iArr.length != 3) {
            throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
        } else if (iArr[0] < iArr[1] && iArr[0] < iArr[2]) {
            iArr2[0] = iArr[0];
            if (iArr[1] < iArr[2]) {
                iArr2[1] = iArr[1];
                iArr2[2] = iArr[2];
            } else {
                iArr2[1] = iArr[2];
                iArr2[2] = iArr[1];
            }
        } else if (iArr[1] < iArr[2]) {
            iArr2[0] = iArr[1];
            if (iArr[0] < iArr[2]) {
                iArr2[1] = iArr[0];
                iArr2[2] = iArr[2];
            } else {
                iArr2[1] = iArr[2];
                iArr2[2] = iArr[0];
            }
        } else {
            iArr2[0] = iArr[2];
            if (iArr[0] < iArr[1]) {
                iArr2[1] = iArr[0];
                iArr2[2] = iArr[1];
            } else {
                iArr2[1] = iArr[1];
                iArr2[2] = iArr[0];
            }
        }
        return iArr2;
    }

    public static AsymmetricKeyParameter generatePrivateKeyParameter(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof ECPrivateKey) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) privateKey;
            ECParameterSpec parameters = eCPrivateKey.getParameters();
            ECParameterSpec eCParameterSpec = parameters == null ? BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa() : parameters;
            return new ECPrivateKeyParameters(eCPrivateKey.getD(), new ECDomainParameters(eCParameterSpec.getCurve(), eCParameterSpec.getG(), eCParameterSpec.getN(), eCParameterSpec.getH(), eCParameterSpec.getSeed()));
        } else if (privateKey instanceof java.security.interfaces.ECPrivateKey) {
            java.security.interfaces.ECPrivateKey eCPrivateKey2 = (java.security.interfaces.ECPrivateKey) privateKey;
            ECParameterSpec convertSpec = EC5Util.convertSpec(eCPrivateKey2.getParams(), false);
            return new ECPrivateKeyParameters(eCPrivateKey2.getS(), new ECDomainParameters(convertSpec.getCurve(), convertSpec.getG(), convertSpec.getN(), convertSpec.getH(), convertSpec.getSeed()));
        } else {
            try {
                byte[] encoded = privateKey.getEncoded();
                if (encoded == null) {
                    throw new InvalidKeyException("no encoding for EC private key");
                }
                PrivateKey privateKey2 = BouncyCastleProvider.getPrivateKey(PrivateKeyInfo.getInstance(encoded));
                if (privateKey2 instanceof java.security.interfaces.ECPrivateKey) {
                    return generatePrivateKeyParameter(privateKey2);
                }
                throw new InvalidKeyException("can't identify EC private key.");
            } catch (Exception e) {
                throw new InvalidKeyException("cannot identify EC private key: " + e.toString());
            }
        }
    }

    public static AsymmetricKeyParameter generatePublicKeyParameter(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
            ECParameterSpec parameters = eCPublicKey.getParameters();
            if (parameters != null) {
                return new ECPublicKeyParameters(eCPublicKey.getQ(), new ECDomainParameters(parameters.getCurve(), parameters.getG(), parameters.getN(), parameters.getH(), parameters.getSeed()));
            }
            ECParameterSpec ecImplicitlyCa = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
            return new ECPublicKeyParameters(((BCECPublicKey) eCPublicKey).engineGetQ(), new ECDomainParameters(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getG(), ecImplicitlyCa.getN(), ecImplicitlyCa.getH(), ecImplicitlyCa.getSeed()));
        } else if (publicKey instanceof java.security.interfaces.ECPublicKey) {
            java.security.interfaces.ECPublicKey eCPublicKey2 = (java.security.interfaces.ECPublicKey) publicKey;
            ECParameterSpec convertSpec = EC5Util.convertSpec(eCPublicKey2.getParams(), false);
            return new ECPublicKeyParameters(EC5Util.convertPoint(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), new ECDomainParameters(convertSpec.getCurve(), convertSpec.getG(), convertSpec.getN(), convertSpec.getH(), convertSpec.getSeed()));
        } else {
            try {
                byte[] encoded = publicKey.getEncoded();
                if (encoded == null) {
                    throw new InvalidKeyException("no encoding for EC public key");
                }
                PublicKey publicKey2 = BouncyCastleProvider.getPublicKey(SubjectPublicKeyInfo.getInstance(encoded));
                if (publicKey2 instanceof java.security.interfaces.ECPublicKey) {
                    return generatePublicKeyParameter(publicKey2);
                }
                throw new InvalidKeyException("cannot identify EC public key.");
            } catch (Exception e) {
                throw new InvalidKeyException("cannot identify EC public key: " + e.toString());
            }
        }
    }

    public static String getCurveName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String name = X962NamedCurves.getName(aSN1ObjectIdentifier);
        if (name != null) {
            return name;
        }
        String name2 = SECNamedCurves.getName(aSN1ObjectIdentifier);
        if (name2 == null) {
            name2 = NISTNamedCurves.getName(aSN1ObjectIdentifier);
        }
        if (name2 == null) {
            name2 = TeleTrusTNamedCurves.getName(aSN1ObjectIdentifier);
        }
        return name2 == null ? ECGOST3410NamedCurves.getName(aSN1ObjectIdentifier) : name2;
    }

    public static X9ECParameters getNamedCurveByName(String str) {
        X9ECParameters byName = CustomNamedCurves.getByName(str);
        if (byName != null) {
            return byName;
        }
        X9ECParameters byName2 = X962NamedCurves.getByName(str);
        if (byName2 == null) {
            byName2 = SECNamedCurves.getByName(str);
        }
        if (byName2 == null) {
            byName2 = NISTNamedCurves.getByName(str);
        }
        return byName2 == null ? TeleTrusTNamedCurves.getByName(str) : byName2;
    }

    public static X9ECParameters getNamedCurveByOid(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        X9ECParameters byOID = CustomNamedCurves.getByOID(aSN1ObjectIdentifier);
        if (byOID != null) {
            return byOID;
        }
        X9ECParameters byOID2 = X962NamedCurves.getByOID(aSN1ObjectIdentifier);
        if (byOID2 == null) {
            byOID2 = SECNamedCurves.getByOID(aSN1ObjectIdentifier);
        }
        if (byOID2 == null) {
            byOID2 = NISTNamedCurves.getByOID(aSN1ObjectIdentifier);
        }
        return byOID2 == null ? TeleTrusTNamedCurves.getByOID(aSN1ObjectIdentifier) : byOID2;
    }

    public static ASN1ObjectIdentifier getNamedCurveOid(String str) {
        if (str.indexOf(32) > 0) {
            str = str.substring(str.indexOf(32) + 1);
        }
        try {
            return (str.charAt(0) < '0' || str.charAt(0) > '2') ? lookupOidByName(str) : new ASN1ObjectIdentifier(str);
        } catch (IllegalArgumentException e) {
            return lookupOidByName(str);
        }
    }

    public static ASN1ObjectIdentifier getNamedCurveOid(ECParameterSpec eCParameterSpec) {
        Enumeration names = ECNamedCurveTable.getNames();
        while (names.hasMoreElements()) {
            String str = (String) names.nextElement();
            X9ECParameters byName = ECNamedCurveTable.getByName(str);
            if (byName.getN().equals(eCParameterSpec.getN()) && byName.getH().equals(eCParameterSpec.getH()) && byName.getCurve().equals(eCParameterSpec.getCurve()) && byName.getG().equals(eCParameterSpec.getG())) {
                return ECNamedCurveTable.getOID(str);
            }
        }
        return null;
    }

    public static int getOrderBitLength(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger != null) {
            return bigInteger.bitLength();
        }
        ECParameterSpec ecImplicitlyCa = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
        return ecImplicitlyCa == null ? bigInteger2.bitLength() : ecImplicitlyCa.getN().bitLength();
    }

    private static ASN1ObjectIdentifier lookupOidByName(String str) {
        ASN1ObjectIdentifier oid = X962NamedCurves.getOID(str);
        if (oid != null) {
            return oid;
        }
        ASN1ObjectIdentifier oid2 = SECNamedCurves.getOID(str);
        if (oid2 == null) {
            oid2 = NISTNamedCurves.getOID(str);
        }
        if (oid2 == null) {
            oid2 = TeleTrusTNamedCurves.getOID(str);
        }
        if (oid2 == null) {
            oid2 = ECGOST3410NamedCurves.getOID(str);
        }
        return oid2 == null ? ANSSINamedCurves.getOID(str) : oid2;
    }
}
