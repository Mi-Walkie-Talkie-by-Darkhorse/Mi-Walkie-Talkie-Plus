.class public Lorg/bouncycastle/crypto/tls/TlsRSASigner;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected createRSAImpl()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-object v0
.end method

.method public createSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public createVerifyer(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

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

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {p0, p1, v2, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p3

    invoke-interface {v0, p3, v1, v2}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Signer;->generateSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public isValidPublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eq v0, v2, :cond_1

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

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/signers/RSADigestSigner;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->getOIDForHashAlgorithm(S)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :goto_2
    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0

    :cond_3
    if-nez p1, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/signers/GenericSigner;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->createRSAImpl()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/signers/GenericSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V

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

    invoke-virtual {p0, p1, v0, v2, p3}, Lorg/bouncycastle/crypto/tls/TlsRSASigner;->makeSigner(Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/bouncycastle/crypto/CipherParameters;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    array-length v1, p4

    invoke-interface {v0, p4, v2, v1}, Lorg/bouncycastle/crypto/Signer;->update([BII)V

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/Signer;->verifySignature([B)Z

    move-result v0

    return v0
.end method
