.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/bouncycastle/crypto/BufferedBlockCipher;)Lorg/bouncycastle/jce/spec/IESParameterSpec;
    .locals 4

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {p0, v1, v1, v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RC2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RC5-32"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RC5-64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKIPJACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v0, 0x50

    invoke-direct {p0, v1, v1, v0, v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0

    :cond_2
    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "GOST28147"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v0, 0x100

    invoke-direct {p0, v1, v1, v0, v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {p0, v1, v1, v0, v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0

    :cond_4
    :goto_0
    new-instance p0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/16 v0, 0x40

    invoke-direct {p0, v1, v1, v0, v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0
.end method
