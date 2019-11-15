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

    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 2

    const/16 v0, 0x64

    invoke-direct {p0, p3, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    iput v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    iput v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setZoomDifference(I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getLoadingBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setLoadingLineColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    iget v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 8

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v4, v5}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v4, v5}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTopLeftMercator:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mBottomRightMercator:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    move v6, v0

    :goto_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    shr-int/2addr v1, v6

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    shr-int/2addr v3, v6

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    shr-int/2addr v4, v6

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    shr-int/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v5

    sub-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v1, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v0

    sub-int v3, v0, v6

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_2
    move v6, v0

    goto/16 :goto_1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return v0
.end method

.method public getZoomDifference()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mMiniMapCanvasRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mIntersectionRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return-void
.end method

.method public setZoomDifference(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return-void
.end method
