.class public Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;


# instance fields
.field protected premasterSecret:[B

.field protected rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

.field protected serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    return-void
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsRSAUtils;->generateEncryptedPreMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->premasterSecret:[B

    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->premasterSecret:[B

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->premasterSecret:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->premasterSecret:[B

    return-object v0
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-void
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;->decryptPreMasterSecret([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->premasterSecret:[B

    return-void

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2b

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->rsaServerPublicKey:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    const/16 v0, 0x20

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsRSAKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsEncryptionCredentials;

    return-void
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/bouncycastle/crypto/tls/CertificateRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-short v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected validateRSAPublicKey(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    return-object p1
.end method
