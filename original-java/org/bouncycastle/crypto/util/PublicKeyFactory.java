package org.bouncycastle.crypto.util;

import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

public class PublicKeyFactory {
    public static AsymmetricKeyParameter createKey(InputStream inputStream) throws IOException {
        return createKey(SubjectPublicKeyInfo.getInstance(new ASN1InputStream(inputStream).readObject()));
    }

    /* JADX WARNING: type inference failed for: r5v0 */
    /* JADX WARNING: type inference failed for: r5v1, types: [org.bouncycastle.crypto.params.DSAParameters] */
    /* JADX WARNING: type inference failed for: r5v2, types: [org.bouncycastle.crypto.params.DSAParameters] */
    /* JADX WARNING: type inference failed for: r5v5, types: [org.bouncycastle.crypto.params.DHValidationParameters] */
    /* JADX WARNING: type inference failed for: r5v6, types: [org.bouncycastle.crypto.params.DHValidationParameters] */
    /* JADX WARNING: type inference failed for: r5v7 */
    /* JADX WARNING: type inference failed for: r5v8 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r5v0
  assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], org.bouncycastle.crypto.params.DHValidationParameters, org.bouncycastle.crypto.params.DSAParameters]
  uses: [org.bouncycastle.crypto.params.DSAParameters, org.bouncycastle.crypto.params.DHValidationParameters]
  mth insns count: 141
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
    	at jadx.core.ProcessClass.process(ProcessClass.java:35)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.bouncycastle.crypto.params.AsymmetricKeyParameter createKey(org.bouncycastle.asn1.x509.SubjectPublicKeyInfo r8) throws java.io.IOException {
        /*
            r1 = 0
            r5 = 0
            org.bouncycastle.asn1.x509.AlgorithmIdentifier r2 = r8.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r3 = org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers.rsaEncryption
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L_0x001e
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r3 = org.bouncycastle.asn1.x509.X509ObjectIdentifiers.id_ea_rsa
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x0034
        L_0x001e:
            org.bouncycastle.asn1.ASN1Primitive r0 = r8.parsePublicKey()
            org.bouncycastle.asn1.pkcs.RSAPublicKey r2 = org.bouncycastle.asn1.pkcs.RSAPublicKey.getInstance(r0)
            org.bouncycastle.crypto.params.RSAKeyParameters r0 = new org.bouncycastle.crypto.params.RSAKeyParameters
            java.math.BigInteger r3 = r2.getModulus()
            java.math.BigInteger r2 = r2.getPublicExponent()
            r0.<init>(r1, r3, r2)
        L_0x0033:
            return r0
        L_0x0034:
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r3 = org.bouncycastle.asn1.x9.X9ObjectIdentifiers.dhpublicnumber
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x008d
            org.bouncycastle.asn1.ASN1Primitive r0 = r8.parsePublicKey()
            org.bouncycastle.asn1.x9.DHPublicKey r0 = org.bouncycastle.asn1.x9.DHPublicKey.getInstance(r0)
            java.math.BigInteger r7 = r0.getY()
            org.bouncycastle.asn1.ASN1Encodable r0 = r2.getParameters()
            org.bouncycastle.asn1.x9.DomainParameters r0 = org.bouncycastle.asn1.x9.DomainParameters.getInstance(r0)
            java.math.BigInteger r1 = r0.getP()
            java.math.BigInteger r2 = r0.getG()
            java.math.BigInteger r3 = r0.getQ()
            java.math.BigInteger r4 = r0.getJ()
            if (r4 == 0) goto L_0x01d9
            java.math.BigInteger r4 = r0.getJ()
        L_0x006a:
            org.bouncycastle.asn1.x9.ValidationParams r0 = r0.getValidationParams()
            if (r0 == 0) goto L_0x0081
            byte[] r6 = r0.getSeed()
            java.math.BigInteger r0 = r0.getPgenCounter()
            org.bouncycastle.crypto.params.DHValidationParameters r5 = new org.bouncycastle.crypto.params.DHValidationParameters
            int r0 = r0.intValue()
            r5.<init>(r6, r0)
        L_0x0081:
            org.bouncycastle.crypto.params.DHPublicKeyParameters r6 = new org.bouncycastle.crypto.params.DHPublicKeyParameters
            org.bouncycastle.crypto.params.DHParameters r0 = new org.bouncycastle.crypto.params.DHParameters
            r0.<init>(r1, r2, r3, r4, r5)
            r6.<init>(r7, r0)
            r0 = r6
            goto L_0x0033
        L_0x008d:
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r3 = org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers.dhKeyAgreement
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x00cb
            org.bouncycastle.asn1.ASN1Encodable r0 = r2.getParameters()
            org.bouncycastle.asn1.pkcs.DHParameter r2 = org.bouncycastle.asn1.pkcs.DHParameter.getInstance(r0)
            org.bouncycastle.asn1.ASN1Primitive r0 = r8.parsePublicKey()
            org.bouncycastle.asn1.ASN1Integer r0 = (org.bouncycastle.asn1.ASN1Integer) r0
            java.math.BigInteger r3 = r2.getL()
            if (r3 != 0) goto L_0x00c6
        L_0x00ad:
            org.bouncycastle.crypto.params.DHParameters r3 = new org.bouncycastle.crypto.params.DHParameters
            java.math.BigInteger r4 = r2.getP()
            java.math.BigInteger r2 = r2.getG()
            r3.<init>(r4, r2, r5, r1)
            org.bouncycastle.crypto.params.DHPublicKeyParameters r1 = new org.bouncycastle.crypto.params.DHPublicKeyParameters
            java.math.BigInteger r0 = r0.getValue()
            r1.<init>(r0, r3)
            r0 = r1
            goto L_0x0033
        L_0x00c6:
            int r1 = r3.intValue()
            goto L_0x00ad
        L_0x00cb:
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.oiw.OIWObjectIdentifiers.elGamalAlgorithm
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00fe
            org.bouncycastle.asn1.ASN1Encodable r0 = r2.getParameters()
            org.bouncycastle.asn1.oiw.ElGamalParameter r2 = org.bouncycastle.asn1.oiw.ElGamalParameter.getInstance(r0)
            org.bouncycastle.asn1.ASN1Primitive r0 = r8.parsePublicKey()
            org.bouncycastle.asn1.ASN1Integer r0 = (org.bouncycastle.asn1.ASN1Integer) r0
            org.bouncycastle.crypto.params.ElGamalPublicKeyParameters r1 = new org.bouncycastle.crypto.params.ElGamalPublicKeyParameters
            java.math.BigInteger r0 = r0.getValue()
            org.bouncycastle.crypto.params.ElGamalParameters r3 = new org.bouncycastle.crypto.params.ElGamalParameters
            java.math.BigInteger r4 = r2.getP()
            java.math.BigInteger r2 = r2.getG()
            r3.<init>(r4, r2)
            r1.<init>(r0, r3)
            r0 = r1
            goto L_0x0033
        L_0x00fe:
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.x9.X9ObjectIdentifiers.id_dsa
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0116
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.oiw.OIWObjectIdentifiers.dsaWithSHA1
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0147
        L_0x0116:
            org.bouncycastle.asn1.ASN1Primitive r0 = r8.parsePublicKey()
            org.bouncycastle.asn1.ASN1Integer r0 = (org.bouncycastle.asn1.ASN1Integer) r0
            org.bouncycastle.asn1.ASN1Encodable r1 = r2.getParameters()
            if (r1 == 0) goto L_0x013b
            org.bouncycastle.asn1.ASN1Primitive r1 = r1.toASN1Primitive()
            org.bouncycastle.asn1.x509.DSAParameter r1 = org.bouncycastle.asn1.x509.DSAParameter.getInstance(r1)
            org.bouncycastle.crypto.params.DSAParameters r5 = new org.bouncycastle.crypto.params.DSAParameters
            java.math.BigInteger r2 = r1.getP()
            java.math.BigInteger r3 = r1.getQ()
            java.math.BigInteger r1 = r1.getG()
            r5.<init>(r2, r3, r1)
        L_0x013b:
            org.bouncycastle.crypto.params.DSAPublicKeyParameters r1 = new org.bouncycastle.crypto.params.DSAPublicKeyParameters
            java.math.BigInteger r0 = r0.getValue()
            r1.<init>(r0, r5)
            r0 = r1
            goto L_0x0033
        L_0x0147:
            org.bouncycastle.asn1.ASN1ObjectIdentifier r0 = r2.getAlgorithm()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.x9.X9ObjectIdentifiers.id_ecPublicKey
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x01cf
            org.bouncycastle.asn1.ASN1Encodable r0 = r2.getParameters()
            org.bouncycastle.asn1.x9.X962Parameters r0 = org.bouncycastle.asn1.x9.X962Parameters.getInstance(r0)
            boolean r1 = r0.isNamedCurve()
            if (r1 == 0) goto L_0x01ad
            org.bouncycastle.asn1.ASN1Primitive r1 = r0.getParameters()
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = (org.bouncycastle.asn1.ASN1ObjectIdentifier) r1
            org.bouncycastle.asn1.x9.X9ECParameters r0 = org.bouncycastle.crypto.ec.CustomNamedCurves.getByOID(r1)
            if (r0 != 0) goto L_0x01d7
            org.bouncycastle.asn1.x9.X9ECParameters r0 = org.bouncycastle.asn1.x9.ECNamedCurveTable.getByOID(r1)
            r7 = r0
        L_0x0172:
            org.bouncycastle.crypto.params.ECNamedDomainParameters r0 = new org.bouncycastle.crypto.params.ECNamedDomainParameters
            org.bouncycastle.math.ec.ECCurve r2 = r7.getCurve()
            org.bouncycastle.math.ec.ECPoint r3 = r7.getG()
            java.math.BigInteger r4 = r7.getN()
            java.math.BigInteger r5 = r7.getH()
            byte[] r6 = r7.getSeed()
            r0.<init>(r1, r2, r3, r4, r5, r6)
        L_0x018b:
            org.bouncycastle.asn1.DEROctetString r1 = new org.bouncycastle.asn1.DEROctetString
            org.bouncycastle.asn1.DERBitString r2 = r8.getPublicKeyData()
            byte[] r2 = r2.getBytes()
            r1.<init>(r2)
            org.bouncycastle.asn1.x9.X9ECPoint r2 = new org.bouncycastle.asn1.x9.X9ECPoint
            org.bouncycastle.math.ec.ECCurve r3 = r7.getCurve()
            r2.<init>(r3, r1)
            org.bouncycastle.crypto.params.ECPublicKeyParameters r1 = new org.bouncycastle.crypto.params.ECPublicKeyParameters
            org.bouncycastle.math.ec.ECPoint r2 = r2.getPoint()
            r1.<init>(r2, r0)
            r0 = r1
            goto L_0x0033
        L_0x01ad:
            org.bouncycastle.asn1.ASN1Primitive r0 = r0.getParameters()
            org.bouncycastle.asn1.x9.X9ECParameters r7 = org.bouncycastle.asn1.x9.X9ECParameters.getInstance(r0)
            org.bouncycastle.crypto.params.ECDomainParameters r0 = new org.bouncycastle.crypto.params.ECDomainParameters
            org.bouncycastle.math.ec.ECCurve r1 = r7.getCurve()
            org.bouncycastle.math.ec.ECPoint r2 = r7.getG()
            java.math.BigInteger r3 = r7.getN()
            java.math.BigInteger r4 = r7.getH()
            byte[] r5 = r7.getSeed()
            r0.<init>(r1, r2, r3, r4, r5)
            goto L_0x018b
        L_0x01cf:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "algorithm identifier in key not recognised"
            r0.<init>(r1)
            throw r0
        L_0x01d7:
            r7 = r0
            goto L_0x0172
        L_0x01d9:
            r4 = r5
            goto L_0x006a
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.util.PublicKeyFactory.createKey(org.bouncycastle.asn1.x509.SubjectPublicKeyInfo):org.bouncycastle.crypto.params.AsymmetricKeyParameter");
    }

    public static AsymmetricKeyParameter createKey(byte[] bArr) throws IOException {
        return createKey(SubjectPublicKeyInfo.getInstance(ASN1Primitive.fromByteArray(bArr)));
    }
}
