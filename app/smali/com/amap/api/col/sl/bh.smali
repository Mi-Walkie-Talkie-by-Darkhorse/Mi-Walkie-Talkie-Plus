.class public Lcom/amap/api/col/sl/bh;
.super Ljava/lang/Object;
.source "PoiSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IPoiSearch;


# static fields
.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/poisearch/PoiResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private h:I

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/col/sl/bh;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/bh;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bh;->c:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/amap/api/col/sl/bh;->setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bh;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bh;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/bh;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bh;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    return-object v0
.end method


# virtual methods
.method public getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bh;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    return-object v0
.end method

.method public searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    invoke-virtual {p0}, Lcom/amap/api/col/sl/bh;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PoiSearch"

    const-string v2, "searchPOI"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/sl/bh;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Bound"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v1

    :goto_2
    if-nez v2, :cond_d

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Polygon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Rectangle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-eqz v3, :cond_9

    if-nez v2, :cond_a

    :cond_9
    move v2, v1

    goto :goto_2

    :cond_a
    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_b

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_c

    :cond_b
    move v2, v1

    goto :goto_2

    :cond_c
    move v2, v0

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-nez v2, :cond_e

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v3, p0, Lcom/amap/api/col/sl/bh;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v2, :cond_10

    :cond_f
    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v3, p0, Lcom/amap/api/col/sl/bh;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v3, p0, Lcom/amap/api/col/sl/bh;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/sl/bh;->h:I

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/sl/bh;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/sl/bh;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    :cond_11
    sget-object v2, Lcom/amap/api/col/sl/bh;->i:Ljava/util/HashMap;

    if-eqz v2, :cond_12

    sget-object v2, Lcom/amap/api/col/sl/bh;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_12
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v3, :cond_13

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v2

    :cond_13
    iget v3, p0, Lcom/amap/api/col/sl/bh;->h:I

    if-nez v3, :cond_16

    new-instance v0, Lcom/amap/api/col/sl/ai;

    iget-object v1, p0, Lcom/amap/api/col/sl/bh;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/col/sl/al;

    iget-object v4, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/amap/api/col/sl/al;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v0, v1, v3}, Lcom/amap/api/col/sl/ai;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/al;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amap/api/col/sl/bh;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v1, :cond_14

    if-nez v0, :cond_15

    :cond_14
    :goto_4
    return-object v0

    :cond_15
    iget v1, p0, Lcom/amap/api/col/sl/bh;->h:I

    if-lez v1, :cond_14

    iget v1, p0, Lcom/amap/api/col/sl/bh;->h:I

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v2

    if-le v1, v2, :cond_14

    sget-object v1, Lcom/amap/api/col/sl/bh;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_16
    iget-object v3, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v3}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v3

    iget v4, p0, Lcom/amap/api/col/sl/bh;->h:I

    if-gt v3, v4, :cond_17

    if-ltz v3, :cond_17

    :goto_5
    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move v0, v1

    goto :goto_5

    :cond_18
    sget-object v0, Lcom/amap/api/col/sl/bh;->i:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    if-nez v0, :cond_14

    new-instance v0, Lcom/amap/api/col/sl/ai;

    iget-object v1, p0, Lcom/amap/api/col/sl/bh;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/col/sl/al;

    iget-object v4, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/amap/api/col/sl/al;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v0, v1, v3}, Lcom/amap/api/col/sl/ai;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/al;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ai;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    sget-object v1, Lcom/amap/api/col/sl/bh;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public searchPOIAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bh$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/bh$1;-><init>(Lcom/amap/api/col/sl/bh;)V

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

.method public searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/sl/bh;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    new-instance v0, Lcom/amap/api/col/sl/ah;

    iget-object v1, p0, Lcom/amap/api/col/sl/bh;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/col/sl/ah;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method public searchPOIIdAsyn(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bh$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bh$2;-><init>(Lcom/amap/api/col/sl/bh;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bh;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "en"

    iput-object v0, p0, Lcom/amap/api/col/sl/bh;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/col/sl/bh;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bh;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bh;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    return-void
.end method
