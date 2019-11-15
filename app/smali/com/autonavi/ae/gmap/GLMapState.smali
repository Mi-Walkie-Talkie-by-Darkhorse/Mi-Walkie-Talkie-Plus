.class public Lcom/autonavi/ae/gmap/GLMapState;
.super Ljava/lang/Object;
.source "GLMapState.java"


# instance fields
.field private fov:F

.field private is_new_instance:Z

.field mGeoCenterPoint:Landroid/graphics/Point;

.field private native_engine_instance:J

.field private native_state_instance:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_engine_instance:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->is_new_instance:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->mGeoCenterPoint:Landroid/graphics/Point;

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_engine_instance:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->is_new_instance:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->mGeoCenterPoint:Landroid/graphics/Point;

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    iput-wide p2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_engine_instance:J

    invoke-static {p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeNewInstance(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->is_new_instance:Z

    :cond_0
    return-void
.end method

.method public static geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    int-to-long v0, p0

    int-to-long v2, p1

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v2, p2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v2, p2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-void
.end method

.method public static lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    const/16 v0, 0x14

    invoke-static {p2, p3, p0, p1, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    return-void
.end method

.method public static native nativeGetCameraDegree(J)F
.end method

.method public static native nativeGetCameraPosition(J[I)V
.end method

.method public static native nativeGetFov(J)F
.end method

.method public static native nativeGetGLUnitWithPixel20(JI)F
.end method

.method public static native nativeGetGLUnitWithWin(JI)F
.end method

.method public static native nativeGetGLUnitWithWinByY(JII)F
.end method

.method public static native nativeGetMapAngle(J)F
.end method

.method public static native nativeGetMapCenter(JLandroid/graphics/Point;)V
.end method

.method public static native nativeGetMapGLCenter(JLandroid/graphics/PointF;)V
.end method

.method public static native nativeGetMapViewBound(JLandroid/graphics/Rect;)V
.end method

.method public static native nativeGetMapZoomer(J)F
.end method

.method public static native nativeGetMaxZoomLevel(J)I
.end method

.method public static native nativeGetMinZoomLevel(J)I
.end method

.method public static native nativeGetPixel20Bound(JLandroid/graphics/Rect;)V
.end method

.method public static native nativeGetProjectionMatrix(J[F)V
.end method

.method public static native nativeGetViewMatrix(J[F)V
.end method

.method public static native nativeMapToP20Point(JFFLandroid/graphics/Point;)V
.end method

.method public static native nativeMapToScreenPoint(JFFLandroid/graphics/PointF;)V
.end method

.method public static native nativeMapToScreenPointWithZ(JFFFLandroid/graphics/PointF;)V
.end method

.method public static native nativeNewInstance(IJ)J
.end method

.method public static native nativeP20ToMapPoint(JIILandroid/graphics/PointF;)V
.end method

.method public static native nativeP20ToScreenPoint(JIILandroid/graphics/PointF;)V
.end method

.method public static native nativeRecalculate(J)V
.end method

.method public static native nativeScreenToMapGPoint(JFFLandroid/graphics/PointF;)V
.end method

.method public static native nativeScreenToP20Point(JFFLandroid/graphics/Point;)V
.end method

.method public static native nativeSetCameraDegree(JF)V
.end method

.method public static native nativeSetMapAngle(JF)V
.end method

.method public static native nativeSetMapCenter(JII)V
.end method

.method public static native nativeSetMapGLCenter(JFF)V
.end method

.method public static native nativeSetMapState(IJJ)V
.end method

.method public static native nativeSetMapZoomer(JF)V
.end method

.method public static native nativeStateDestroy(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->is_new_instance:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeStateDestroy(J)V

    :cond_0
    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    return-void
.end method

.method public geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v2, v3, p1, p2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeP20ToMapPoint(JIILandroid/graphics/PointF;)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    :cond_0
    return-void
.end method

.method public getCameraDegree()F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetCameraDegree(J)F

    move-result v0

    return v0
.end method

.method public getCameraHeaderAngle()F
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetCameraDegree(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraPosition([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetCameraPosition(J[I)V

    :cond_0
    return-void
.end method

.method public getFov()F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetFov(J)F

    move-result v0

    return v0
.end method

.method public getGLUnitWithPixel20(I)F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetGLUnitWithPixel20(JI)F

    move-result v0

    return v0
.end method

.method public getGLUnitWithWin(I)F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetGLUnitWithWin(JI)F

    move-result v0

    return v0
.end method

.method public getGLUnitWithWinByY(II)F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetGLUnitWithWinByY(JII)F

    move-result v0

    return v0
.end method

.method public getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapCenter(JLandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    :cond_0
    return-void
.end method

.method public getMapAngle()F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapAngle(J)F

    move-result v0

    return v0
.end method

.method public getMapGeoCenter()Landroid/graphics/Point;
    .locals 3

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->mGeoCenterPoint:Landroid/graphics/Point;

    invoke-static {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapCenter(JLandroid/graphics/Point;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->mGeoCenterPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMapGlCenter()Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapGLCenter(JLandroid/graphics/PointF;)V

    return-object v0
.end method

.method public getMapLenWithWin(I)F
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMapViewBound()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapViewBound(JLandroid/graphics/Rect;)V

    return-object v0
.end method

.method public getMapZoomer()F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapZoomer(J)F

    move-result v0

    return v0
.end method

.method public getMapengineInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_engine_instance:J

    return-wide v0
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    return-wide v0
.end method

.method public getPixel20Bound(Landroid/graphics/Rect;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetPixel20Bound(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public getProjectionMatrix([F)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetProjectionMatrix(J[F)V

    :cond_0
    return-void
.end method

.method public getViewMatrix([F)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetViewMatrix(J[F)V

    :cond_0
    return-void
.end method

.method public map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v2, v3, p1, p2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToP20Point(JFFLandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    :cond_0
    return-void
.end method

.method public map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v2, v3, p1, p2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToScreenPoint(JFFLandroid/graphics/PointF;)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    :cond_0
    return-void
.end method

.method public mapToP20Point(FFLandroid/graphics/Point;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToP20Point(JFFLandroid/graphics/Point;)V

    return-void
.end method

.method public mapToScreenPoint(FFLandroid/graphics/PointF;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToScreenPoint(JFFLandroid/graphics/PointF;)V

    return-void
.end method

.method public mapToScreenPointWithZ(FFFLandroid/graphics/PointF;)V
    .locals 6

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToScreenPointWithZ(JFFFLandroid/graphics/PointF;)V

    return-void
.end method

.method public p20ToMapPoint(IILandroid/graphics/PointF;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeP20ToMapPoint(JIILandroid/graphics/PointF;)V

    return-void
.end method

.method public p20ToScreenPoint(IILandroid/graphics/PointF;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeP20ToScreenPoint(JIILandroid/graphics/PointF;)V

    return-void
.end method

.method public recalculate()V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeRecalculate(J)V

    return-void
.end method

.method public recycle()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->is_new_instance:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeStateDestroy(J)V

    :cond_0
    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    return-void
.end method

.method public reset()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_engine_instance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_engine_instance:J

    invoke-static {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeNewInstance(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    :cond_1
    return-void
.end method

.method public screenToMapGPoint(FFLandroid/graphics/PointF;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeScreenToMapGPoint(JFFLandroid/graphics/PointF;)V

    return-void
.end method

.method public screenToP20Point(FFLandroid/graphics/Point;)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeScreenToP20Point(JFFLandroid/graphics/Point;)V

    return-void
.end method

.method public setCameraDegree(F)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetCameraDegree(JF)V

    return-void
.end method

.method public setMapAngle(F)V
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr p1, v1

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapAngle(JF)V

    return-void

    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    sub-float/2addr p1, v1

    goto :goto_0
.end method

.method public setMapGeoCenter(II)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapCenter(JII)V

    return-void
.end method

.method public setMapGlCenter(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapGLCenter(JFF)V

    return-void
.end method

.method public setMapZoomer(F)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMaxZoomLevel(J)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMaxZoomLevel(J)I

    move-result v0

    int-to-float p1, v0

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapZoomer(JF)V

    return-void
.end method

.method public setMapstateInstance(J)V
    .locals 1

    iput-wide p1, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    return-void
.end method

.method public setNativeMapengineState(IJ)V
    .locals 4

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide p2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_engine_instance:J

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapState(IJJ)V

    goto :goto_0
.end method

.method public win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 5

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapState;->native_state_instance:J

    int-to-float v1, p1

    int-to-float v4, p2

    invoke-static {v2, v3, v1, v4, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeScreenToMapGPoint(JFFLandroid/graphics/PointF;)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    :cond_0
    return-void
.end method
