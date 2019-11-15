.class public final Lorg/bouncycastle/util/Arrays;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([BB)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte p1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [B

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v0, v1

    goto :goto_0
.end method

.method public static append([II)[I
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v0, v1

    goto :goto_0
.end method

.method public static append([SS)[S
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short p1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [S

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-short p1, v0, v1

    goto :goto_0
.end method

.method public static areEqual([B[B)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static areEqual([C[C)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static areEqual([I[I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    aget v3, p0, v0

    aget v4, p1, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static areEqual([J[J)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_4

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    if-nez v3, :cond_3

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public static areEqual([Z[Z)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p0

    if-eq v0, v3, :cond_2

    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
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

.method public static clone([B[B)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    goto :goto_0

    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [C

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [J

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([J[J)[J
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object p1

    goto :goto_0

    :cond_2
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/math/BigInteger;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [S

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([[B)[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[B

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static clone([[[B)[[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[[B

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[[B

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static concatenate([B[B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([B[B[B[B)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0, p1, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-static {p0, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static concatenate([I[I)[I
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    move v0, v1

    move v2, v1

    :goto_1
    array-length v4, p0

    if-eq v0, v4, :cond_2

    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-short v2, p0, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static copyOf([BI)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [B

    array-length v1, p0

    if-ge p1, v1, :cond_0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([CI)[C
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [C

    array-length v1, p0

    if-ge p1, v1, :cond_0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([II)[I
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [I

    array-length v1, p0

    if-ge p1, v1, :cond_0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([JI)[J
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [J

    array-length v1, p0

    if-ge p1, v1, :cond_0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Ljava/math/BigInteger;

    array-length v1, p0

    if-ge p1, v1, :cond_0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([BII)[B
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([III)[I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [I

    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([JII)[J
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [J

    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    new-array v1, v0, [Ljava/math/BigInteger;

    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static fill([BB)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-char p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aput-short p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getLength(II)I
    .locals 2

    sub-int v0, p1, p0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static hashCode([B)I
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    mul-int/lit16 v0, v0, 0x101

    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([BII)I
    .locals 2

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    mul-int/lit16 v0, v0, 0x101

    add-int v1, p1, p2

    aget-byte v1, p0, v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    mul-int/lit16 v0, v0, 0x101

    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    mul-int/lit16 v0, v0, 0x101

    aget v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([III)I
    .locals 2

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    mul-int/lit16 v0, v0, 0x101

    add-int v1, p1, p2

    aget v1, p0, v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 5

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    aget-wide v2, p0, v1

    mul-int/lit16 v0, v0, 0x101

    long-to-int v4, v2

    xor-int/2addr v0, v4

    mul-int/lit16 v0, v0, 0x101

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([JII)I
    .locals 4

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    add-int v1, p1, p2

    aget-wide v2, p0, v1

    mul-int/lit16 v0, v0, 0x101

    long-to-int v1, v2

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    mul-int/lit16 v0, v0, 0x101

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([S)I
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    mul-int/lit16 v0, v0, 0x101

    aget-short v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    goto :goto_0
.end method

.method public static hashCode([[I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hashCode([[S)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static hashCode([[[S)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit16 v1, v1, 0x101

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static prepend([BB)[B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-array v0, v3, [B

    aput-byte p1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [B

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v0, v2

    goto :goto_0
.end method

.method public static prepend([II)[I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-array v0, v3, [I

    aput p1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v0, v2

    goto :goto_0
.end method

.method public static prepend([SS)[S
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-array v0, v3, [S

    aput-short p1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [S

    invoke-static {p0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-short p1, v0, v2

    goto :goto_0
.end method

.method public static reverse([B)[B
    .locals 4

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    array-length v1, p0

    new-array v0, v1, [B

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    move v2, v3

    goto :goto_0
.end method

.method public static reverse([I)[I
    .locals 4

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    array-length v1, p0

    new-array v0, v1, [I

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget v2, p0, v2

    aput v2, v0, v1

    move v2, v3

    goto :goto_0
.end method
