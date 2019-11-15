.class public Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;
.super Lorg/bouncycastle/crypto/generators/DESKeyGenerator;


# static fields
.field private static final MAX_IT:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    new-array v2, v0, [B

    move v0, v1

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/params/DESedeParameters;->setOddParity([B)V

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    array-length v3, v2

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    array-length v0, v2

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isRealEDEKey([BI)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to generate DES-EDE key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v2
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4

    const/16 v3, 0x18

    const/16 v2, 0x10

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    :cond_0
    iput v3, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    iput v2, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->strength:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DESede key must be 192 or 128 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
