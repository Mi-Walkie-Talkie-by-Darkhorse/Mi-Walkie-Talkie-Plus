.class public interface abstract Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/share/ShareSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnShareSearchListener"
.end annotation


# virtual methods
.method public abstract onBusRouteShareUrlSearched(Ljava/lang/String;I)V
.end method

.method public abstract onDrivingRouteShareUrlSearched(Ljava/lang/String;I)V
.end method

.method public abstract onLocationShareUrlSearched(Ljava/lang/String;I)V
.end method

.method public abstract onNaviShareUrlSearched(Ljava/lang/String;I)V
.end method

.method public abstract onPoiShareUrlSearched(Ljava/lang/String;I)V
.end method

.method public abstract onWalkRouteShareUrlSearched(Ljava/lang/String;I)V
.end method
