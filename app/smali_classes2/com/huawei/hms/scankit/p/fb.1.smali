.class final Lcom/huawei/hms/scankit/p/fb;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/bb;

.field private final b:Lcom/huawei/hms/scankit/p/bb;

.field private final c:Lcom/huawei/hms/scankit/p/nb;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/p/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/fb;->b(Lcom/huawei/hms/scankit/p/bb;)Lcom/huawei/hms/scankit/p/nb;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/fb;->a(Lcom/huawei/hms/scankit/p/bb;)Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/fb;->a:Lcom/huawei/hms/scankit/p/bb;

    .line 5
    new-instance v0, Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/fb;->b:Lcom/huawei/hms/scankit/p/bb;

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method private a(II)I
    .locals 5

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    .line 9
    invoke-direct {p0, v0, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/2addr v2, v3

    const/4 v4, 0x2

    .line 10
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x2

    .line 11
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    add-int/lit8 v2, p2, -0x1

    .line 12
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 13
    invoke-direct {p0, v3, v2, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 14
    invoke-direct {p0, v4, v2, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    const/4 v1, 0x3

    .line 15
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private a(Lcom/huawei/hms/scankit/p/bb;)Lcom/huawei/hms/scankit/p/bb;
    .locals 16

    move-object/from16 v0, p0

    .line 16
    iget-object v1, v0, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/nb;->e()I

    move-result v1

    .line 17
    iget-object v2, v0, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/nb;->d()I

    move-result v2

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 19
    iget-object v3, v0, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/nb;->b()I

    move-result v3

    .line 20
    iget-object v4, v0, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/nb;->a()I

    move-result v4

    .line 21
    div-int/2addr v1, v3

    .line 22
    div-int/2addr v2, v4

    mul-int v5, v1, v3

    mul-int v6, v2, v4

    .line 23
    new-instance v7, Lcom/huawei/hms/scankit/p/bb;

    invoke-direct {v7, v6, v5}, Lcom/huawei/hms/scankit/p/bb;-><init>(II)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_4

    mul-int v8, v6, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_3

    mul-int v10, v9, v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_2

    add-int/lit8 v12, v3, 0x2

    mul-int v12, v12, v6

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v11

    add-int v13, v8, v11

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_1

    add-int/lit8 v15, v4, 0x2

    mul-int v15, v15, v9

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v14

    move-object/from16 v5, p1

    .line 24
    invoke-virtual {v5, v15, v12}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v15

    if-eqz v15, :cond_0

    add-int v15, v10, v14

    .line 25
    invoke-virtual {v7, v15, v13}, Lcom/huawei/hms/scankit/p/bb;->c(II)V

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_1
    move-object/from16 v5, p1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v5, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v7

    .line 26
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMatrix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(IIII)Z
    .locals 0

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p3, p4, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/huawei/hms/scankit/p/fb;->b:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p3, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->c(II)V

    .line 7
    iget-object p3, p0, Lcom/huawei/hms/scankit/p/fb;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p3, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result p1

    return p1
.end method

.method private a(IIII[BI)[I
    .locals 4

    :cond_0
    if-ge p1, p2, :cond_1

    if-ltz p3, :cond_1

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/fb;->b:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0, p3, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p6, 0x1

    .line 3
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/huawei/hms/scankit/p/fb;->b(IIII)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p5, p6

    move p6, v0

    :cond_1
    add-int/lit8 p1, p1, -0x2

    add-int/lit8 p3, p3, 0x2

    if-ltz p1, :cond_2

    if-lt p3, p4, :cond_0

    :cond_2
    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    add-int/2addr p3, v1

    :cond_3
    if-ltz p1, :cond_4

    if-ge p3, p4, :cond_4

    .line 4
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/fb;->b:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v2, p3, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, p6, 0x1

    .line 5
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/huawei/hms/scankit/p/fb;->b(IIII)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p5, p6

    move p6, v2

    :cond_4
    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p3, p3, -0x2

    if-ge p1, p2, :cond_5

    if-gez p3, :cond_3

    :cond_5
    add-int/2addr p1, v1

    add-int/2addr p3, v0

    new-array p2, v1, [I

    const/4 p4, 0x0

    aput p1, p2, p4

    aput p3, p2, v0

    const/4 p1, 0x2

    aput p6, p2, p1

    return-object p2
.end method

.method private b(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 26
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 27
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x4

    .line 28
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x3

    .line 29
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 30
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 31
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    .line 32
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private b(IIII)I
    .locals 5

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    .line 17
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 18
    invoke-direct {p0, v0, v3, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 19
    invoke-direct {p0, v2, v1, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 20
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 21
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 22
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 23
    invoke-direct {p0, p1, v3, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private static b(Lcom/huawei/hms/scankit/p/bb;)Lcom/huawei/hms/scankit/p/nb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result p0

    .line 3
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/p/nb;->a(II)Lcom/huawei/hms/scankit/p/nb;

    move-result-object p0

    return-object p0
.end method

.method private c(II)I
    .locals 7

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    .line 2
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x3

    .line 3
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v3

    add-int/lit8 v5, p2, -0x2

    .line 4
    invoke-direct {p0, v1, v5, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    .line 5
    invoke-direct {p0, v1, v4, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 6
    invoke-direct {p0, v3, v2, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 7
    invoke-direct {p0, v3, v5, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    .line 8
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private d(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 2
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 3
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 4
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 5
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    .line 6
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    const/4 v1, 0x2

    .line 7
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    const/4 v1, 0x3

    .line 8
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/huawei/hms/scankit/p/fb;->a(IIII)Z

    move-result p1

    if-eqz p1, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method


# virtual methods
.method a()Lcom/huawei/hms/scankit/p/nb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    return-object v0
.end method

.method b()[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 4
    iget-object v0, v7, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/nb;->f()I

    move-result v0

    new-array v8, v0, [B

    .line 5
    iget-object v0, v7, Lcom/huawei/hms/scankit/p/fb;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v9

    .line 6
    iget-object v0, v7, Lcom/huawei/hms/scankit/p/fb;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_0
    const/16 v17, 0x1

    if-ne v1, v9, :cond_1

    if-nez v3, :cond_1

    if-nez v13, :cond_1

    add-int/lit8 v0, v6, 0x1

    .line 7
    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/p/fb;->a(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v0

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, v9, -0x2

    if-ne v1, v0, :cond_2

    if-nez v3, :cond_2

    and-int/lit8 v2, v10, 0x3

    if-eqz v2, :cond_2

    if-nez v14, :cond_2

    add-int/lit8 v0, v6, 0x1

    .line 8
    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/p/fb;->b(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v0

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v9, 0x4

    const/4 v5, 0x2

    if-ne v1, v2, :cond_3

    if-ne v3, v5, :cond_3

    and-int/lit8 v2, v10, 0x7

    if-nez v2, :cond_3

    if-nez v15, :cond_3

    add-int/lit8 v0, v6, 0x1

    .line 9
    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/p/fb;->c(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v0

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    if-nez v3, :cond_4

    and-int/lit8 v0, v10, 0x7

    if-ne v0, v11, :cond_4

    if-nez v16, :cond_4

    add-int/lit8 v0, v6, 0x1

    .line 10
    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/p/fb;->d(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v0

    const/16 v16, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move v2, v9

    move v4, v10

    const/16 v18, 0x2

    move-object v5, v8

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/scankit/p/fb;->a(IIII[BI)[I

    move-result-object v0

    .line 12
    aget v1, v0, v12

    .line 13
    aget v2, v0, v17

    .line 14
    aget v0, v0, v18

    move v6, v0

    move v3, v2

    :goto_0
    if-lt v1, v9, :cond_0

    if-lt v3, v10, :cond_0

    .line 15
    iget-object v0, v7, Lcom/huawei/hms/scankit/p/fb;->c:Lcom/huawei/hms/scankit/p/nb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/nb;->f()I

    move-result v0

    if-ne v6, v0, :cond_5

    return-object v8

    .line 16
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method
