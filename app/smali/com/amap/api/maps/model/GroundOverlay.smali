.class public final Lcom/amap/api/maps/model/GroundOverlay;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/amap/api/maps/model/GroundOverlay;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    check-cast p1, Lcom/amap/api/maps/model/GroundOverlay;

    iget-object p1, p1, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public final getBearing()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBearing()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeight()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getHeight()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTransparency()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getTransparency()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final getWidth()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->getWidth()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getZIndex()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->isVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setBearing(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setBearing(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setDimensions(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setDimensions(FF)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setDimensions(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setTransparency(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;->setTransparency(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/GroundOverlay;->a:Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->setZIndex(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
