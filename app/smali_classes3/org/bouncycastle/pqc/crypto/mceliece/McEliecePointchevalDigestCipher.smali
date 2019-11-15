.class public Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;
.super Ljava/lang/Object;


# instance fields
.field private forEncrypting:Z

.field private final mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

.field private final messDigest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/MessageEncryptor;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->forEncrypting:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encrypting Requires Public Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Decrypting Requires Private Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/MessageEncryptor;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->forEncrypting:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "McEliecePointchevalDigestCipher not initialised for decrypting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v1, p1}, Lorg/bouncycastle/pqc/crypto/MessageEncryptor;->messageDecrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public messageEncrypt()[B
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->forEncrypting:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "McEliecePointchevalDigestCipher not initialised for encrypting."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->mcElieceCCA2Cipher:Lorg/bouncycastle/pqc/crypto/MessageEncryptor;

    invoke-interface {v2, v1}, Lorg/bouncycastle/pqc/crypto/MessageEncryptor;->messageEncrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalDigestCipher;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
