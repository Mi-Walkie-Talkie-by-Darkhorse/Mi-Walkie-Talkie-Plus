.class public Lcom/amap/api/col/sl/bi;
.super Ljava/lang/Object;
.source "RoutePOISearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IRoutePOISearch;


# instance fields
.field private a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/bi;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/col/sl/bi;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bi;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bi;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/bi;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bi;->c:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    return-object v0
.end method

.method public searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/bi;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    iget-object v1, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RoutePOISearchCore"

    const-string v2, "searchRoutePOI"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getSearchType()Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getPolylines()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->clone()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/ap;

    iget-object v2, p0, Lcom/amap/api/col/sl/bi;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/col/sl/ap;-><init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    invoke-virtual {v1}, Lcom/amap/api/col/sl/ap;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public searchRoutePOIAsyn()V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bi$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/bi$1;-><init>(Lcom/amap/api/col/sl/bi;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bi;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    return-void
.end method

.method public setRoutePOISearchListener(Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bi;->c:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    return-void
.end method
