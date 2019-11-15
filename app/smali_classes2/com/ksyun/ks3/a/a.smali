.class public Lcom/ksyun/ks3/a/a;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method public static a([BII[BII)I
    .locals 4

    add-int v0, p1, p2

    add-int v1, p4, p5

    :goto_0
    if-ge p1, v0, :cond_1

    if-ge p4, v1, :cond_1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p3, p4

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_0

    sub-int v0, v2, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p2, p5

    goto :goto_1
.end method

.method public static a([B[B)I
    .locals 6

    const/4 v1, 0x0

    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/ksyun/ks3/a/a;->a([BII[BII)I

    move-result v0

    return v0
.end method
