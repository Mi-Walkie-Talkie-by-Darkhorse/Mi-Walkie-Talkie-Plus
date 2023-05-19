.class public Lcom/huawei/hms/scankit/p/yc;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/huawei/hms/scankit/aiscan/common/t;


# instance fields
.field private final a:Lcom/huawei/hms/scankit/p/oc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/p/oc;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/oc;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/yc;->a:Lcom/huawei/hms/scankit/p/oc;

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/aiscan/common/g;)I
    .locals 7

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->c()F

    move-result v0

    sput v0, Lcom/huawei/hms/scankit/p/Bc;->e:F

    .line 30
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->a()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 31
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    aput v0, v1, v3

    new-array v5, v0, [I

    aput v0, v5, v2

    aput v0, v5, v4

    .line 32
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    aput v4, v5, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 33
    aget v4, v1, v2

    aget v6, v5, v2

    invoke-direct {p0, p1, v4, v6}, Lcom/huawei/hms/scankit/p/yc;->a(Lcom/huawei/hms/scankit/p/bb;II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static a(Lcom/huawei/hms/scankit/aiscan/common/m;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/16 p0, 0x325

    if-ne v0, p0, :cond_0

    .line 3
    sget-object p0, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    :cond_0
    return-void
.end method

.method public static a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/aiscan/common/x;)V
    .locals 8

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->a()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->c()I

    move-result p0

    .line 6
    :cond_0
    sget-object v1, Lcom/huawei/hms/scankit/p/Bc;->r:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/huawei/hms/scankit/p/Bc;->r:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    rem-int v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne v0, p0, :cond_2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 12
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v6

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 13
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v7

    aget-object v2, v7, v2

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v2

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr v4, v1

    sub-float/2addr p1, v6

    mul-float v4, v4, p1

    float-to-double v1, v4

    mul-int v0, v0, p0

    int-to-double p0, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double p0, p0, v4

    cmpl-double v0, v1, p0

    if-lez v0, :cond_3

    .line 14
    sget-object p0, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    aput-boolean v3, p0, v3

    :cond_3
    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/p/bb;II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_e

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    if-ge v1, v2, :cond_1

    goto/16 :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v1

    add-int/lit8 v2, p2, 0x1

    .line 36
    invoke-virtual {p1, v2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 37
    invoke-virtual {p1, v2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, p2, 0x3

    .line 38
    invoke-virtual {p1, v2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v2, p2, -0x1

    .line 39
    invoke-virtual {p1, v2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v2, p2, -0x2

    .line 40
    invoke-virtual {p1, v2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 v2, p2, -0x3

    .line 41
    invoke-virtual {p1, v2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    add-int/lit8 v2, p3, 0x1

    .line 42
    invoke-virtual {p1, p2, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v2, p3, 0x2

    .line 43
    invoke-virtual {p1, p2, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    add-int/lit8 v2, p3, 0x3

    .line 44
    invoke-virtual {p1, p2, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    :cond_a
    add-int/lit8 v2, p3, -0x1

    .line 45
    invoke-virtual {p1, p2, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    add-int/lit8 v2, p3, -0x2

    .line 46
    invoke-virtual {p1, p2, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    add-int/lit8 p3, p3, -0x3

    .line 47
    invoke-virtual {p1, p2, p3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result p1

    if-eqz p1, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    const/16 p1, 0xa

    if-le v1, p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lcom/huawei/hms/scankit/p/_a;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/_a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 15
    sget v0, Lcom/huawei/hms/scankit/p/Bc;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/huawei/hms/scankit/p/Bc;->f:I

    .line 16
    :try_start_0
    new-instance v0, Lcom/huawei/hms/scankit/p/pc;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/_a;->b()Lcom/huawei/hms/scankit/p/bb;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/huawei/hms/scankit/p/pc;-><init>(Lcom/huawei/hms/scankit/p/bb;)V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/scankit/p/pc;->a(Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/g;

    move-result-object p1
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/yc;->a(Lcom/huawei/hms/scankit/aiscan/common/g;)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 18
    :try_start_1
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/yc;->a:Lcom/huawei/hms/scankit/p/oc;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->a()Lcom/huawei/hms/scankit/p/bb;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/huawei/hms/scankit/p/oc;->a(Lcom/huawei/hms/scankit/p/bb;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-object p2, v4

    .line 19
    :goto_1
    sget-boolean v2, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 20
    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->b()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-direct {p2, v4, v4, p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object p2

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 21
    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->b()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-direct {p2, v4, v4, p1, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object p2

    :cond_2
    if-nez v1, :cond_5

    if-nez p2, :cond_3

    return-object v4

    .line 22
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->d()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v0

    .line 23
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/e;->b()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/huawei/hms/scankit/p/xc;

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/e;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/xc;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/xc;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    .line 25
    :cond_4
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/aiscan/common/e;->c()[B

    move-result-object p2

    sget-object v3, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    .line 26
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/g;->b()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    return-object v1

    .line 27
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 28
    :catch_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method
