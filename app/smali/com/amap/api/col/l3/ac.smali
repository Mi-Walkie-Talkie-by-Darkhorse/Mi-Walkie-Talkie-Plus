.class final Lcom/amap/api/col/l3/ac;
.super Ljava/lang/Object;
.source "ProjectionDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/w;


# instance fields
.field private a:Lcom/amap/api/col/l3/u;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    return-void
.end method


# virtual methods
.method public final fromBoundsToTile(Lcom/amap/api/maps/model/LatLngBounds;II)Lcom/amap/api/maps/model/TileProjection;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_1

    if-ltz v2, :cond_1

    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v10

    .line 2
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v11

    .line 3
    iget-object v4, v0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    iget-object v5, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v5, v6

    move-wide v7, v8

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 4
    iget-object v4, v0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v11

    invoke-interface/range {v4 .. v9}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 5
    iget v1, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    shr-int v2, v1, v3

    div-int v15, v2, p3

    .line 6
    iget v2, v10, Landroid/graphics/Point;->y:I

    shr-int/2addr v2, v3

    div-int v18, v2, p3

    .line 7
    iget v2, v11, Landroid/graphics/Point;->x:I

    shr-int/2addr v2, v3

    div-int v16, v2, p3

    .line 8
    iget v2, v11, Landroid/graphics/Point;->y:I

    shr-int v4, v2, v3

    div-int v17, v4, p3

    shl-int v4, v15, v3

    mul-int v4, v4, p3

    shl-int v5, v17, v3

    mul-int v5, v5, p3

    sub-int/2addr v1, v4

    shr-int v13, v1, v3

    sub-int/2addr v2, v5

    shr-int v14, v2, v3

    .line 9
    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 10
    invoke-virtual {v11}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 11
    new-instance v1, Lcom/amap/api/maps/model/TileProjection;

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/amap/api/maps/model/TileProjection;-><init>(IIIIII)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, p1, v0}, Lcom/amap/api/col/l3/u;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 3
    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p1
.end method

.method public final getCameraInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCamerInfo()Lcom/amap/api/maps/model/AMapCameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMapBounds(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/amap/api/col/l3/u;->a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getVisibleRegion()Lcom/amap/api/maps/model/VisibleRegion;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ac;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v7

    .line 4
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ac;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v8

    .line 5
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ac;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    .line 6
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ac;->fromScreenLocation(Landroid/graphics/Point;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    .line 7
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v9

    .line 9
    new-instance v0, Lcom/amap/api/maps/model/VisibleRegion;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/maps/model/VisibleRegion;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLngBounds;)V

    return-object v0
.end method

.method public final toMapLenWithWin(I)F
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->g(I)F

    move-result p1

    return p1
.end method

.method public final toMapLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/PointF;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    return-object p1
.end method

.method public final toScreenLocation(Lcom/amap/api/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ac;->a:Lcom/amap/api/col/l3/u;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/col/l3/u;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3
    new-instance p1, Landroid/graphics/Point;

    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 4
    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-object p1
.end method
