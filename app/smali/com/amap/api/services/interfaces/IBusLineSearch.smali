.class public interface abstract Lcom/amap/api/services/interfaces/IBusLineSearch;
.super Ljava/lang/Object;
.source "IBusLineSearch.java"


# virtual methods
.method public abstract getQuery()Lcom/amap/api/services/busline/BusLineQuery;
.end method

.method public abstract searchBusLine()Lcom/amap/api/services/busline/BusLineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract searchBusLineAsyn()V
.end method

.method public abstract setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V
.end method

.method public abstract setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V
.end method
