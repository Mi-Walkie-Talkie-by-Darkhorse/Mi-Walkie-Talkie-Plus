.class public final Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I2OSP(I[BI)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method public static I2OSP(I[BII)V
    .locals 3

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    add-int v1, p2, v0

    add-int/lit8 v2, p3, -0x1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static I2OSP(J[BI)V
    .locals 4

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x38

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x8

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method public static I2OSP(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static I2OSP(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    if-gez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v2

    if-le v2, p1, :cond_2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Cannot encode given integer into specified number of octets."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v0, p1, [B

    add-int/lit8 v1, p1, -0x1

    :goto_0
    sub-int v3, p1, v2

    if-lt v1, v3, :cond_0

    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p0, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static I2OSP(J)[B
    .locals 6

    const/16 v4, 0x8

    new-array v0, v4, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static OS2IP([B)I
    .locals 4

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "invalid input length"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p0

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static OS2IP([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static OS2IP([BII)I
    .locals 4

    const/4 v0, 0x0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public static OS2LIP([BI)J
    .locals 8

    const-wide/16 v6, 0xff

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    int-to-long v2, v1

    and-long/2addr v2, v6

    const/16 v1, 0x38

    shl-long/2addr v2, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x30

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    int-to-long v4, v0

    and-long/2addr v4, v6

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    or-long/2addr v2, v4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static toByteArray([I)[B
    .locals 4

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    shl-int/lit8 v3, v0, 0x2

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toByteArray([II)[B
    .locals 5

    const/4 v0, 0x0

    array-length v2, p0

    new-array v3, p1, [B

    move v1, v0

    :goto_0
    add-int/lit8 v4, v2, -0x2

    if-gt v0, v4, :cond_0

    aget v4, p0, v0

    invoke-static {v4, v3, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    aget v0, p0, v0

    sub-int v2, p1, v1

    invoke-static {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;->I2OSP(I[BII)V

    return-object v3
.end method

.method public static toIntArray([B)[I
    .locals 6

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v2, v1, 0x4

    array-length v1, p0

    and-int/lit8 v3, v1, 0x3

    new-array v4, v2, [I

    move v1, v0

    :goto_0
    add-int/lit8 v5, v2, -0x2

    if-gt v0, v5, :cond_0

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    invoke-static {p0, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;->OS2IP([BII)I

    move-result v1

    aput v1, v4, v0

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result v1

    aput v1, v4, v0

    goto :goto_1
.end method
