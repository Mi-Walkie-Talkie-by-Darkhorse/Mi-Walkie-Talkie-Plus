.class public Lorg/osmdroid/views/overlay/MinimapOverlay;
.super Lorg/osmdroid/views/overlay/TilesOverlay;
.source "MinimapOverlay.java"


# instance fields
.field private mBottomRightMercator:Landroid/graphics/Point;

.field private mHeight:I

.field private final mIntersectionRect:Landroid/graphics/Rect;

.field private final mMiniMapCanvasRect:Landroid/graphics/Rect;

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProjection:Lorg/osmdroid/views/Projection;

.field private final mTileArea:Landroid/graphics/Rect;

.field private mTopLeftMercator:Landroid/graphics/Point;

.field private mWidth:I

.field private mZoomDifference:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 21
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    const/4 v0, 0x3

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    const/16 p3, 0x64

    .line 2
    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 3
    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    const/16 p3, 0xa

    .line 4
    iput p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    .line 6
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    .line 7
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    .line 8
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    .line 9
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    .line 10
    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setZoomDifference(I)V

    .line 11
    iget-object p3, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p3, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    .line 12
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getLoadingBackgroundColor()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->setLoadingLineColor(I)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    iget p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    iput p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 15
    iget p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const p2, -0x777778

    .line 17
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 13

    move-object v6, p0

    if-eqz p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iput-object v0, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    .line 3
    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v0

    .line 4
    iget-object v1, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 5
    iget-object v2, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 6
    iget-object v2, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 7
    iget-object v2, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget-object v3, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v5, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, v6, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, v6, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 11
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 12
    :cond_2
    iget-object v0, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    shr-int/2addr v5, v2

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    shr-int/2addr v7, v2

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    iget-object v0, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 14
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    iget-object v7, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    .line 15
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 16
    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    iget-object v0, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 18
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v7

    sub-int/2addr v5, v7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 19
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v7

    sub-int/2addr v1, v7

    .line 20
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    iget-object v0, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x2

    int-to-float v8, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x2

    int-to-float v9, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v10, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v11, v0

    iget-object v12, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget-object v3, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v0

    sub-int v4, v0, v2

    .line 23
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v5

    iget-object v7, v6, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    .line 24
    invoke-super/range {v0 .. v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return v0
.end method

.method public getZoomDifference()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    .line 2
    iget v3, p3, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v3

    .line 5
    invoke-virtual {p2, v0, v3, v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    iget-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    iget-object p3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 9
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return-void
.end method

.method public setZoomDifference(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return-void
.end method
