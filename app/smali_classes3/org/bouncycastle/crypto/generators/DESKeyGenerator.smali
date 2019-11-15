.class public Lorg/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lorg/bouncycastle/crypto/CipherKeyGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_0
    iput v2, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
