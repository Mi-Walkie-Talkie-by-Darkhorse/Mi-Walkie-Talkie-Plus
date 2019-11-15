.class public Lcom/amap/api/maps/model/RouteOverlay;
.super Ljava/lang/Object;
.source "RouteOverlay.java"


# instance fields
.field a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    iput-object p1, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    return-void
.end method


# virtual methods
.method public addRouteItem(I[Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;ZJI)V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->addRouteItem(I[Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;ZJI)V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->remove()V

    :cond_0
    return-void
.end method

.method public removeRouteName()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/RouteOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->removeRouteName()V

    :cond_0
    return-void
.end method
