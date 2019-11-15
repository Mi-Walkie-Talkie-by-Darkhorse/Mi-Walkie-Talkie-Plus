.class public Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.super Ljava/security/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha224;,
        Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha256;,
        Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha384;,
        Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha512;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->generateSignature([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->verifySignature([B[B)Z

    move-result v0

    return v0
.end method
