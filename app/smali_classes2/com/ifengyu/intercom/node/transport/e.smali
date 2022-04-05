.class public Lcom/ifengyu/intercom/node/transport/e;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)I
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static a([BJII)V
    .locals 5

    const-string v0, "data is null"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "start is negative: %s"

    invoke-static {v2, v4, v3}, Lcom/ifengyu/intercom/i/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length v2, p0

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "invalid length: %s"

    invoke-static {v2, v0, v1}, Lcom/ifengyu/intercom/i/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    const-wide/16 v0, 0xff

    if-lez p4, :cond_2

    add-int/lit8 v2, p3, 0x1

    mul-int/lit8 v3, p4, 0x8

    shr-long v3, p1, v3

    and-long/2addr v0, v3

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p0, p3

    goto :goto_3

    :cond_2
    add-int/lit8 v2, p3, 0x1

    and-long/2addr v0, p1

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p0, p3

    :goto_3
    move p3, v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static b([B)I
    .locals 3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    aget-byte v0, p0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x5

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int v1, v0, p0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static c([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static d([B)I
    .locals 0

    invoke-static {p0}, Lcom/ifengyu/intercom/node/transport/e;->c([B)I

    move-result p0

    return p0
.end method

.method public static e([B)I
    .locals 3

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method
