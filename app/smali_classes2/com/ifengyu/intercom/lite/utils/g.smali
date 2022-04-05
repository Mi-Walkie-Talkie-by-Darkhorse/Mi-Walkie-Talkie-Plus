.class public Lcom/ifengyu/intercom/lite/utils/g;
.super Ljava/lang/Object;


# direct methods
.method public static a([Ljava/lang/Integer;II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    array-length v1, p0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/ifengyu/intercom/lite/utils/g;->a([Ljava/lang/Integer;IIII)I

    move-result v1

    if-ne v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_0

    :cond_1
    aget-object p2, p0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-le p0, p1, :cond_3

    return p1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static a([Ljava/lang/Integer;IIII)I
    .locals 1

    if-lez p1, :cond_3

    if-ltz p2, :cond_3

    if-lt p3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p2, -0x1

    :goto_0
    if-gt p2, p3, :cond_2

    aget-object v0, p0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p4, :cond_1

    add-int/lit8 p1, p1, 0x1

    if-eq p1, p2, :cond_1

    invoke-static {p0, p2, p1}, Lcom/ifengyu/intercom/lite/utils/g;->b([Ljava/lang/Integer;II)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private static b([Ljava/lang/Integer;II)V
    .locals 2

    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p2

    return-void
.end method
