.class public interface abstract Lcom/amap/api/services/interfaces/IRoutePOISearch;
.super Ljava/lang/Object;
.source "IRoutePOISearch.java"


# virtual methods
.method public abstract getQuery()Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;
.end method

.method public abstract searchRoutePOI()Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract searchRoutePOIAsyn()V
.end method

.method public abstract setQuery(Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
.end method

.method public abstract setRoutePOISearchListener(Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;)V
.end method
