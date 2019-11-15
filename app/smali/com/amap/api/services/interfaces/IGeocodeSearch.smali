.class public interface abstract Lcom/amap/api/services/interfaces/IGeocodeSearch;
.super Ljava/lang/Object;
.source "IGeocodeSearch.java"


# virtual methods
.method public abstract getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
.end method

.method public abstract getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/geocoder/GeocodeQuery;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation
.end method

.method public abstract getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
.end method

.method public abstract setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V
.end method
