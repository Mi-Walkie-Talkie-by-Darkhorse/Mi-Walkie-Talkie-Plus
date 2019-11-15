.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/bouncycastle/crypto/BufferedBlockCipher;)Lorg/bouncycastle/jce/spec/IESParameterSpec;
    .locals 8

    const/16 v7, 0x100

    const/16 v6, 0x50

    const/16 v5, 0x40

    const/16 v4, 0x80

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {v0, v3, v3, v4}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RC2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RC5-32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RC5-64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {v0, v3, v3, v5, v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKIPJACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {v0, v3, v3, v6, v6}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOST28147"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {v0, v3, v3, v7, v7}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {v0, v3, v3, v4, v4}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    goto :goto_0
.end method
