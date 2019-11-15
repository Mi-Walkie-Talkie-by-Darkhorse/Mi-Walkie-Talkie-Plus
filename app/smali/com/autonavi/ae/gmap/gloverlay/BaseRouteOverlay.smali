.class public Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;
.super Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;
.source "BaseRouteOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay",
        "<",
        "Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addRouteItem(I[Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;ZJI)V
    .locals 8

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->getNativeInstatnce()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    const/4 v7, 0x1

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->addRouteItem(I[Lcom/autonavi/ae/gmap/gloverlay/GLRouteProperty;ZJIZ)V

    :cond_0
    return-void
.end method

.method protected iniGLOverlay()V
    .locals 4

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    iget v1, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mEngineID:I

    iget-object v2, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    return-void
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->releaseInstance()V

    return-void
.end method

.method public removeRouteName()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->getNativeInstatnce()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;->mGLOverlay:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLRouteOverlay;->removeRouteName(Z)V

    :cond_0
    return-void
.end method

.method public resumeMarker(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
