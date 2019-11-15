.class public Lorg/bouncycastle/crypto/params/DESedeParameters;
.super Lorg/bouncycastle/crypto/params/DESParameters;


# static fields
.field public static final DES_EDE_KEY_LENGTH:I = 0x18


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DESede key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static isReal2Key([BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int/lit8 v2, p1, 0x8

    if-eq v1, v2, :cond_1

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x8

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isReal3Key([BI)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    add-int/lit8 v0, p1, 0x8

    if-eq v3, v0, :cond_3

    aget-byte v0, p0, v3

    add-int/lit8 v7, v3, 0x8

    aget-byte v7, p0, v7

    if-eq v0, v7, :cond_0

    move v0, v1

    :goto_1
    or-int/2addr v6, v0

    aget-byte v0, p0, v3

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v0, v7, :cond_1

    move v0, v1

    :goto_2
    or-int/2addr v5, v0

    add-int/lit8 v0, v3, 0x8

    aget-byte v0, p0, v0

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v0, v7, :cond_2

    move v0, v1

    :goto_3
    or-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    :goto_4
    return v1

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public static isRealEDEKey([BI)Z
    .locals 2

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isReal2Key([BI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isReal3Key([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWeakKey([BI)Z
    .locals 1

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    return v0
.end method

.method public static isWeakKey([BII)Z
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
