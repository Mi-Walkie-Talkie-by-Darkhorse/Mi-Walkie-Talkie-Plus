.class public Lcom/amap/api/col/sl/bb;
.super Ljava/lang/Object;
.source "CloudSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/ICloudSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

.field private c:Lcom/amap/api/services/cloud/CloudSearch$Query;

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/cloud/CloudResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bb;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bb;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bb;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/sl/bb;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/amap/api/col/sl/ak;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/sl/ak;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/amap/api/col/sl/q;

    iget-object v3, p0, Lcom/amap/api/col/sl/bb;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/amap/api/col/sl/q;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/ak;)V

    invoke-virtual {v2}, Lcom/amap/api/col/sl/q;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/cloud/CloudItemDetail;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "CloudSearch"

    const-string v3, "searchCloudDetail"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v0, Lcom/amap/api/services/core/AMapException;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/amap/api/services/core/AMapException;

    throw v0

    :cond_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bb;Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/bb;->a(Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/services/cloud/CloudSearch$Query;)Lcom/amap/api/services/cloud/CloudResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v5, v4

    :goto_0
    if-nez v5, :cond_a

    :try_start_0
    new-instance v2, Lcom/amap/api/services/core/AMapException;

    const-string v4, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v2, v4}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    :goto_1
    const-string v4, "CloudSearch"

    const-string v5, "searchCloud"

    invoke-static {v2, v4, v5}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v4, v2, Lcom/amap/api/services/core/AMapException;

    if-eqz v4, :cond_10

    check-cast v2, Lcom/amap/api/services/core/AMapException;

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Bound"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Rectangle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v6

    if-eqz v5, :cond_4

    if-nez v6, :cond_5

    :cond_4
    move v5, v4

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-gez v7, :cond_6

    invoke-virtual {v5}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v5, v8, v6

    if-ltz v5, :cond_7

    :cond_6
    move v5, v4

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Polygon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v6

    move v5, v4

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_8

    move v5, v4

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    move v5, v2

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lcom/amap/api/col/sl/bb;->c:Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-virtual {p1, v5}, Lcom/amap/api/services/cloud/CloudSearch$Query;->queryEquals(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    iput v5, p0, Lcom/amap/api/col/sl/bb;->d:I

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->clone()Lcom/amap/api/services/cloud/CloudSearch$Query;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/col/sl/bb;->c:Lcom/amap/api/services/cloud/CloudSearch$Query;

    iget-object v5, p0, Lcom/amap/api/col/sl/bb;->e:Ljava/util/HashMap;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/amap/api/col/sl/bb;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_b
    iget v5, p0, Lcom/amap/api/col/sl/bb;->d:I

    if-nez v5, :cond_d

    new-instance v2, Lcom/amap/api/col/sl/r;

    iget-object v4, p0, Lcom/amap/api/col/sl/bb;->a:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Lcom/amap/api/col/sl/r;-><init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    invoke-virtual {v2}, Lcom/amap/api/col/sl/r;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/cloud/CloudResult;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/sl/bb;->e:Ljava/util/HashMap;

    iget v3, p0, Lcom/amap/api/col/sl/bb;->d:I

    if-lez v3, :cond_c

    iget-object v3, p0, Lcom/amap/api/col/sl/bb;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_c
    :goto_3
    return-object v2

    :cond_d
    :try_start_3
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v5

    iget v6, p0, Lcom/amap/api/col/sl/bb;->d:I

    if-gt v5, v6, :cond_e

    if-lez v5, :cond_e

    :goto_4
    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "page out of range"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    move v2, v4

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lcom/amap/api/col/sl/bb;->e:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/cloud/CloudResult;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v2, :cond_c

    :try_start_4
    new-instance v3, Lcom/amap/api/col/sl/r;

    iget-object v4, p0, Lcom/amap/api/col/sl/bb;->a:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/amap/api/col/sl/r;-><init>(Landroid/content/Context;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    invoke-virtual {v3}, Lcom/amap/api/col/sl/r;->a()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/amap/api/services/cloud/CloudResult;

    move-object v2, v0

    iget-object v3, p0, Lcom/amap/api/col/sl/bb;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_1

    :cond_10
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bb;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bb;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/bb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bb;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public searchCloudAsyn(Lcom/amap/api/services/cloud/CloudSearch$Query;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bb$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bb$1;-><init>(Lcom/amap/api/col/sl/bb;Lcom/amap/api/services/cloud/CloudSearch$Query;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public searchCloudDetailAsyn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bb$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/col/sl/bb$2;-><init>(Lcom/amap/api/col/sl/bb;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnCloudSearchListener(Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bb;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    return-void
.end method
