.class public interface abstract Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
.super Ljava/lang/Object;
.source "GeocodeSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/geocoder/GeocodeSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGeocodeSearchListener"
.end annotation


# virtual methods
.method public abstract onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V
.end method

.method public abstract onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V
.end method
