.class public Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;
.super Lorg/bouncycastle/crypto/CipherKeyGenerator;


# static fields
.field private static final R_MASK_HIGH_4:B = 0xft

.field private static final R_MASK_LOW_2:B = -0x4t


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method

.method public static checkKey([B)V
    .locals 4

    const/4 v3, -0x4

    const/16 v2, 0xf

    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 key must be 256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x13

    aget-byte v0, p0, v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    const/16 v0, 0x17

    aget-byte v0, p0, v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    const/16 v0, 0x1b

    aget-byte v0, p0, v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    const/16 v0, 0x1f

    aget-byte v0, p0, v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    const/16 v0, 0x14

    aget-byte v0, p0, v0

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    const/16 v0, 0x18

    aget-byte v0, p0, v0

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    const/16 v0, 0x1c

    aget-byte v0, p0, v0

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->checkMask(BB)V

    return-void
.end method

.method private static checkMask(BB)V
    .locals 2

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid format for r portion of Poly1305 key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static clamp([B)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 key must be 256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x13

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x17

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x1b

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x1f

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x14

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x18

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v0, 0x1c

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;->clamp([B)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
