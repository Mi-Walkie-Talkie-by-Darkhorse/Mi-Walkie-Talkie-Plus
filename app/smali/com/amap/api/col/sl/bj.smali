.class public Lcom/amap/api/col/sl/bj;
.super Ljava/lang/Object;
.source "RouteSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IRouteSearch;


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

.field private b:Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bj;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bj;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    return-object v0
.end method

.method private static a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/bj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/sl/bj;)Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->b:Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

    return-object v0
.end method


# virtual methods
.method public calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateBusRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object v1

    new-instance v0, Lcom/amap/api/col/sl/m;

    iget-object v2, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/sl/m;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/m;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/BusRouteResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setBusQuery(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0
.end method

.method public calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bj$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bj$2;-><init>(Lcom/amap/api/col/sl/bj;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateBusRouteAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateDriveRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object v1

    new-instance v0, Lcom/amap/api/col/sl/w;

    iget-object v2, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/sl/w;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/w;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/DriveRouteResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DriveRouteResult;->setDriveQuery(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0
.end method

.method public calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bj$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bj$3;-><init>(Lcom/amap/api/col/sl/bj;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateDriveRouteAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateRideRoute(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)Lcom/amap/api/services/route/RideRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculaterideRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    move-result-object v1

    new-instance v0, Lcom/amap/api/col/sl/an;

    iget-object v2, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/sl/an;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/an;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RideRouteResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RideRouteResult;->setRideQuery(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0
.end method

.method public calculateRideRouteAsyn(Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bj$4;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bj$4;-><init>(Lcom/amap/api/col/sl/bj;Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateRideRouteAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateTruckRoute(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)Lcom/amap/api/services/route/TruckRouteRestult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateDriveRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;

    move-result-object v1

    new-instance v0, Lcom/amap/api/col/sl/at;

    iget-object v2, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/sl/at;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/TruckRouteRestult;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TruckRouteRestult;->setTruckQuery(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0
.end method

.method public calculateTruckRouteAsyn(Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bj$5;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bj$5;-><init>(Lcom/amap/api/col/sl/bj;Lcom/amap/api/services/route/RouteSearch$TruckRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateTruckRouteAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateWalkRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/bj;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    move-result-object v1

    new-instance v0, Lcom/amap/api/col/sl/au;

    iget-object v2, p0, Lcom/amap/api/col/sl/bj;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/sl/au;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/au;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkRouteResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkRouteResult;->setWalkQuery(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0
.end method

.method public calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bj$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/sl/bj$1;-><init>(Lcom/amap/api/col/sl/bj;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "calculateWalkRouteAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnTruckRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bj;->b:Lcom/amap/api/services/route/RouteSearch$OnTruckRouteSearchListener;

    return-void
.end method

.method public setRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bj;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    return-void
.end method
