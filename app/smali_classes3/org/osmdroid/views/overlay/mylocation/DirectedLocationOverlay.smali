.class public Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "DirectedLocationOverlay.java"


# instance fields
.field protected DIRECTION_ARROW:Landroid/graphics/Bitmap;

.field private DIRECTION_ARROW_CENTER_X:F

.field private DIRECTION_ARROW_CENTER_Y:F

.field private DIRECTION_ARROW_HEIGHT:I

.field private DIRECTION_ARROW_WIDTH:I

.field private final directionRotater:Landroid/graphics/Matrix;

.field private mAccuracy:I

.field protected mAccuracyPaint:Landroid/graphics/Paint;

.field protected mBearing:F

.field protected mLocation:Lorg/osmdroid/util/GeoPoint;

.field protected mPaint:Landroid/graphics/Paint;

.field private mShowAccuracy:Z

.field private final screenCoords:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->direction_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->setDirectionArrow(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    iget v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/Projection;->metersToEquatorPixels(F)F

    move-result v0

    const/high16 v2, 0x41000000    # 8.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mBearing:F

    iget v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget v4, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    iget v4, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setAccuracy(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mAccuracy:I

    return-void
.end method

.method public setBearing(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mBearing:F

    return-void
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    return-void
.end method

.method public setLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setShowAccuracy(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/DirectedLocationOverlay;->mShowAccuracy:Z

    return-void
.end method
