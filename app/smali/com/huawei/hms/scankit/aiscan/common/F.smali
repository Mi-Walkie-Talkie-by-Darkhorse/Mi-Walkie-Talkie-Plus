.class public final Lcom/huawei/hms/scankit/aiscan/common/F;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/bb;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/huawei/hms/scankit/aiscan/common/F;-><init>(Lcom/huawei/hms/scankit/p/bb;III)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->a:Lcom/huawei/hms/scankit/p/bb;

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->b:I

    .line 5
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->c:I

    .line 6
    div-int/lit8 p2, p2, 0x2

    sub-int v1, p3, p2

    .line 7
    iput v1, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->d:I

    add-int/2addr p3, p2

    .line 8
    iput p3, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->e:I

    sub-int v2, p4, p2

    .line 9
    iput v2, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->g:I

    add-int/2addr p4, p2

    .line 10
    iput p4, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->f:I

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-ge p4, v0, :cond_0

    if-ge p3, p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method private a(FFFF)Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 5

    .line 22
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 23
    invoke-static {v3}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    .line 24
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/n;->a(F)I

    move-result v2

    .line 25
    iget-object v4, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v4, v3, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/z;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a([I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 15
    aget v1, p1, v2

    if-eq v1, v0, :cond_3

    :cond_0
    const/4 v1, 0x3

    aget v3, p1, v1

    iget v4, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->b:I

    if-ge v3, v4, :cond_3

    const/4 v3, 0x0

    .line 16
    aget v3, p1, v3

    aget v4, p1, v0

    aget v5, p1, v1

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(IIIZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    aget v4, p1, v1

    add-int/2addr v4, v0

    aput v4, p1, v1

    const/4 v1, 0x5

    .line 18
    aput v0, p1, v1

    .line 19
    aput v0, p1, v2

    goto :goto_1

    .line 20
    :cond_1
    aget v2, p1, v2

    if-eq v2, v0, :cond_2

    .line 21
    aget v2, p1, v1

    add-int/2addr v2, v0

    aput v2, p1, v1

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    :goto_0
    if-gt p1, p2, :cond_3

    .line 38
    iget-object p4, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p4, p1, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result p4

    if-eqz p4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 39
    iget-object p4, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->a:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {p4, p3, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 11

    .line 27
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    .line 28
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    .line 29
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    .line 30
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p2

    .line 31
    invoke-virtual {p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v2

    .line 32
    invoke-virtual {p3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p3

    .line 33
    invoke-virtual {p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v3

    .line 34
    invoke-virtual {p4}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p4

    .line 35
    iget v4, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->c:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    new-array v4, v9, [Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 36
    new-instance v9, Lcom/huawei/hms/scankit/aiscan/common/z;

    sub-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/huawei/hms/scankit/aiscan/common/z;

    add-float/2addr v1, v10

    add-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/z;

    sub-float/2addr v2, v10

    sub-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/z;

    add-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4

    :cond_0
    new-array v4, v9, [Lcom/huawei/hms/scankit/aiscan/common/z;

    .line 37
    new-instance v9, Lcom/huawei/hms/scankit/aiscan/common/z;

    add-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/huawei/hms/scankit/aiscan/common/z;

    add-float/2addr v1, v10

    sub-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/z;

    sub-float/2addr v2, v10

    add-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p2, v4, v6

    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/z;

    sub-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p2, v4, v5

    return-object v4
.end method

.method private b([I)[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x0

    aget v3, p1, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x3

    if-nez v4, :cond_0

    if-ge v5, v1, :cond_0

    .line 2
    aget v4, p1, v2

    int-to-float v4, v4

    aget v7, p1, v6

    sub-int/2addr v7, v5

    int-to-float v7, v7

    aget v8, p1, v2

    add-int/2addr v8, v5

    int-to-float v8, v8

    aget v6, p1, v6

    int-to-float v6, v6

    invoke-direct {p0, v4, v7, v8, v6}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(FFFF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_7

    move-object v5, v3

    const/4 v7, 0x1

    :goto_1
    const/4 v8, 0x2

    if-nez v5, :cond_1

    if-ge v7, v1, :cond_1

    .line 3
    aget v5, p1, v2

    int-to-float v5, v5

    aget v9, p1, v8

    add-int/2addr v9, v7

    int-to-float v9, v9

    aget v10, p1, v2

    add-int/2addr v10, v7

    int-to-float v10, v10

    aget v8, p1, v8

    int-to-float v8, v8

    invoke-direct {p0, v5, v9, v10, v8}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(FFFF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_6

    move-object v2, v3

    const/4 v7, 0x1

    :goto_2
    if-nez v2, :cond_2

    if-ge v7, v1, :cond_2

    .line 4
    aget v2, p1, v0

    int-to-float v2, v2

    aget v9, p1, v8

    add-int/2addr v9, v7

    int-to-float v9, v9

    aget v10, p1, v0

    sub-int/2addr v10, v7

    int-to-float v10, v10

    aget v11, p1, v8

    int-to-float v11, v11

    invoke-direct {p0, v2, v9, v10, v11}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(FFFF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_5

    const/4 v7, 0x1

    :goto_3
    if-nez v3, :cond_3

    if-ge v7, v1, :cond_3

    .line 5
    aget v3, p1, v0

    int-to-float v3, v3

    aget v8, p1, v6

    sub-int/2addr v8, v7

    int-to-float v8, v8

    aget v9, p1, v0

    sub-int/2addr v9, v7

    int-to-float v9, v9

    aget v10, p1, v6

    int-to-float v10, v10

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(FFFF)Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 6
    invoke-direct {p0, v3, v4, v2, v5}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/z;)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 8
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 9
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 10
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method private c([I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x9

    if-nez v1, :cond_0

    .line 1
    aget v1, p1, v2

    if-eq v1, v0, :cond_3

    :cond_0
    const/4 v1, 0x0

    aget v3, p1, v1

    if-ltz v3, :cond_3

    const/4 v3, 0x2

    .line 2
    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    aget v5, p1, v1

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(IIIZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    aget v4, p1, v1

    sub-int/2addr v4, v0

    aput v4, p1, v1

    const/4 v1, 0x5

    .line 4
    aput v0, p1, v1

    .line 5
    aput v0, p1, v2

    goto :goto_1

    .line 6
    :cond_1
    aget v2, p1, v2

    if-eq v2, v0, :cond_2

    .line 7
    aget v2, p1, v1

    sub-int/2addr v2, v0

    aput v2, p1, v1

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d([I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const/4 v2, 0x7

    if-nez v1, :cond_1

    .line 1
    aget v1, p1, v2

    if-eq v1, v0, :cond_3

    :cond_1
    aget v1, p1, v0

    iget v3, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->c:I

    if-ge v1, v3, :cond_3

    const/4 v1, 0x2

    .line 2
    aget v1, p1, v1

    const/4 v3, 0x3

    aget v3, p1, v3

    aget v4, p1, v0

    const/4 v5, 0x0

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    aget v3, p1, v0

    add-int/2addr v3, v0

    aput v3, p1, v0

    const/4 v3, 0x5

    .line 4
    aput v0, p1, v3

    .line 5
    aput v0, p1, v2

    goto :goto_0

    .line 6
    :cond_2
    aget v2, p1, v2

    if-eq v2, v0, :cond_0

    .line 7
    aget v2, p1, v0

    add-int/2addr v2, v0

    aput v2, p1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private e([I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0xa

    if-nez v1, :cond_0

    .line 1
    aget v1, p1, v2

    if-eq v1, v0, :cond_3

    :cond_0
    const/4 v1, 0x2

    aget v3, p1, v1

    if-ltz v3, :cond_3

    const/4 v3, 0x0

    .line 2
    aget v3, p1, v3

    aget v4, p1, v0

    aget v5, p1, v1

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->a(IIIZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    aget v4, p1, v1

    sub-int/2addr v4, v0

    aput v4, p1, v1

    const/4 v1, 0x5

    .line 4
    aput v0, p1, v1

    .line 5
    aput v0, p1, v2

    goto :goto_1

    .line 6
    :cond_1
    aget v2, p1, v2

    if-eq v2, v0, :cond_2

    .line 7
    aget v2, p1, v1

    sub-int/2addr v2, v0

    aput v2, p1, v1

    :cond_2
    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a()[Lcom/huawei/hms/scankit/aiscan/common/z;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->d:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->e:I

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->g:I

    const/4 v4, 0x2

    aput v1, v0, v4

    iget v1, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->f:I

    const/4 v5, 0x3

    aput v1, v0, v5

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v6, 0x5

    aput v3, v0, v6

    const/4 v7, 0x6

    aput v2, v0, v7

    const/4 v8, 0x7

    aput v2, v0, v8

    const/16 v8, 0x8

    aput v2, v0, v8

    const/16 v8, 0x9

    aput v2, v0, v8

    const/16 v8, 0xa

    aput v2, v0, v8

    .line 2
    :cond_0
    :goto_0
    aget v8, v0, v6

    if-ne v8, v3, :cond_5

    aput v2, v0, v6

    .line 3
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->d([I)V

    .line 4
    aget v8, v0, v3

    iget v9, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->c:I

    if-lt v8, v9, :cond_1

    aput v3, v0, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->a([I)V

    .line 6
    aget v8, v0, v5

    iget v9, p0, Lcom/huawei/hms/scankit/aiscan/common/F;->b:I

    if-lt v8, v9, :cond_2

    aput v3, v0, v1

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->c([I)V

    .line 8
    aget v8, v0, v2

    if-gez v8, :cond_3

    aput v3, v0, v1

    goto :goto_1

    .line 9
    :cond_3
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->e([I)V

    .line 10
    aget v8, v0, v4

    if-gez v8, :cond_4

    aput v3, v0, v1

    goto :goto_1

    .line 11
    :cond_4
    aget v8, v0, v6

    if-ne v8, v3, :cond_0

    aput v3, v0, v7

    goto :goto_0

    .line 12
    :cond_5
    :goto_1
    aget v1, v0, v1

    if-eq v1, v3, :cond_6

    aget v1, v0, v7

    if-ne v1, v3, :cond_6

    .line 13
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/aiscan/common/F;->b([I)[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    return-object v0

    .line 14
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method
