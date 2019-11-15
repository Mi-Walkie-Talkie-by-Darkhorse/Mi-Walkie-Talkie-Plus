.class public abstract Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;
.super Lorg/bouncycastle/pqc/jcajce/provider/util/CipherSpiExt;


# instance fields
.field protected buf:Ljava/io/ByteArrayOutputStream;

.field protected cipherTextSize:I

.field protected maxPlainTextSize:I

.field protected paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/CipherSpiExt;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected checkLength(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->maxPlainTextSize:I

    if-le v0, v1, :cond_1

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The length of the plaintext ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes) is not supported by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "the cipher (max. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->maxPlainTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->cipherTextSize:I

    if-eq v0, v1, :cond_1

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal ciphertext length (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->cipherTextSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final doFinal([BII[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    array-length v0, p4

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->getOutputSize(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->doFinal([BII)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    return v0
.end method

.method public final doFinal([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->checkLength(I)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->update([BII)[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->messageEncrypt([B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->messageDecrypt([B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getBlockSize()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->maxPlainTextSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->cipherTextSize:I

    goto :goto_0
.end method

.method public final getIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int v1, p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->getBlockSize()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final getParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method protected abstract initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public final initDecrypt(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "This cipher needs algorithm parameters for initialization (cannot be null)."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public final initEncrypt(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "This cipher needs algorithm parameters for initialization (cannot be null)."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initEncrypt(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "This cipher needs algorithm parameters for initialization (cannot be null)."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public final initEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->opMode:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected abstract messageDecrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract messageEncrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected final setMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final setPadding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final update([BII[BI)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->update([BII)[B

    const/4 v0, 0x0

    return v0
.end method

.method public final update([BII)[B
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
