.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;
.super Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval;,
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval224;,
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval256;,
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval384;,
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval512;
    }
.end annotation


# instance fields
.field private buf:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected decryptOutputSize(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doFinal([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->update([BII)[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->opMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messageEncrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->opMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messageDecrypt([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected encryptOutputSize(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKeySize(Ljava/security/Key;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I

    move-result v0

    return v0

    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliecePointchevalCipher"

    return-object v0
.end method

.method protected initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v1, v0, p3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messageDecrypt([B)[B
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

.method public messageEncrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;->messageEncrypt([B)[B
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

.method public update([BII)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
