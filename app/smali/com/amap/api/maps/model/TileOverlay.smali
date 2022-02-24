.class public final Lcom/amap/api/maps/model/TileOverlay;
.super Ljava/lang/Object;
.source "TileOverlay.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    return-void
.end method


# virtual methods
.method public final clearTileCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->clearTileCache()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Lcom/amap/api/maps/model/TileOverlay;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    check-cast p1, Lcom/amap/api/maps/model/TileOverlay;

    iget-object p1, p1, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    .line 3
    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getZIndex()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->remove()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->setVisible(Z)V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->setZIndex(F)V

    return-void
.end method
