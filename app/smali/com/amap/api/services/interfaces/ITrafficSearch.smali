.class public interface abstract Lcom/amap/api/services/interfaces/ITrafficSearch;
.super Ljava/lang/Object;
.source "ITrafficSearch.java"


# virtual methods
.method public abstract loadTrafficByCircle(Lcom/amap/api/services/traffic/CircleTrafficQuery;)Lcom/amap/api/services/traffic/TrafficStatusResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract loadTrafficByCircleAsyn(Lcom/amap/api/services/traffic/CircleTrafficQuery;)V
.end method

.method public abstract loadTrafficByRoad(Lcom/amap/api/services/traffic/RoadTrafficQuery;)Lcom/amap/api/services/traffic/TrafficStatusResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract loadTrafficByRoadAsyn(Lcom/amap/api/services/traffic/RoadTrafficQuery;)V
.end method

.method public abstract setTrafficSearchListener(Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;)V
.end method
