.class public Lcom/amap/api/maps/model/MultiPointOverlay;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/model/MultiPointOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/model/MultiPointOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->destroy(Z)V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/model/MultiPointOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->remove(Z)V

    :cond_0
    return-void
.end method

.method public setAnchor(FF)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/MultiPointOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->setAnchor(FF)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/MultiPointOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/MultiPointOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;->addItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method
