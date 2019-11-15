.class public Lcom/amap/api/col/sl/bc;
.super Ljava/lang/Object;
.source "DistanceSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IDistanceSearch;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/col/sl/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/sl/bc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bc;->b:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bc;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bc;)Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bc;->d:Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/bc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bc;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public calculateRouteDistance(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)Lcom/amap/api/services/route/DistanceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/sl/bc;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amap/api/col/sl/bc;->a:Ljava/lang/String;

    const-string v2, "calculateWalkRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->getDestination()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->getOrigins()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->getOrigins()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;->clone()Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;

    move-result-object v1

    new-instance v0, Lcom/amap/api/col/sl/u;

    iget-object v2, p0, Lcom/amap/api/col/sl/bc;->b:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/sl/u;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/u;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/DistanceResult;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DistanceResult;->setDistanceQuery(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-object v0
.end method

.method public calculateRouteDistanceAsyn(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bc$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bc$1;-><init>(Lcom/amap/api/col/sl/bc;Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDistanceSearchListener(Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bc;->d:Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;

    return-void
.end method
