.class public Lorg/osmdroid/views/overlay/ScaleBarOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "ScaleBarOverlay.java"

# interfaces
.implements Lorg/osmdroid/util/constants/GeoConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    }
.end annotation


# static fields
.field private static final sTextBoundsRect:Landroid/graphics/Rect;


# instance fields
.field private adjustLength:Z

.field protected alignBottom:Z

.field protected alignRight:Z

.field private barPaint:Landroid/graphics/Paint;

.field protected final barPath:Landroid/graphics/Path;

.field private bgPaint:Landroid/graphics/Paint;

.field private centred:Z

.field private context:Landroid/content/Context;

.field private lastLatitude:D

.field private lastZoomLevel:I

.field latitudeBar:Z

.field protected final latitudeBarRect:Landroid/graphics/Rect;

.field longitudeBar:Z

.field protected final longitudeBarRect:Landroid/graphics/Rect;

.field private mMapView:Lorg/osmdroid/views/MapView;

.field private maxLength:F

.field minZoom:I

.field public screenHeight:I

.field public screenWidth:I

.field private textPaint:Landroid/graphics/Paint;

.field unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field xOffset:I

.field public xdpi:F

.field yOffset:I

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 10

    const-wide/high16 v8, 0x400e000000000000L    # 3.75

    const-wide v6, 0x4000cccccccccccdL    # 2.1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    iput v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    iput-boolean v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    iput-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v2, "MANUFACTURER"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "motorola"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DROIDX"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v0, v0

    div-double/2addr v0, v8

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    :cond_0
    :goto_1
    const v0, 0x40228f5c    # 2.54f

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v0, v0

    div-double/2addr v0, v8

    double-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    :cond_2
    const-string v1, "motorola"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Droid"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43840000    # 264.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    const/high16 v0, 0x43840000    # 264.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1
.end method

.method private adjustScaleBarLength(D)D
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_1

    const-wide v4, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_0

    const-wide v4, 0x409925604189374cL    # 1609.344

    div-double/2addr p1, v4

    move v6, v0

    move-wide v0, v2

    move-wide v2, p1

    :goto_0
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_9

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide v0, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double/2addr p1, v0

    const/4 v0, 0x1

    move v6, v0

    move-wide v0, v2

    move-wide v2, p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_a

    const-wide v4, 0x4077266666666666L    # 370.4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_2

    const-wide v4, 0x409cf00000000000L    # 1852.0

    div-double/2addr p1, v4

    move v6, v0

    move-wide v0, v2

    move-wide v2, p1

    goto :goto_0

    :cond_2
    const-wide v0, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double/2addr p1, v0

    const/4 v0, 0x1

    move v6, v0

    move-wide v0, v2

    move-wide v2, p1

    goto :goto_0

    :goto_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_3

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_3

    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    move-wide v4, v2

    move-wide v2, v0

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_2
    if-eqz v6, :cond_7

    const-wide v4, 0x400a3f28fd4f4b98L    # 3.2808399

    div-double/2addr v0, v4

    :cond_4
    :goto_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    long-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :cond_5
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_2

    :cond_6
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v5, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v4, v5, :cond_8

    const-wide v4, 0x409925604189374cL    # 1609.344

    mul-double/2addr v0, v4

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v5, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v4, v5, :cond_4

    const-wide v4, 0x409cf00000000000L    # 1852.0

    mul-double/2addr v0, v4

    goto :goto_3

    :cond_9
    move-wide v4, v2

    move-wide v2, v0

    goto :goto_1

    :cond_a
    move v6, v0

    move-wide v0, v2

    move-wide v2, p1

    goto/16 :goto_0
.end method

.method private drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 6

    const/4 v4, 0x0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p2, v0, v1, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p2, v1, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v3

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v0, :cond_1

    int-to-double v0, v3

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v0

    :goto_0
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v2, v3

    div-double v2, v4, v2

    double-to-int v2, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v4

    double-to-int v1, v0

    div-int/lit8 v0, v2, 0x2

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    sub-int v2, v4, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    :cond_0
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    int-to-float v1, v1

    :goto_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    int-to-double v0, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_1
.end method

.method private drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {p2, v0, v1, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v3, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v3

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v0, :cond_1

    int-to-double v0, v3

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v0

    :goto_0
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v2, v3

    div-double v2, v4, v2

    double-to-int v2, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    int-to-float v0, v0

    :goto_1
    div-int/lit8 v1, v2, 0x2

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    sub-int v2, v4, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    int-to-double v0, v3

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1
.end method


# virtual methods
.method public disableScaleBar()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 7

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    if-ne v0, v2, :cond_2

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    double-to-int v2, v2

    iget-wide v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    double-to-int v3, v4

    if-eq v2, v3, :cond_3

    :cond_2
    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    invoke-virtual {p0, v6}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->rebuildBarPath(Lorg/osmdroid/views/Projection;)V

    :cond_3
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v2, :cond_4

    mul-int/lit8 v0, v0, -0x1

    :cond_4
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v2, :cond_5

    mul-int/lit8 v1, v1, -0x1

    :cond_5
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :cond_6
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v6}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_8
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, v6}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    :cond_a
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, v6}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawLatitudeScale(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public drawLongitudeScale(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public enableScaleBar()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    return-void
.end method

.method public getBarPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-void
.end method

.method protected rebuildBarPath(Lorg/osmdroid/views/Projection;)V
    .locals 14

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    const-wide v6, 0x400451eb851eb852L    # 2.54

    const/4 v10, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v0, v0

    div-double/2addr v0, v6

    double-to-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v2, v1

    div-double/2addr v2, v6

    double-to-int v1, v2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v4, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v7, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p1, v0, v1, v10}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v4, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p1, v1, v2, v10}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v6

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v0, :cond_4

    int-to-double v0, v6

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    int-to-double v0, v4

    mul-double/2addr v0, v2

    int-to-double v8, v6

    div-double/2addr v0, v8

    double-to-int v6, v0

    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v7, 0x2

    sub-int/2addr v1, v4

    invoke-virtual {p1, v0, v1, v10}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v8, v7, 0x2

    add-int/2addr v4, v8

    invoke-virtual {p1, v1, v4, v10}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v4

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v0, :cond_5

    int-to-double v0, v4

    invoke-direct {p0, v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v0

    :goto_1
    int-to-double v8, v7

    mul-double/2addr v8, v0

    int-to-double v10, v4

    div-double/2addr v8, v10

    double-to-int v4, v8

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v2, v5, v8, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v8, v2

    div-double/2addr v8, v12

    double-to-int v2, v8

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v0, v5, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v8, v12

    double-to-int v8, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v1, :cond_7

    mul-int/lit8 v3, v2, -0x1

    mul-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    sub-int v0, v1, v4

    :goto_2
    iget-boolean v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v4, :cond_6

    mul-int/lit8 v8, v8, -0x1

    mul-int/lit8 v7, v7, -0x1

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v5

    sub-int v4, v5, v6

    move v6, v7

    move v7, v8

    :goto_3
    iget-boolean v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v9, v4

    add-int v10, v1, v2

    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v9, v4

    int-to-float v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v9, v5

    int-to-float v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v9, v5

    add-int v10, v1, v2

    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    iget-object v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    add-int/2addr v2, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v8, v5, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int v3, v5, v6

    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v3, v5

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v3, v5

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int v3, v5, v6

    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    add-int v3, v5, v6

    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v2, v5, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    return-void

    :cond_4
    int-to-double v0, v6

    move-wide v2, v0

    goto/16 :goto_0

    :cond_5
    int-to-double v0, v4

    goto/16 :goto_1

    :cond_6
    move v4, v6

    move v6, v7

    move v7, v8

    goto :goto_3

    :cond_7
    move v1, v5

    move v3, v2

    move v2, v0

    move v0, v4

    goto/16 :goto_2
.end method

.method protected scaleBarLengthText(I)Ljava/lang/String;
    .locals 12

    const-wide v6, 0x400a3f28fd4f4b98L    # 3.2808399

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v4, 0x1

    const/4 v8, 0x0

    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_kilometers:I

    new-array v2, v4, [Ljava/lang/Object;

    div-int/lit16 v3, p1, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_kilometers:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_meters:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    int-to-double v0, p1

    const-wide v2, 0x40bf6eb851eb851fL    # 8046.72

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x409925604189374cL    # 1609.344

    div-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    int-to-double v0, p1

    const-wide v2, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x40641de69ad42c3dL    # 160.9344

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_feet:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    int-to-double v0, p1

    const-wide v2, 0x40c2160000000000L    # 9260.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_nautical_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x409cf00000000000L    # 1852.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    int-to-double v0, p1

    const-wide v2, 0x4077266666666666L    # 370.4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_nautical_miles:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x4067266666666666L    # 185.2

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_feet:I

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAlignBottom(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setAlignRight(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setBarPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pBarPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setCentred(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-nez p1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setEnableAdjustLength(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setMaxLength(F)V
    .locals 1

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setMinZoom(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    return-void
.end method

.method public setScaleBarOffset(II)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    iput p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTextPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V
    .locals 1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method
