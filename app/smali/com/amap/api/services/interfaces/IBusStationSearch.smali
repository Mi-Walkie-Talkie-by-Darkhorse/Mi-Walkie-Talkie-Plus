.class public interface abstract Lcom/amap/api/services/interfaces/IBusStationSearch;
.super Ljava/lang/Object;
.source "IBusStationSearch.java"


# virtual methods
.method public abstract getQuery()Lcom/amap/api/services/busline/BusStationQuery;
.end method

.method public abstract searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract searchBusStationAsyn()V
.end method

.method public abstract setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
.end method

.method public abstract setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
.end method
