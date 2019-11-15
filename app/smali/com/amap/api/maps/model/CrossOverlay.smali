.class public Lcom/amap/api/maps/model/CrossOverlay;
.super Ljava/lang/Object;
.source "CrossOverlay.java"


# instance fields
.field a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

.field b:Lcom/amap/api/maps/model/CrossOverlayOptions;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/model/CrossOverlayOptions;Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    iput-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->b:Lcom/amap/api/maps/model/CrossOverlayOptions;

    iput-object p1, p0, Lcom/amap/api/maps/model/CrossOverlay;->b:Lcom/amap/api/maps/model/CrossOverlayOptions;

    iput-object p2, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->remove()V

    :cond_0
    return-void
.end method

.method public setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)V

    return-void
.end method

.method public setData([B)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->setData([B)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlay;->a:Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->setVisible(Z)V

    :cond_0
    return-void
.end method
