.class public interface abstract Lcom/amap/api/services/interfaces/IDistrictSearch;
.super Ljava/lang/Object;
.source "IDistrictSearch.java"


# virtual methods
.method public abstract getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
.end method

.method public abstract searchDistrict()Lcom/amap/api/services/district/DistrictResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract searchDistrictAnsy()V
.end method

.method public abstract searchDistrictAsyn()V
.end method

.method public abstract setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
.end method

.method public abstract setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
.end method
