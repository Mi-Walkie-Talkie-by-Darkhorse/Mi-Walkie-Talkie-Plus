.class public Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;


# instance fields
.field protected agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

.field protected clientECPointFormats:[S

.field protected ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field protected ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field protected namedCurves:[I

.field protected serverECPointFormats:[S

.field protected serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field protected tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(ILjava/util/Vector;[I[S[S)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->namedCurves:[I

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->clientECPointFormats:[S

    iput-object p5, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->serverECPointFormats:[S

    return-void

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/TlsECDSASigner;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->serverECPointFormats:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;[SLorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    :cond_0
    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;->generateAgreement(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->calculateECDHBasicAgreement(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->init(Lorg/bouncycastle/crypto/tls/TlsContext;)V

    :cond_0
    return-void
.end method

.method public processClientCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public processClientCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->agreementCredentials:Lorg/bouncycastle/crypto/tls/TlsAgreementCredentials;

    :cond_0
    return-void

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePrivateKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->serverECPointFormats:[S

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->deserializeECPublicKey([SLorg/bouncycastle/crypto/params/ECDomainParameters;[B)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    goto :goto_0
.end method

.method public processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2e

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

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsECCUtils;->validateECPublicKey(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->ecAgreePublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    :goto_0
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2b

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_2
    const/16 v0, 0x80

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/bouncycastle/asn1/x509/Certificate;I)V

    goto :goto_0
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsECDHKeyExchange;->keyExchange:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
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
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
