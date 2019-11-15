.class public Lcom/ifengyu/intercom/node/transport/e;
.super Ljava/lang/Object;
.source "Packet.java"


# direct methods
.method public static a([B)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    aget-byte v1, p0, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a([BJII)V
    .locals 9

    const-wide/16 v6, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "data is null"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "start is negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/ifengyu/intercom/b/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length v0, p0

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "invalid length: %s"

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/ifengyu/intercom/b/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    if-lez p4, :cond_2

    add-int/lit8 v0, p3, 0x1

    mul-int/lit8 v1, p4, 0x8

    shr-long v2, p1, v1

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p3

    move p3, v0

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p3, 0x1

    and-long v2, p1, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p3

    move p3, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static b([B)I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    aget-byte v1, p0, v3

    if-ne v1, v3, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static c([B)I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    if-ne v1, v3, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static d([B)I
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result v0

    return v0
.end method

.method public static e([B)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
