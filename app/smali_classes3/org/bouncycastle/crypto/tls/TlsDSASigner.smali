.class public abstract Lorg/bouncycastle/crypto/tls/TlsDSASigner;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createDSAImpl(S)Lorg/bouncycastle/crypto/DSA;
.end method

.method public createSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public createVerifyer(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public generateRawSignature(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {p0, p1, v2, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-interface {v0, p3, v1, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    :goto_0
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v2, p3

    invoke-interface {v0, p3, v1, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    goto :goto_0
.end method

.method protected abstract getSignatureAlgorithm()S
.end method

.method protected makeInitParameters(ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 0

    return-object p2
.end method

.method protected makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->getSignatureAlgorithm()S

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x2

    move v1, v0

    :goto_1
    if-eqz p2, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    :goto_2
    new-instance v2, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->createDSAImpl(S)Lorg/bouncycastle/crypto/DSA;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeInitParameters(ZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-interface {v2, p3, v0}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v2

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    goto :goto_2
.end method

.method public verifyRawSignature(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2, p3}, Lorg/bouncycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    if-nez p1, :cond_0

    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-interface {v0, p4, v1, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    :goto_0
    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v0

    return v0

    :cond_0
    array-length v1, p4

    invoke-interface {v0, p4, v2, v1}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    goto :goto_0
.end method
