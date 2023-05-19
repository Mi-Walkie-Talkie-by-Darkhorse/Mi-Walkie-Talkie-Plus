.class public final Lcom/huawei/hms/scankit/p/_a;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/Za;

.field private b:Lcom/huawei/hms/scankit/p/bb;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Za;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Binarizer must be non-null."

    :try_start_1
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 4
    throw p1
.end method

.method private a(II[I[I[BI)Lcom/huawei/hms/scankit/p/ab;
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    .line 18
    new-instance v2, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v2, v1}, Lcom/huawei/hms/scankit/p/ab;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v1, :cond_0

    add-int/lit8 v5, v4, -0x1

    .line 19
    aget v5, p4, v5

    aget-byte v6, p5, v4

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p5, v4

    and-int/lit16 v7, v7, 0xff

    mul-int v6, v6, v7

    add-int/2addr v5, v6

    aput v5, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, p6, 0x1

    move v5, v4

    :goto_1
    sub-int v6, v1, p6

    if-ge v5, v6, :cond_2

    add-int v6, v5, p6

    .line 20
    aget v7, p3, v6

    sub-int v8, v5, p6

    sub-int/2addr v8, v3

    aget v9, p3, v8

    sub-int/2addr v7, v9

    int-to-double v9, v7

    .line 21
    aget v6, p4, v6

    aget v7, p4, v8

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double v11, v9, v9

    int-to-double v13, v0

    div-double/2addr v11, v13

    sub-double/2addr v6, v11

    add-int/lit8 v8, v0, -0x1

    int-to-double v11, v8

    div-double/2addr v6, v11

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v9, v13

    const/high16 v8, 0x3f000000    # 0.5f

    float-to-double v11, v8

    const/16 v8, 0x7f

    int-to-double v13, v8

    div-double/2addr v6, v13

    mul-double v11, v11, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v11, v6

    mul-double v9, v9, v11

    .line 23
    aget-byte v6, p5, v5

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    cmpg-double v8, v6, v9

    if-gtz v8, :cond_1

    .line 24
    invoke-virtual {v2, v5}, Lcom/huawei/hms/scankit/p/ab;->d(I)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v2, v4}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {v2, v0, v4}, Lcom/huawei/hms/scankit/p/ab;->c(II)V

    :cond_3
    add-int/lit8 v0, v6, -0x1

    .line 27
    invoke-virtual {v2, v0}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {v2, v6, v1}, Lcom/huawei/hms/scankit/p/ab;->c(II)V

    :cond_4
    return-object v2
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/Za;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    return-object v0
.end method

.method public a(IIII)Lcom/huawei/hms/scankit/p/_a;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huawei/hms/scankit/aiscan/common/m;->a(IIII)Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/huawei/hms/scankit/p/_a;

    iget-object p3, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    invoke-virtual {p3, p1}, Lcom/huawei/hms/scankit/p/Za;->a(Lcom/huawei/hms/scankit/aiscan/common/m;)Lcom/huawei/hms/scankit/p/Za;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/huawei/hms/scankit/p/_a;-><init>(Lcom/huawei/hms/scankit/p/Za;)V

    return-object p2
.end method

.method public a(II)Lcom/huawei/hms/scankit/p/ab;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->e()I

    move-result v2

    const/16 v0, 0x2d

    if-lt v2, v0, :cond_6

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v1, v2}, Lcom/huawei/hms/scankit/p/ab;-><init>(I)V

    .line 3
    new-array v5, v2, [B

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/_a;->a()Lcom/huawei/hms/scankit/p/Za;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Lcom/huawei/hms/scankit/aiscan/common/m;->a(I[B)[B

    .line 5
    new-array v3, v2, [I

    .line 6
    new-array v4, v2, [I

    const/4 p1, 0x0

    .line 7
    aget-byte v6, v5, p1

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, p1

    .line 8
    aget v6, v3, p1

    aget v7, v3, p1

    mul-int v6, v6, v7

    aput v6, v4, p1

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_0
    if-ge v7, v2, :cond_0

    add-int/lit8 v8, v7, -0x1

    .line 9
    aget v8, v3, v8

    aget-byte v9, v5, v7

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_5

    const/16 p2, 0x17

    const/16 v4, 0x17

    :goto_1
    add-int/lit8 v7, v2, -0x16

    if-ge v4, v7, :cond_2

    .line 10
    aget-byte v7, v5, v4

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v7, v7, 0x5

    add-int/lit8 v8, v4, 0x16

    aget v8, v3, v8

    add-int/lit8 v9, v4, -0x16

    sub-int/2addr v9, v6

    aget v9, v3, v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v0

    if-ge v7, v8, :cond_1

    .line 11
    invoke-virtual {v1, v4}, Lcom/huawei/hms/scankit/p/ab;->d(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1, p2}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v1, p1, p2}, Lcom/huawei/hms/scankit/p/ab;->c(II)V

    :cond_3
    add-int/lit8 p1, v7, -0x1

    .line 14
    invoke-virtual {v1, p1}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {v1, v7, v2}, Lcom/huawei/hms/scankit/p/ab;->c(II)V

    :cond_4
    return-object v1

    :cond_5
    const/16 v1, 0x2d

    const/16 v6, 0x16

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/scankit/p/_a;->a(II[I[I[BI)Lcom/huawei/hms/scankit/p/ab;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method public a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/Za;->a(ILcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/ab;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/huawei/hms/scankit/p/bb;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/_a;->b:Lcom/huawei/hms/scankit/p/bb;

    return-void
.end method

.method public b()Lcom/huawei/hms/scankit/p/bb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->b:Lcom/huawei/hms/scankit/p/bb;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->a()Lcom/huawei/hms/scankit/p/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->b:Lcom/huawei/hms/scankit/p/bb;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->b:Lcom/huawei/hms/scankit/p/bb;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->b()I

    move-result v0

    return v0
.end method

.method public d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->c()Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/_a;->a:Lcom/huawei/hms/scankit/p/Za;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Za;->d()I

    move-result v0

    return v0
.end method
