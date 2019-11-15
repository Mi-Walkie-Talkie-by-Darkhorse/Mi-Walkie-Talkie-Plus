.class public abstract Lorg/bouncycastle/math/raw/Nat320;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy64([J[J)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    aget-wide v0, p0, v4

    aput-wide v0, p1, v4

    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    return-void
.end method

.method public static create64()[J
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [J

    return-object v0
.end method

.method public static eq64([J[J)Z
    .locals 6

    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 6

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x140

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->create64()[J

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static isOne64([J)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    aget-wide v4, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isZero64([J)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 6

    const/16 v0, 0x28

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    rsub-int/lit8 v4, v0, 0x4

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v1, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method
