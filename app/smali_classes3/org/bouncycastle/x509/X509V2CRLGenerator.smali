.class public Lorg/bouncycastle/x509/X509V2CRLGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;
    }
.end annotation


# instance fields
.field private extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v0, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    return-void
.end method

.method private generateCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    return-object v0
.end method

.method private generateJcaObject(Lorg/bouncycastle/asn1/x509/TBSCertList;[B)Ljava/security/cert/X509CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/jce/provider/X509CRLObject;

    new-instance v2, Lorg/bouncycastle/asn1/x509/CertificateList;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/CertificateList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    return-object v1
.end method


# virtual methods
.method public addCRL(Ljava/security/cert/X509CRL;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing encoding of CRL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;I)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;I)V

    return-void
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;ILjava/util/Date;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v3, p4}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3, v3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-void
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-static {p3}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->signatureAlgorithm:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/x509/X509Util;->calculateSignature(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateJcaObject(Lorg/bouncycastle/asn1/x509/TBSCertList;[B)Ljava/security/cert/X509CRL;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;

    const-string v2, "cannot generate CRL encoding"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lorg/bouncycastle/x509/X509Util;->calculateSignature(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateJcaObject(Lorg/bouncycastle/asn1/x509/TBSCertList;[B)Ljava/security/cert/X509CRL;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;

    const-string v2, "cannot generate CRL encoding"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;)Ljava/security/cert/X509CRL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "BC provider not installed!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object v0

    return-object v0
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "BC provider not installed!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    return-void
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V

    return-void
.end method

.method public setNextUpdate(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->signatureAlgorithm:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, p1}, Lorg/bouncycastle/x509/X509Util;->getSigAlgID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown signature type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThisUpdate(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method
