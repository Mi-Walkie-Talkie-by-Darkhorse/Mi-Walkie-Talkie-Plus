.class public final Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone([B)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static concatenate([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static concatenate([[B)[B
    .locals 6

    const/4 v1, 0x0

    aget-object v0, p0, v1

    array-length v3, v0

    array-length v0, p0

    mul-int/2addr v0, v3

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    aget-object v5, p0, v0

    invoke-static {v5, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public static deepHashCode([B)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static deepHashCode([[B)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static deepHashCode([[[B)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([[B)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static equals([B[B)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v3, v0

    :goto_2
    if-ltz v4, :cond_4

    aget-byte v2, p0, v4

    aget-byte v5, p1, v4

    if-ne v2, v5, :cond_3

    move v2, v0

    :goto_3
    and-int/2addr v3, v2

    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public static equals([[B[[B)Z
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

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v2

    and-int/2addr v2, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public static equals([[[B[[[B)Z
    .locals 7

    const/4 v0, 0x0

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    move v1, v2

    :goto_1
    if-ltz v3, :cond_3

    aget-object v2, p0, v3

    array-length v2, v2

    aget-object v4, p1, v3

    array-length v4, v4

    if-ne v2, v4, :cond_0

    aget-object v2, p0, v3

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    move v2, v1

    move v1, v6

    :goto_2
    if-ltz v1, :cond_2

    aget-object v4, p0, v3

    aget-object v4, v4, v1

    aget-object v5, p1, v3

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 11

    const/16 v10, 0x46

    const/16 v9, 0x41

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-char v4, v3, v0

    if-lt v4, v7, :cond_0

    aget-char v4, v3, v0

    if-le v4, v8, :cond_1

    :cond_0
    aget-char v4, v3, v0

    if-lt v4, v9, :cond_2

    aget-char v4, v3, v0

    if-gt v4, v10, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    and-int/lit8 v0, v2, 0x1

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_6

    aget-char v2, v3, v1

    if-lt v2, v7, :cond_5

    aget-char v2, v3, v1

    if-gt v2, v8, :cond_5

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    aget-char v6, v3, v1

    add-int/lit8 v6, v6, -0x30

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    aget-char v2, v3, v1

    if-lt v2, v9, :cond_4

    aget-char v2, v3, v1

    if-gt v2, v10, :cond_4

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    shr-int/lit8 v2, v0, 0x1

    aget-byte v5, v4, v2

    aget-char v6, v3, v1

    add-int/lit8 v6, v6, -0x41

    add-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    goto :goto_2

    :cond_6
    return-object v4
.end method

.method public static split([BI)[[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v0, p0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [[B

    new-array v1, p1, [B

    aput-object v1, v0, v3

    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    aput-object v1, v0, v2

    aget-object v1, v0, v3

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v0, v2

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static subArray([BI)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static subArray([BII)[B
    .locals 3

    sub-int v0, p2, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toBinaryString([B)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const-string v0, ""

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-byte v5, p0, v1

    move v3, v2

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    ushr-int v4, v5, v3

    and-int/lit8 v4, v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v4

    goto :goto_1

    :cond_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static toCharArray([B)[C
    .locals 3

    array-length v0, p0

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toHexString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static xor([B[B)[B
    .locals 4

    array-length v0, p0

    new-array v1, v0, [B

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
