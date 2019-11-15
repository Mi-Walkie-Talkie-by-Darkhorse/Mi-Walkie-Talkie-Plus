.class public Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;
.super Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;


# instance fields
.field protected serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/bouncycastle/crypto/params/DHParameters;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePrivateKey:Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;)Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v5, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v5, v5

    invoke-interface {v2, v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v3, v3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v3, v3

    invoke-interface {v2, v4, v6, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/bouncycastle/crypto/Digest;)V

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v2, v3, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/tls/DigitallySigned;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/tls/DigitallySigned;-><init>(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverPublicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    iget-object v1, p3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    iget-object v1, p3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p3, Lorg/bouncycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    return-object v0
.end method

.method public processServerCredentials(Lorg/bouncycastle/crypto/tls/TlsCredentials;)V
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
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/bouncycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->processServerCertificate(Lorg/bouncycastle/crypto/tls/Certificate;)V

    check-cast p1, Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;

    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/bouncycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;-><init>()V

    new-instance v2, Lorg/bouncycastle/util/io/TeeInputStream;

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/ServerDHParams;->parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/ServerDHParams;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->parseSignature(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/DigitallySigned;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->tlsSigner:Lorg/bouncycastle/crypto/tls/TlsSigner;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->initVerifyer(Lorg/bouncycastle/crypto/tls/TlsSigner;Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/tls/SecurityParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/bouncycastle/crypto/Signer;)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/tls/ServerDHParams;->getPublicKey()Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;)Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePublicKey:Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->validateDHParameters(Lorg/bouncycastle/crypto/params/DHParameters;)Lorg/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/bouncycastle/crypto/params/DHParameters;

    return-void
.end method
