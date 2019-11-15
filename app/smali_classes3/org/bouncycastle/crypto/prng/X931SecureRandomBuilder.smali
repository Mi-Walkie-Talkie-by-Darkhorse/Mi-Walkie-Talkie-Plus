.class public Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;
.super Ljava/lang/Object;


# instance fields
.field private dateTimeVector:[B

.field private entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    new-instance v0, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/crypto/prng/BasicEntropySourceProvider;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/params/KeyParameter;Z)Lorg/bouncycastle/crypto/prng/X931SecureRandom;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v0, Lorg/bouncycastle/crypto/prng/X931SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    new-instance v2, Lorg/bouncycastle/crypto/prng/X931RNG;

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lorg/bouncycastle/crypto/prng/X931RNG;-><init>(Lorg/bouncycastle/crypto/BlockCipher;[BLorg/bouncycastle/crypto/prng/EntropySource;)V

    invoke-direct {v0, v1, v2, p3}, Lorg/bouncycastle/crypto/prng/X931SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/X931RNG;Z)V

    return-object v0
.end method

.method public setDateTimeVector([B)Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    return-object p0
.end method
