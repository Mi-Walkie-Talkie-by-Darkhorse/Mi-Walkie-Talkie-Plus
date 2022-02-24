.class public Lorg/osmdroid/views/Projection;
.super Ljava/lang/Object;
.source "Projection.java"

# interfaces
.implements Lorg/osmdroid/api/IProjection;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# instance fields
.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mMapViewHeight:I

.field private final mMapViewWidth:I

.field protected final mMultiTouchScale:F

.field protected final mOffsetX:I

.field protected final mOffsetY:I

.field private final mRotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mRotateScalePoints:[F

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private final mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mZoomLevelProjection:I

.field private mapView:Lorg/osmdroid/views/MapView;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    .line 5
    iput-object p1, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p1, v1}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    .line 13
    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v3, p1, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 14
    iget-object v2, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 15
    iget p1, p1, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iput p1, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    .line 16
    iget p1, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    .line 17
    iget v2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 18
    new-instance v10, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    .line 19
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v6

    .line 20
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v10, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method


# virtual methods
.method protected adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 3
    iget p1, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    .line 4
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result p1

    invoke-static {p1}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result p1

    .line 5
    iget p2, p3, Landroid/graphics/Point;->x:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 6
    iget v0, p3, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 7
    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    if-le p1, v1, :cond_1

    move v1, p1

    .line 8
    :cond_1
    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p2, v2, :cond_2

    .line 9
    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 10
    :cond_2
    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p2, v2, :cond_3

    .line 11
    iget p2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Point;->x:I

    .line 12
    :cond_3
    iget p2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le v0, p2, :cond_4

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 p2, p2, 0x2

    if-ge p2, p1, :cond_4

    .line 13
    iget p2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 14
    :cond_4
    iget p2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt v0, p2, :cond_5

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 p2, p2, 0x2

    if-lt p2, p1, :cond_6

    .line 15
    :cond_5
    iget p2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 16
    :cond_6
    iget p1, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-object p3
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    return-void
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .line 2
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {p1, p2, v0, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixelsRotationSensitive(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int/2addr p2, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {p2, p1, v0, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v9, Lorg/osmdroid/util/BoundingBoxE6;

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 2
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v5

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 3
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(DDDD)V

    return-object v9
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .line 1
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .line 1
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    return v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 3

    .line 1
    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public metersToPixels(F)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    .line 5
    aput p1, v0, p2

    .line 6
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 7
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, p1, v1

    float-to-int v0, v0

    aget p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Point;->set(II)V

    :goto_1
    return-object p3
.end method

.method public toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 3
    iget p1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    neg-int p1, p1

    iget p2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    neg-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-object p3
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 1
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    .line 2
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    move-object v5, p2

    .line 3
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 4
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0, p1}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 5
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0, p1}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 3
    iget p1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    iget p2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-object p3
.end method

.method public toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 2
    :goto_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    iget v1, p1, Landroid/graphics/Point;->x:I

    shr-int/2addr v1, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    shr-int/2addr p1, v0

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 5
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 6
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0, p1}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 4
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    move-wide v0, p1

    move-wide v2, p3

    move-object v5, p5

    .line 5
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    int-to-double v0, p1

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v4, v0, v2

    int-to-double p1, p2

    mul-double v6, p1, v2

    .line 2
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v8

    move-object v9, p3

    .line 3
    invoke-static/range {v4 .. v9}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    .line 5
    aput p1, v0, p2

    .line 6
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 7
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, p1, v1

    float-to-int v0, v0

    aget p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Point;->set(II)V

    :goto_1
    return-object p3
.end method
