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
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    iput-object p1, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1, v3}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-virtual {p1, v2}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget v0, p1, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iput v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    invoke-virtual {p0, v0, v3, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    invoke-virtual {p0, v3, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v8

    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method


# virtual methods
.method protected adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    if-eqz p3, :cond_5

    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->offset(II)V

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v0

    invoke-static {v0}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v1

    iget v0, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v0, p3, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    if-le v1, v0, :cond_6

    move v0, v1

    :goto_1
    iget v4, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v2, v4, :cond_0

    iget v4, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v1

    iput v4, p3, Landroid/graphics/Point;->x:I

    :cond_0
    iget v4, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v2, v4, :cond_1

    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Point;->x:I

    :cond_1
    iget v2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v3, v2, :cond_2

    iget v2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v1, :cond_2

    iget v2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Point;->y:I

    :cond_2
    iget v2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v3, v0, :cond_3

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 v0, v0, 0x2

    if-lt v0, v1, :cond_4

    :cond_3
    iget v0, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Point;->y:I

    :cond_4
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->offset(II)V

    return-object p3

    :cond_5
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    goto :goto_1
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    return-void
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int v1, p2, v1

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v0, v1, v2, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public fromPixelsRotationSensitive(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v1, v0, v2, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Lorg/osmdroid/util/BoundingBoxE6;

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(DDDD)V

    return-object v1
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    return v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 3

    const-wide/16 v0, 0x0

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    double-to-float v0, v0

    div-float v0, p1, v0

    return v0
.end method

.method public metersToPixels(F)F
    .locals 3

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

    div-float v0, p1, v0

    return v0
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p2

    aput v1, v0, v3

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object p3

    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    neg-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    neg-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->offset(II)V

    return-object p3

    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    iget v1, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->offset(II)V

    return-object p3

    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    shr-int/2addr v1, v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    shr-int v0, v2, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Point;->set(II)V

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, p2}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    move-wide v0, p1

    move-wide v2, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p1

    aput v1, v0, v2

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float v1, p2

    aput v1, v0, v3

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object p3

    :cond_2
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method
