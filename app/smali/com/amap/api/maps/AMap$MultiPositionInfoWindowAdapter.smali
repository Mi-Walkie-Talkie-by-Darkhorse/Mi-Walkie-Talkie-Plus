.class public interface abstract Lcom/amap/api/maps/AMap$MultiPositionInfoWindowAdapter;
.super Ljava/lang/Object;
.source "AMap.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/AMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiPositionInfoWindowAdapter"
.end annotation


# virtual methods
.method public abstract getInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
.end method

.method public abstract getOverturnInfoWindow(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
.end method

.method public abstract getOverturnInfoWindowClick(Lcom/amap/api/maps/model/Marker;)Landroid/view/View;
.end method
