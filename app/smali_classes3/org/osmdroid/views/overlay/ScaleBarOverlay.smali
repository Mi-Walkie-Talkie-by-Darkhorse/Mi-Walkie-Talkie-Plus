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

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 3
    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    .line 5
    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    .line 7
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    .line 8
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    .line 9
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    .line 10
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    .line 11
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    .line 15
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 16
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    .line 17
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 21
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    iget v4, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 34
    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    .line 35
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    .line 36
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    .line 37
    :try_start_0
    const-class p1, Landroid/os/Build;

    const-string v1, "MANUFACTURER"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p1, "motorola"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "DROIDX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    const-string v0, "window"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 42
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    const-wide/high16 v0, 0x400e000000000000L    # 3.75

    const-wide v2, 0x4000cccccccccccdL    # 2.1

    if-lez p1, :cond_0

    .line 43
    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-float p1, v4

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 44
    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v0, p1

    div-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 45
    :cond_0
    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v4, p1

    div-double/2addr v4, v2

    double-to-float p1, v4

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 46
    iget p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v2, p1

    div-double/2addr v2, v0

    double-to-float p1, v2

    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "Droid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x43840000    # 264.0f

    .line 48
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 49
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    :cond_2
    :goto_1
    const p1, 0x40228f5c    # 2.54f

    .line 50
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    return-void
.end method

.method private adjustScaleBarLength(D)D
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const-wide v3, 0x409cf00000000000L    # 1852.0

    const-wide v5, 0x409925604189374cL    # 1609.344

    const/4 v7, 0x1

    const-wide v8, 0x400a3f28fd4f4b98L    # 3.2808399

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-ne v1, v2, :cond_1

    const-wide v1, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v13, p1, v1

    if-ltz v13, :cond_0

    div-double v1, p1, v5

    goto :goto_0

    :cond_0
    mul-double v1, p1, v8

    goto :goto_1

    .line 2
    :cond_1
    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v2, :cond_2

    const-wide v1, 0x4077266666666666L    # 370.4

    cmpl-double v13, p1, v1

    if-ltz v13, :cond_0

    div-double v1, p1, v3

    goto :goto_0

    :cond_2
    move-wide/from16 v1, p1

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v12, 0x1

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    cmpl-double v16, v1, v14

    if-ltz v16, :cond_3

    add-long/2addr v10, v12

    div-double/2addr v1, v14

    goto :goto_1

    :cond_3
    :goto_2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v1, v16

    if-gez v18, :cond_4

    const-wide/16 v18, 0x0

    cmpl-double v20, v1, v18

    if-lez v20, :cond_4

    sub-long/2addr v10, v12

    mul-double v1, v1, v14

    goto :goto_2

    :cond_4
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    cmpg-double v20, v1, v18

    if-gez v20, :cond_5

    goto :goto_3

    :cond_5
    cmpg-double v16, v1, v12

    if-gez v16, :cond_6

    move-wide/from16 v16, v18

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v12

    :goto_3
    if-eqz v7, :cond_7

    div-double v16, v16, v8

    goto :goto_4

    .line 3
    :cond_7
    iget-object v1, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v2, :cond_8

    mul-double v16, v16, v5

    goto :goto_4

    .line 4
    :cond_8
    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v2, :cond_9

    mul-double v16, v16, v3

    :cond_9
    :goto_4
    long-to-double v1, v10

    .line 5
    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v16, v16, v1

    return-wide v16
.end method

.method private drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 2
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 3
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    .line 4
    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p2, v3, v2, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p2

    .line 5
    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result p2

    .line 6
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v1, :cond_0

    int-to-double v1, p2

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    int-to-double v1, p2

    :goto_0
    int-to-double v3, v0

    mul-double v3, v3, v1

    int-to-double v5, p2

    div-double/2addr v3, v5

    double-to-int p2, v3

    double-to-int v0, v1

    .line 7
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 10
    div-int/lit8 v2, p2, 0x2

    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 11
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    sub-int/2addr v3, p2

    int-to-float p2, v3

    add-float/2addr v2, p2

    .line 12
    :cond_1
    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    goto :goto_1

    .line 13
    :cond_2
    sget-object p2, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v1

    :goto_1
    int-to-float p2, p2

    .line 14
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 2
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 3
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p2, v1, v2, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    .line 5
    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    .line 6
    invoke-virtual {p2, v2, v5, v4}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p2

    .line 7
    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result p2

    .line 8
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v1, :cond_0

    int-to-double v1, p2

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    int-to-double v1, p2

    :goto_0
    int-to-double v3, v0

    mul-double v3, v3, v1

    int-to-double v5, p2

    div-double/2addr v3, v5

    double-to-int p2, v3

    double-to-int v0, v1

    .line 9
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 11
    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 12
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    goto :goto_1

    .line 13
    :cond_1
    sget-object v2, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    :goto_1
    int-to-float v1, v2

    .line 14
    div-int/lit8 v2, p2, 0x2

    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 15
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    sub-int/2addr v3, p2

    int-to-float p2, v3

    add-float/2addr v2, p2

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 17
    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 18
    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public disableScaleBar()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Overlay;->setEnabled(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 8

    if-eqz p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result p3

    .line 3
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    if-lt p3, v0, :cond_e

    .line 4
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iput p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    .line 7
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 p2, p2, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p2

    .line 8
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    if-ne p3, v1, :cond_3

    .line 9
    invoke-interface {p2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    double-to-int v1, v1

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    double-to-int v2, v2

    if-eq v1, v2, :cond_4

    .line 10
    :cond_3
    iput p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 11
    invoke-interface {p2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide p2

    iput-wide p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:D

    .line 12
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->rebuildBarPath(Lorg/osmdroid/views/Projection;)V

    .line 13
    :cond_4
    iget p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 14
    iget p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 15
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v1, :cond_5

    mul-int/lit8 p3, p3, -0x1

    .line 16
    :cond_5
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v1, :cond_6

    mul-int/lit8 p2, p2, -0x1

    .line 17
    :cond_6
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v1, :cond_7

    .line 18
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    .line 19
    :cond_7
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v1, :cond_8

    .line 20
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    .line 21
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_9

    .line 25
    iget-object p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 26
    :cond_9
    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_b

    .line 27
    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_0

    :cond_a
    const/4 p2, 0x0

    .line 28
    :goto_0
    iget-object p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    int-to-float v4, v1

    iget p2, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, p2

    iget-object v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    :cond_b
    iget-object p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 30
    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz p2, :cond_c

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 32
    :cond_c
    iget-boolean p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz p2, :cond_d

    .line 33
    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 34
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    return-void
.end method

.method public drawLatitudeScale(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public drawLongitudeScale(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public enableScaleBar()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Overlay;->setEnabled(Z)V

    return-void
.end method

.method public getBarPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 2
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 3
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 4
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 5
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-void
.end method

.method protected rebuildBarPath(Lorg/osmdroid/views/Projection;)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v0, v0

    const-wide v2, 0x400451eb851eb852L    # 2.54

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 2
    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-int v1, v4

    .line 3
    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 4
    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 5
    iget v4, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    iget v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    invoke-virtual {p1, v4, v3, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    .line 6
    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v2

    .line 7
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v3, :cond_0

    int-to-double v3, v2

    invoke-direct {p0, v3, v4}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    int-to-double v3, v2

    :goto_0
    int-to-double v6, v0

    mul-double v6, v6, v3

    int-to-double v8, v2

    div-double/2addr v6, v8

    double-to-int v0, v6

    .line 8
    iget v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {p1, v2, v6, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 9
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v6, v6, 0x2

    iget v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    invoke-virtual {p1, v6, v8, v5}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    .line 10
    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, p1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result p1

    .line 11
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    int-to-double v5, p1

    if-eqz v2, :cond_1

    invoke-direct {p0, v5, v6}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v5

    :cond_1
    int-to-double v1, v1

    mul-double v1, v1, v5

    int-to-double v7, p1

    div-double/2addr v1, v7

    double-to-int p1, v1

    double-to-int v1, v3

    .line 12
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v3, v1

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double/2addr v3, v8

    double-to-int v1, v3

    double-to-int v3, v5

    .line 16
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v7, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 19
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v5, v8

    double-to-int v3, v5

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 21
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 22
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 23
    iget-boolean v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    if-eqz v5, :cond_2

    mul-int/lit8 v1, v1, -0x1

    mul-int/lit8 v2, v2, -0x1

    .line 24
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int p1, v5, p1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 25
    :goto_1
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    if-eqz v6, :cond_3

    mul-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v4, -0x1

    .line 26
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    sub-int v0, v7, v0

    .line 27
    :cond_3
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v6, :cond_5

    .line 28
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v8, v0

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v6, v8, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 29
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v9, v5

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    iget-boolean v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-nez v6, :cond_4

    .line 32
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    :cond_4
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7, v5, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    :cond_5
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_7

    .line 35
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-nez v0, :cond_6

    .line 36
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int v1, v7, v4

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 37
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    :cond_6
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    int-to-float v1, v7

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    add-int/2addr v4, v7

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    int-to-float v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v5, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    return-void
.end method

.method protected scaleBarLengthText(I)Ljava/lang/String;
    .locals 11

    .line 1
    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const-wide v2, 0x400a3f28fd4f4b98L    # 3.2808399

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v0, 0x1388

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_kilometers:I

    new-array v2, v7, [Ljava/lang/Object;

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_kilometers:I

    new-array v2, v7, [Ljava/lang/Object;

    int-to-double v7, p1

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    double-to-int p1, v7

    int-to-double v7, p1

    div-double/2addr v7, v4

    .line 4
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v6

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->format_distance_meters:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    int-to-double v0, p1

    const-wide v8, 0x40c2160000000000L    # 9260.0

    cmpl-double p1, v0, v8

    if-ltz p1, :cond_3

    .line 7
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lorg/osmdroid/library/R$string;->format_distance_nautical_miles:I

    new-array v3, v7, [Ljava/lang/Object;

    const-wide v4, 0x409cf00000000000L    # 1852.0

    div-double/2addr v0, v4

    double-to-int v0, v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide v8, 0x4077266666666666L    # 370.4

    cmpl-double p1, v0, v8

    if-ltz p1, :cond_4

    .line 10
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lorg/osmdroid/library/R$string;->format_distance_nautical_miles:I

    new-array v3, v7, [Ljava/lang/Object;

    const-wide v7, 0x4067266666666666L    # 185.2

    div-double/2addr v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v6

    .line 12
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lorg/osmdroid/library/R$string;->format_distance_feet:I

    new-array v5, v7, [Ljava/lang/Object;

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 15
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    int-to-double v0, p1

    const-wide v8, 0x40bf6eb851eb851fL    # 8046.72

    cmpl-double p1, v0, v8

    if-ltz p1, :cond_6

    .line 16
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lorg/osmdroid/library/R$string;->format_distance_miles:I

    new-array v3, v7, [Ljava/lang/Object;

    const-wide v4, 0x409925604189374cL    # 1609.344

    div-double/2addr v0, v4

    double-to-int v0, v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    .line 18
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-wide v8, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double p1, v0, v8

    if-ltz p1, :cond_7

    .line 19
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lorg/osmdroid/library/R$string;->format_distance_miles:I

    new-array v3, v7, [Ljava/lang/Object;

    const-wide v7, 0x40641de69ad42c3dL    # 160.9344

    div-double/2addr v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v6

    .line 21
    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 22
    :cond_7
    iget-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lorg/osmdroid/library/R$string;->format_distance_feet:I

    new-array v5, v7, [Ljava/lang/Object;

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 24
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAlignBottom(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 2
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setAlignRight(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 2
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setBarPaint(Landroid/graphics/Paint;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pBarPaint argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCentred(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    xor-int/lit8 v0, p1, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignBottom:Z

    xor-int/lit8 p1, p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->alignRight:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setEnableAdjustLength(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setMaxLength(F)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method

.method public setMinZoom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    return-void
.end method

.method public setScaleBarOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 2
    iput p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pTextPaint argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    return-void
.end method
