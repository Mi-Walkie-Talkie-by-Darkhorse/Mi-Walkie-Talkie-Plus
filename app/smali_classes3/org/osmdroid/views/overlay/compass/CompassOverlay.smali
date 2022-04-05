.class public Lorg/osmdroid/views/overlay/compass/CompassOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;

# interfaces
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;


# static fields
.field public static final MENU_COMPASS:I


# instance fields
.field private mAzimuth:F

.field private mCompassCenterX:F

.field private mCompassCenterY:F

.field protected mCompassFrameBitmap:Landroid/graphics/Bitmap;

.field protected final mCompassFrameCenterX:F

.field protected final mCompassFrameCenterY:F

.field private final mCompassMatrix:Landroid/graphics/Matrix;

.field private final mCompassRadius:F

.field protected mCompassRoseBitmap:Landroid/graphics/Bitmap;

.field protected final mCompassRoseCenterX:F

.field protected final mCompassRoseCenterY:F

.field private final mDisplay:Landroid/view/Display;

.field private mIsCompassEnabled:Z

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field private mOptionsMenuEnabled:Z

.field public mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

.field protected final mScale:F

.field private sSmoothPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V
    .locals 1

    new-instance v0, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/overlay/compass/IOrientationProvider;Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/overlay/compass/IOrientationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRadius:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    iput-object p3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    const-string p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mDisplay:Landroid/view/Display;

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createCompassFramePicture()V

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->createCompassRosePicture()V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 p3, 0x3f000000    # 0.5f

    sub-float/2addr p1, p3

    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    iget-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr p1, p3

    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    iget-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr p1, p3

    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    iget-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr p1, p3

    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    return-void
.end method

.method private calculatePointOnCircle(FFFF)Landroid/graphics/Point;
    .locals 4

    neg-float p4, p4

    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double p3, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p3

    double-to-int v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p3, p3, v0

    double-to-int p3, p3

    new-instance p4, Landroid/graphics/Point;

    float-to-int p1, p1

    add-int/2addr p1, v2

    float-to-int p2, p2

    sub-int/2addr p2, p3

    invoke-direct {p4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p4
.end method

.method private createCompassFramePicture()V
    .locals 12

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const v3, -0x777778

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    div-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v11, 0x41a00000    # 20.0f

    mul-float v3, v3, v11

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v0, v0, v11

    invoke-virtual {v1, v2, v2, v0, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v7, v0, v11

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    move v5, v2

    move v6, v2

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v7, v0, v11

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-direct/range {v3 .. v9}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v7, v0, v11

    const/high16 v8, 0x43340000    # 180.0f

    invoke-direct/range {v3 .. v9}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v7, v0, v11

    const/high16 v8, 0x43870000    # 270.0f

    invoke-direct/range {v3 .. v9}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private createCompassRosePicture()V
    .locals 9

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x600000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0xdc

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    div-int/lit8 v2, v1, 0x2

    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    int-to-float v2, v2

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v7, 0x41880000    # 17.0f

    mul-float v6, v6, v7

    sub-float v6, v2, v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v6, v6, v8

    add-float/2addr v6, v2

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v6, v6, v8

    sub-float v6, v2, v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v6, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v6, v6, v7

    sub-float v6, v2, v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v5, v5, v7

    add-float/2addr v5, v2

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v5, v5, v8

    add-float/2addr v5, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v5, v5, v8

    sub-float v5, v2, v5

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v5, v5, v7

    add-float/2addr v5, v2

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v2, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->calculatePointOnCircle(FFFF)Landroid/graphics/Point;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p4, p2, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p5, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iget p4, p2, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget p5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p5, p5, v0

    sub-float/2addr p4, p5

    iget p5, p2, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    invoke-virtual {p3, p4, p5}, Landroid/graphics/Path;->moveTo(FF)V

    iget p4, p2, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget p5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float p5, p5, v0

    add-float/2addr p4, p5

    iget p5, p2, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    invoke-virtual {p3, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    iget p4, p2, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget p5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p5, p5, v0

    sub-float/2addr p2, p5

    invoke-virtual {p3, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, p3, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getDisplayOrientation()I
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method private invalidateCompass()V
    .locals 6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    add-float/2addr v4, v5

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    add-float/2addr v4, v5

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v1, v2, v3, v0}, Lorg/osmdroid/views/MapView;->postInvalidateMapCoordinates(IIII)V

    return-void
.end method


# virtual methods
.method public disableCompass()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->stopOrientationProvider()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 1

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_1

    iget p3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getDisplayOrientation()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected drawCompass(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 6

    iget-object p3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p3

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mScale:F

    mul-float v0, v0, v1

    iget v2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    mul-float v2, v2, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterX:F

    neg-float v3, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameCenterY:F

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    neg-float p2, p2

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    iget v5, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    invoke-virtual {v1, p2, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterX:F

    neg-float v1, v1

    iget v3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseCenterY:F

    neg-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v4, v4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public enableCompass()Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    move-result v0

    return v0
.end method

.method public enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-interface {p1, p0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->startOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationConsumer;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    :cond_0
    return p1
.end method

.method public getOrientation()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    return v0
.end method

.method public getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    return-object v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mIsCompassEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2

    sget v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    add-int/2addr v0, p2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lorg/osmdroid/library/R$string;->compass:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/osmdroid/library/R$drawable;->ic_menu_compass:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return p2
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->sSmoothPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassRoseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sub-int/2addr p1, p2

    sget p2, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mAzimuth:F

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->invalidateCompass()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 0

    sget p3, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->MENU_COMPASS:I

    add-int/2addr p3, p2

    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 p1, 0x0

    return p1
.end method

.method public setCompassCenter(FF)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterX:F

    iput p2, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mCompassCenterY:F

    return-void
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOptionsMenuEnabled:Z

    return-void
.end method

.method public setOrientationProvider(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/compass/IOrientationProvider;->stopOrientationProvider()V

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->mOrientationProvider:Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must pass an IOrientationProvider to setOrientationProvider()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
