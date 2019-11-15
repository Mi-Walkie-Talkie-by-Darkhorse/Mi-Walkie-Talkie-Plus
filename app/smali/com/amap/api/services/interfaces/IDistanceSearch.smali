.class public interface abstract Lcom/amap/api/services/interfaces/IDistanceSearch;
.super Ljava/lang/Object;
.source "IDistanceSearch.java"


# virtual methods
.method public abstract calculateRouteDistance(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)Lcom/amap/api/services/route/DistanceResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract calculateRouteDistanceAsyn(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V
.end method

.method public abstract setDistanceSearchListener(Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;)V
.end method
