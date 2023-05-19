.class public Lcom/ifengyu/intercom/h/b/a/c;
.super Ljava/lang/Object;
.source "PacketUtil.java"


# direct methods
.method public static a([BII)[B
    .locals 2

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b([B)I
    .locals 2

    const/4 v0, 0x4

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x5

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static c([B)[B
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {p0, v0, v1}, Lcom/ifengyu/intercom/h/b/a/c;->a([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([B)[B
    .locals 4

    .line 1
    array-length v0, p0

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    .line 2
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static e([B)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static f([B)I
    .locals 1

    const/16 v0, 0x9

    .line 1
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static g([B)I
    .locals 2

    const/4 v0, 0x6

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static h([B)I
    .locals 1

    const/16 v0, 0x8

    .line 1
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static i([B)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static j([BJII)V
    .locals 5

    :goto_0
    if-lez p4, :cond_1

    add-int/lit8 p4, p4, -0x1

    const-wide/16 v0, 0xff

    if-lez p4, :cond_0

    add-int/lit8 v2, p3, 0x1

    mul-int/lit8 v3, p4, 0x8

    shr-long v3, p1, v3

    and-long/2addr v0, v3

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 1
    aput-byte v0, p0, p3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, p3, 0x1

    and-long/2addr v0, p1

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 2
    aput-byte v0, p0, p3

    :goto_1
    move p3, v2

    goto :goto_0

    :cond_1
    return-void
.end method
