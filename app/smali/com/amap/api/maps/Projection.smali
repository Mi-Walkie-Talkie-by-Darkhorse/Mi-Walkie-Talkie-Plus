.class public Lcom/amap/api/maps/Projection;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;


# direct methods
.method public constructor <init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    return-void
.end method


# virtual methods
.method public fromBoundsToTile(Lcom/amap/api/maps/model/LatLngBounds;II)Lcom/amap/api/maps/model/TileProjection;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->fromBoundsToTile(Lcom/amap/api/maps/model/LatLngBounds;II)Lcom/amap/api/maps/model/TileProjection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCameraInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->getCameraInfo()Lcom/amap/api/maps/model/AMapCameraInfo;

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

.method public getMapBounds(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->getMapBounds(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;

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

.method public toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toOpenGLLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toOpenGLWidth(I)F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toMapLenWithWin(I)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/Projection;->a:Lcom/autonavi/amap/mapcore/interfaces/IProjection;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IProjection;->toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
