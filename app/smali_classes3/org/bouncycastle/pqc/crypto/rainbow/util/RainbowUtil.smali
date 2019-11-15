.class public Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertArray([S)[B
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-short v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertArray([B)[S
    .locals 3

    array-length v0, p0

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertArray([[S)[[B
    .locals 6

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-short v5, v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertArray([[B)[[S
    .locals 6

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertArray([[[S)[[[B
    .locals 7

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    aget-object v3, p0, v2

    aget-object v3, v3, v2

    array-length v3, v3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    move v3, v2

    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_2
    aget-object v5, p0, v2

    aget-object v5, v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v1

    aget-object v5, v5, v3

    aget-object v6, p0, v1

    aget-object v6, v6, v3

    aget-short v6, v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static convertArray([[[B)[[[S
    .locals 7

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    aget-object v3, p0, v2

    aget-object v3, v3, v2

    array-length v3, v3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    move v3, v2

    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_2
    aget-object v5, p0, v2

    aget-object v5, v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, v0, v1

    aget-object v5, v5, v3

    aget-object v6, p0, v1

    aget-object v6, v6, v3

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static convertArraytoInt([B)[I
    .locals 3

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertIntArray([I)[B
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static equals([S[S)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    array-length v3, p1

    if-eq v0, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v3, v1

    :goto_1
    if-ltz v4, :cond_2

    aget-short v0, p0, v4

    aget-short v5, p1, v4

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_2
    and-int/2addr v3, v0

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static equals([[S[[S)Z
    .locals 5

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v2

    and-int/2addr v2, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public static equals([[[S[[[S)Z
    .locals 5

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    and-int/2addr v2, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method
