.class public Lcom/huawei/hms/scankit/p/Ac;
.super Ljava/lang/Object;
.source "FormatsList.java"


# direct methods
.method public static a(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;>;"
        }
    .end annotation

    if-gtz p0, :cond_0

    const/16 p0, 0x1fff

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez p0, :cond_7

    const/16 v5, 0xd

    new-array v6, v5, [Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    .line 6
    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->e:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->b:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->f:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v9, 0x4

    aput-object v7, v6, v9

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->h:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v10, 0x5

    aput-object v7, v6, v10

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->g:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v10, 0x6

    aput-object v7, v6, v10

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->i:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 v10, 0x7

    aput-object v7, v6, v10

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->k:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v10, 0x8

    aput-object v7, v6, v10

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->l:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v11, 0x9

    aput-object v7, v6, v11

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v11, 0xa

    aput-object v7, v6, v11

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->j:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v11, 0xb

    aput-object v7, v6, v11

    sget-object v7, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->a:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/16 v12, 0xc

    aput-object v7, v6, v12

    new-array v7, v5, [I

    .line 7
    fill-array-data v7, :array_0

    .line 8
    aget v13, v7, v10

    and-int/2addr v13, p0

    if-eqz v13, :cond_1

    .line 9
    aget-object v13, v6, v10

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    aget v13, v7, v11

    and-int/2addr v13, p0

    if-eqz v13, :cond_2

    .line 11
    aget-object v13, v6, v11

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-ge v8, v5, :cond_7

    .line 12
    aget v13, v7, v8

    and-int/2addr v13, p0

    if-eqz v13, :cond_6

    if-eq v8, v10, :cond_6

    if-ne v8, v11, :cond_3

    goto :goto_1

    :cond_3
    if-ne v8, v9, :cond_4

    .line 13
    aget-object v13, v6, v8

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-ne v8, v12, :cond_5

    .line 14
    aget-object v13, v6, v8

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    aget-object v13, v6, v8

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 16
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
    .end array-data
.end method
