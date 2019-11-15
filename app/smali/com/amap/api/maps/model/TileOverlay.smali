.class public final Lcom/amap/api/maps/model/TileOverlay;
.super Ljava/lang/Object;
.source "TileOverlay.java"


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    return-void
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->clearTileCache()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/amap/api/maps/model/TileOverlay;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    check-cast p1, Lcom/amap/api/maps/model/TileOverlay;

    iget-object v2, p1, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getZIndex()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->hashCodeRemote()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->isVisible()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->remove()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->setZIndex(F)V

    return-void
.end method
