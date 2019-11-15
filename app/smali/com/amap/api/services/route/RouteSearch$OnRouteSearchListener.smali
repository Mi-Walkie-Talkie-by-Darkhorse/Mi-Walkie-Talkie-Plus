.class public interface abstract Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;
.super Ljava/lang/Object;
.source "RouteSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRouteSearchListener"
.end annotation


# virtual methods
.method public abstract onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V
.end method

.method public abstract onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V
.end method

.method public abstract onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V
.end method

.method public abstract onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V
.end method
