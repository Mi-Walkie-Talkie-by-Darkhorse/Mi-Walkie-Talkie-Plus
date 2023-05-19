.class public Lcom/huawei/hms/scankit/p/qb;
.super Ljava/lang/Object;
.source "MultipleBarcodeDetector.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/qb;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/huawei/hms/scankit/p/qb;->b:I

    return-void
.end method


# virtual methods
.method public a(Z[BIIIZ)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p2 .. p6}, Lcom/huawei/hms/scankit/util/LoadOpencvJNIUtil;->multiBarcodeDetect([BIIIZ)[F

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    array-length v3, v1

    div-int/lit8 v3, v3, 0xa

    iput v3, v0, Lcom/huawei/hms/scankit/p/qb;->b:I

    goto :goto_0

    .line 3
    :cond_0
    iput v2, v0, Lcom/huawei/hms/scankit/p/qb;->b:I

    .line 4
    :goto_0
    iget v3, v0, Lcom/huawei/hms/scankit/p/qb;->b:I

    if-ge v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0xa

    .line 5
    invoke-static {v1, v3}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-static {v1, v4}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v3, 0x2

    invoke-static {v1, v5}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v3, 0x3

    .line 6
    invoke-static {v1, v6}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v3, 0x4

    invoke-static {v1, v7}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v3, 0x5

    invoke-static {v1, v8}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v9, v3, 0x6

    .line 7
    invoke-static {v1, v9}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v10, v3, 0x7

    invoke-static {v1, v10}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v11, v3, 0x8

    invoke-static {v1, v11}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v12

    if-eqz v12, :cond_1

    add-int/lit8 v12, v3, 0x9

    .line 8
    invoke-static {v1, v12}, Lcom/huawei/hms/scankit/util/b;->a([FI)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 9
    new-instance v13, Lcom/huawei/hms/scankit/p/ob;

    aget v16, v1, v3

    aget v17, v1, v4

    aget v18, v1, v5

    aget v19, v1, v6

    aget v20, v1, v7

    aget v21, v1, v8

    aget v22, v1, v9

    aget v23, v1, v10

    aget v24, v1, v11

    aget v25, v1, v12

    move-object v14, v13

    move/from16 v15, p1

    invoke-direct/range {v14 .. v25}, Lcom/huawei/hms/scankit/p/ob;-><init>(ZFFFFFFFFFF)V

    .line 10
    iget-object v3, v0, Lcom/huawei/hms/scankit/p/qb;->a:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
