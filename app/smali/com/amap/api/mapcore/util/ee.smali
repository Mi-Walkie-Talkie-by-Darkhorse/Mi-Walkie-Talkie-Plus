.class public Lcom/amap/api/mapcore/util/ee;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static a:[Lcom/autonavi/amap/mapcore/FPoint;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    new-array v0, v3, [Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v1, 0x0

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/ee;->a:[Lcom/autonavi/amap/mapcore/FPoint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/amap/api/mapcore/util/ee;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/amap/api/mapcore/util/ee;->c:Ljava/util/List;

    return-void
.end method

.method public static a(DDDDDD)D
    .locals 6

    sub-double v0, p4, p0

    sub-double v2, p10, p2

    mul-double/2addr v0, v2

    sub-double v2, p8, p0

    sub-double v4, p6, p2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(FDD)D
    .locals 7

    float-to-double v0, p0

    mul-double/2addr v0, p1

    div-double v0, p3, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    return-wide v0
.end method

.method private static a(F)F
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const v0, 0x3da7ef9e    # 0.082f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42580000    # 54.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    const v0, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42640000    # 57.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(FF)F
    .locals 2

    const/high16 v0, 0x42200000    # 40.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    const/high16 p0, 0x42480000    # 50.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    const/high16 p0, 0x42580000    # 54.0f

    goto :goto_0

    :cond_3
    const/high16 v0, 0x41900000    # 18.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_4

    const/high16 p0, 0x42640000    # 57.0f

    goto :goto_0

    :cond_4
    const/high16 p0, 0x42700000    # 60.0f

    goto :goto_0
.end method

.method private static a(FFD)F
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p0

    mul-double/2addr v0, v2

    div-double v0, p2, v0

    double-to-float v0, v0

    return v0
.end method

.method private static a(FFF)F
    .locals 6

    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x41a00000    # 20.0f

    sub-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static a(Lcom/autonavi/amap/mapcore/MapConfig;F)F
    .locals 3

    const/high16 v0, 0x41980000    # 19.0f

    const/high16 v1, 0x40400000    # 3.0f

    if-eqz p0, :cond_2

    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/autonavi/amap/mapcore/MapConfig;->minZoomLevel:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget p1, p0, Lcom/autonavi/amap/mapcore/MapConfig;->minZoomLevel:F

    goto :goto_0

    :cond_2
    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    move p1, v0

    goto :goto_0

    :cond_3
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public static a(II)I
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/ee;->a(ILandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public static a(ILandroid/graphics/Bitmap;II)I
    .locals 4

    const/16 v3, 0xde1

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    if-nez p0, :cond_2

    new-array v1, v2, [I

    aput v0, v1, v0

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p0, v1, v0

    :cond_2
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v0, p2, p3, p1}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static a(ILandroid/graphics/Bitmap;Z)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/ee;->b(ILandroid/graphics/Bitmap;Z)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/amap/api/mapcore/util/ee;->a(ILandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public static a([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(IIII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v7, 0x0

    mul-int v0, p2, p3

    :try_start_0
    new-array v8, v0, [I

    mul-int v0, p2, p3

    new-array v9, v0, [I

    invoke-static {v8}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v1, v7

    :goto_0
    if-ge v1, p3, :cond_1

    move v0, v7

    :goto_1
    if-ge v0, p2, :cond_0

    mul-int v2, v1, p2

    add-int/2addr v2, v0

    aget v2, v8, v2

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v2, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    const v5, -0xff0100

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    sub-int v3, p3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v0

    aput v2, v9, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move v3, p2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "SavePixels"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/dz;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v2, "fromAsset"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/ee;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getBitmapFromView"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Lcom/autonavi/ae/gmap/GLMapState;Lcom/autonavi/amap/mapcore/MapConfig;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/amap/mapcore/CameraUpdateMessage;",
            "Lcom/autonavi/ae/gmap/GLMapState;",
            "Lcom/autonavi/amap/mapcore/MapConfig;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iget v6, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    iget v7, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingTop:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v0, p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->paddingBottom:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/autonavi/amap/mapcore/MapConfig;IIIIII)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/amap/mapcore/MapConfig;",
            "IIIIII)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v1

    int-to-double v2, p6

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ee;->a(FDD)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v2

    int-to-double v4, p5

    sub-int v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v2, v4, v5, v6, v7}, Lcom/amap/api/mapcore/util/ee;->a(FDD)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/amap/mapcore/MapConfig;",
            "IIII",
            "Lcom/amap/api/maps/model/LatLngBounds;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v6, 0x14

    invoke-static {v2, v3, v4, v5, v6}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v11

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v6, 0x14

    invoke-static {v2, v3, v4, v5, v6}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v12

    iget v2, v11, Landroid/graphics/Point;->x:I

    iget v3, v12, Landroid/graphics/Point;->x:I

    sub-int v3, v2, v3

    iget v2, v12, Landroid/graphics/Point;->y:I

    iget v4, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    add-int v4, p1, p2

    sub-int v7, p6, v4

    add-int v4, p3, p4

    sub-int v8, p7, v4

    if-gez v3, :cond_0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-gtz v3, :cond_3

    const/4 v3, 0x1

    move v10, v3

    :goto_1
    if-gtz v2, :cond_4

    const/4 v2, 0x1

    move v9, v2

    :goto_2
    if-gtz v7, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-gtz v8, :cond_2

    const/4 v8, 0x1

    :cond_2
    iget v3, v11, Landroid/graphics/Point;->x:I

    iget v4, v11, Landroid/graphics/Point;->y:I

    iget v5, v12, Landroid/graphics/Point;->x:I

    iget v6, v12, Landroid/graphics/Point;->y:I

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIIII)Landroid/util/Pair;

    move-result-object v3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v3

    int-to-double v6, v10

    invoke-static {v3, v4, v6, v7}, Lcom/amap/api/mapcore/util/ee;->a(FFD)F

    move-result v3

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v5

    int-to-double v6, v9

    invoke-static {v5, v4, v6, v7}, Lcom/amap/api/mapcore/util/ee;->a(FFD)F

    move-result v5

    iget v6, p0, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_5

    iget v2, v12, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-int v6, p2, p1

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v7, v10

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    div-float v3, v6, v3

    add-float/2addr v2, v3

    float-to-int v3, v2

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-int v6, p4, p3

    int-to-float v6, v6

    add-float/2addr v6, v5

    int-to-float v7, v9

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    div-float v5, v6, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    :goto_3
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v5

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapWidth()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v6

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v7

    invoke-static {v7, v4, v5}, Lcom/amap/api/mapcore/util/ee;->a(FFF)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v5

    invoke-static {v5, v4, v6}, Lcom/amap/api/mapcore/util/ee;->a(FFF)F

    move-result v5

    add-float/2addr v2, v5

    float-to-int v5, v2

    new-instance v2, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v5}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move v10, v3

    goto/16 :goto_1

    :cond_4
    move v9, v2

    goto/16 :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget v2, v12, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-int/lit8 v6, p6, 0x2

    sub-int/2addr v6, p1

    int-to-float v6, v6

    div-float v3, v6, v3

    int-to-float v6, v10

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    float-to-int v3, v2

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-int v6, p4, p3

    int-to-float v6, v6

    add-float/2addr v6, v5

    int-to-float v7, v9

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    div-float v5, v6, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_3

    :cond_6
    iget v2, v12, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-int v6, p2, p1

    int-to-float v6, v6

    add-float/2addr v6, v3

    int-to-float v7, v10

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    div-float v3, v6, v3

    add-float/2addr v2, v3

    float-to-int v3, v2

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-int/lit8 v6, p7, 0x2

    sub-int v6, v6, p3

    int-to-float v6, v6

    div-float v5, v6, v5

    int-to-float v6, v9

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    float-to-int v2, v2

    goto/16 :goto_3
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    add-double/2addr v0, v8

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    add-double v4, v6, v2

    sub-double v2, v6, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    const-wide v4, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    mul-double/2addr v0, v6

    mul-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint3;Lcom/autonavi/amap/mapcore/FPoint3;I)Lcom/autonavi/amap/mapcore/FPoint3;
    .locals 10

    const/4 v1, 0x0

    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint3;

    invoke-direct {v0, v1, v1, p4}, Lcom/autonavi/amap/mapcore/FPoint3;-><init>(FFI)V

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v3, p2, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v4, p2, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v4, p0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v4

    iget v4, p3, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    iget v5, p2, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    iget v4, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, p0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v4, v5

    iget v5, p3, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    iget v6, p2, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    iget v1, p2, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    float-to-double v6, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    iget v8, p2, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    sub-float/2addr v1, v8

    float-to-double v8, v1

    mul-double/2addr v8, v2

    div-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v1, v6

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint3;->x:F

    iget v1, p2, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    float-to-double v6, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    iget v8, p2, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    sub-float/2addr v1, v8

    float-to-double v8, v1

    mul-double/2addr v2, v8

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-float v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint3;->y:F

    return-object v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/autonavi/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v3, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v4, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v2, v1

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v4, p0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v4

    iget v4, p3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    iget v4, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, p0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v4, v5

    iget v5, p3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v6, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    iget v1, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-double v6, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v8, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v1, v8

    float-to-double v8, v1

    mul-double/2addr v8, v2

    div-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float v1, v6

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-double v6, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v8, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v8

    float-to-double v8, v1

    mul-double/2addr v2, v8

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-float v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    return-object v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/autonavi/amap/mapcore/IPoint;->obtain(II)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v2, p0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v2

    int-to-double v2, v1

    iget v1, p0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    iget v1, p0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v4, p0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    mul-double/2addr v4, v6

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, p0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v6

    int-to-double v6, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v8, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v8

    int-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget v1, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v6, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v8, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v1, v8

    int-to-double v8, v1

    mul-double/2addr v8, v2

    div-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-int v1, v6

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v6, v1

    iget v1, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v8, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v1, v8

    int-to-double v8, v1

    mul-double/2addr v2, v8

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    iput v1, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/autonavi/amap/mapcore/FileUtil;->getMapBaseStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v0, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    const-string v3, "Util"

    const-string v5, "readFile fileNotFound"

    invoke-static {v0, v3, v5}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_1

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_4
    :goto_3
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_1

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_5
    :goto_4
    throw v0

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v3, v2

    :goto_5
    :try_start_e
    const-string v1, "Util"

    const-string v5, "readFile io"

    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v3, :cond_6

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_6
    if-eqz v2, :cond_1

    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_2

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_b
    move-exception v0

    :try_start_11
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v2, :cond_1

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_2

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_7

    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    :cond_7
    :goto_6
    throw v0

    :catch_d
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_8

    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :cond_8
    if-eqz v2, :cond_9

    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    :cond_9
    :goto_8
    throw v0

    :catch_e
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_f
    move-exception v1

    :try_start_16
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v2, :cond_9

    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    goto :goto_8

    :catch_10
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_4
    move-exception v0

    if-eqz v2, :cond_a

    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    :cond_a
    :goto_9
    throw v0

    :catch_11
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_7

    :catch_12
    move-exception v0

    goto :goto_5

    :catch_13
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_14
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_15
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ee;->b(Ljava/io/InputStream;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Util"

    const-string v3, "decodeAssetResData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p0, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([F)Ljava/nio/FloatBuffer;
    .locals 3

    :try_start_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v2, "makeFloatBuffer1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v2, "makeFloatBuffer2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static a([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, v2

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_7

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-eqz p2, :cond_2

    move v0, v3

    :goto_2
    if-ge v4, v0, :cond_5

    rem-int v0, v4, v3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint;

    add-int/lit8 v1, v4, 0x1

    rem-int/2addr v1, v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v4, :cond_0

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v0, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v0, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v1, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    :cond_3
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v8, v9, v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v1, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v8, v9, v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v0, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v5, 0x1

    int-to-byte v0, v0

    move v5, v0

    goto/16 :goto_0

    :cond_7
    return-object v7
.end method

.method public static a([Lcom/autonavi/amap/mapcore/IPoint;Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, v2

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_7

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-eqz p2, :cond_2

    move v0, v3

    :goto_2
    if-ge v4, v0, :cond_5

    rem-int v0, v4, v3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    add-int/lit8 v1, v4, 0x1

    rem-int/2addr v1, v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v4, :cond_0

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v0, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v0, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v1, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    :cond_3
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v8, v9, v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v1, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v8, v9, v0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v0, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v5, 0x1

    int-to-byte v0, v0

    move v5, v0

    goto/16 :goto_0

    :cond_7
    return-object v7
.end method

.method public static a(Landroid/graphics/Rect;)V
    .locals 2

    const v1, 0x7fffffff

    const/high16 v0, -0x80000000

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1, v0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(DDDDDDDD)Z
    .locals 12

    const/4 v0, 0x0

    sub-double v2, p4, p0

    sub-double v4, p14, p10

    mul-double/2addr v2, v4

    sub-double v4, p6, p2

    sub-double v6, p12, p8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    sub-double v4, p2, p10

    sub-double v6, p12, p8

    mul-double/2addr v4, v6

    sub-double v6, p0, p8

    sub-double v8, p14, p10

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double/2addr v4, v2

    sub-double v6, p2, p10

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    sub-double v8, p0, p8

    sub-double v10, p6, p2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    div-double v2, v6, v2

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static a(IILcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 8

    iget v0, p3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v2, p1, v2

    int-to-double v2, v2

    iget v4, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int v4, p0, v4

    int-to-double v4, v4

    iget v6, p3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v7, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v0, v2

    mul-double v2, v4, v6

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Rect;II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {p0}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/maps/model/CircleHoleOptions;Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Util"

    const-string v3, "isPolygon2CircleIntersect"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps/model/LatLng;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    const/16 v28, 0x0

    const-wide v30, 0x3e112e0be826d695L    # 1.0E-9

    const/4 v7, 0x0

    const-wide v22, 0x4066800000000000L    # 180.0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v24, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x3

    if-ge v6, v8, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/LatLng;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v6, 0x0

    move/from16 v26, v6

    move/from16 v27, v7

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v0, v26

    if-ge v0, v6, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/maps/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps/model/LatLng;->latitude:D

    add-int/lit8 v10, v26, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v10, Lcom/amap/api/maps/model/LatLng;->longitude:D

    add-int/lit8 v12, v26, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v12, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore/util/ee;->b(DDDDDD)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    sub-double v14, v12, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v14, v14, v30

    if-gez v14, :cond_3

    move/from16 v7, v27

    :goto_2
    add-int/lit8 v6, v26, 0x1

    move/from16 v26, v6

    move/from16 v27, v7

    goto :goto_1

    :cond_3
    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    invoke-static/range {v14 .. v25}, Lcom/amap/api/mapcore/util/ee;->b(DDDDDD)Z

    move-result v14

    if-eqz v14, :cond_4

    cmpl-double v6, v8, v12

    if-lez v6, :cond_8

    add-int/lit8 v27, v27, 0x1

    move/from16 v7, v27

    goto :goto_2

    :cond_4
    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    invoke-static/range {v10 .. v21}, Lcom/amap/api/mapcore/util/ee;->b(DDDDDD)Z

    move-result v14

    if-eqz v14, :cond_5

    cmpl-double v6, v12, v8

    if-lez v6, :cond_8

    add-int/lit8 v27, v27, 0x1

    move/from16 v7, v27

    goto :goto_2

    :cond_5
    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    invoke-static/range {v6 .. v21}, Lcom/amap/api/mapcore/util/ee;->a(DDDDDDDD)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v27, v27, 0x1

    move/from16 v7, v27

    goto :goto_2

    :cond_6
    rem-int/lit8 v2, v27, 0x2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    move/from16 v2, v28

    goto/16 :goto_0

    :cond_8
    move/from16 v7, v27

    goto :goto_2
.end method

.method private static a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 4

    iget v0, p2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v2, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v2, p1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    iget v3, p1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    rem-int/2addr v3, v4

    aget-object v3, p1, v3

    invoke-static {p0, v2, v3}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 2

    iget v0, p0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v0, v1, p1, p2}, Lcom/amap/api/mapcore/util/ee;->a(IILcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;II)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-wide v6, 0x412e848000000000L    # 1000000.0

    const-wide/16 v4, 0x0

    add-int/lit8 v2, p2, -0x1

    const/4 v0, 0x0

    move v12, v0

    move v0, v2

    move v2, v12

    :goto_1
    if-ge v2, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v8, v3

    div-double/2addr v8, v6

    iget v3, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v3

    div-double/2addr v10, v6

    mul-double/2addr v8, v10

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v10, v1

    div-double/2addr v10, v6

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    mul-double/2addr v0, v10

    sub-double v0, v8, v0

    add-double/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v12, v0

    move v0, v2

    move v2, v12

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;",
            "Lcom/amap/api/maps/model/CircleHoleOptions;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v4, v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/ee;->b(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    instance-of v4, v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/amap/api/maps/model/CircleHoleOptions;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;",
            "Lcom/amap/api/maps/model/PolygonHoleOptions;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v4, v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ee;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    instance-of v4, v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/ee;->b(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, p0}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/ee;->b(Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v3, "isPolygon2PolygonIntersect"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_1
.end method

.method public static declared-synchronized a(IIIILcom/autonavi/amap/mapcore/MapConfig;Lcom/autonavi/ae/gmap/GLMapState;II)[I
    .locals 8

    const-class v1, Lcom/amap/api/mapcore/util/ee;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapWidth()I

    move-result v0

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapHeight()I

    move-result v2

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v3

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v4

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v5

    invoke-virtual {p5}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v6

    int-to-float v7, v3

    invoke-static {v5, v6, v7}, Lcom/amap/api/mapcore/util/ee;->a(FFF)F

    move-result v5

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v6

    invoke-virtual {p5}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v7

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {v6, v7, v0}, Lcom/amap/api/mapcore/util/ee;->a(FFF)F

    move-result v0

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v3

    invoke-virtual {p5}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v6

    int-to-float v7, v4

    invoke-static {v3, v6, v7}, Lcom/amap/api/mapcore/util/ee;->a(FFF)F

    move-result v3

    invoke-virtual {p4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v6

    invoke-virtual {p5}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v7

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-static {v6, v7, v2}, Lcom/amap/api/mapcore/util/ee;->a(FFF)F

    move-result v2

    int-to-float v4, p2

    add-float/2addr v4, v5

    int-to-float v5, p0

    sub-float v0, v5, v0

    int-to-float v5, p1

    add-float/2addr v3, v5

    int-to-float v5, p3

    sub-float v2, v5, v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    int-to-float v7, p6

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    aput v0, v5, v6

    const/4 v0, 0x1

    int-to-float v4, p7

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/amap/api/mapcore/util/l;Z)[Lcom/autonavi/amap/mapcore/FPoint;
    .locals 7

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getCameraAngle()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->a(F)F

    move-result v0

    float-to-double v2, v0

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v3, v2

    if-eqz p1, :cond_0

    const/16 v2, 0x64

    const/16 v0, 0xa

    :goto_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v4

    neg-int v5, v2

    int-to-float v6, v0

    sub-float v6, v3, v6

    float-to-int v6, v6

    invoke-interface {p0, v5, v6, v4}, Lcom/amap/api/mapcore/util/l;->b(IILandroid/graphics/PointF;)V

    sget-object v5, Lcom/amap/api/mapcore/util/ee;->a:[Lcom/autonavi/amap/mapcore/FPoint;

    aget-object v1, v5, v1

    iget v5, v4, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v6, v4, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v1, v5, v6}, Lcom/autonavi/amap/mapcore/FPoint;->set(FF)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v0, v0

    sub-float v0, v3, v0

    float-to-int v0, v0

    invoke-interface {p0, v5, v0, v1}, Lcom/amap/api/mapcore/util/l;->b(IILandroid/graphics/PointF;)V

    sget-object v0, Lcom/amap/api/mapcore/util/ee;->a:[Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget v3, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v5, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v0, v3, v5}, Lcom/autonavi/amap/mapcore/FPoint;->set(FF)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getMapWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-interface {p0, v3, v5, v0}, Lcom/amap/api/mapcore/util/l;->b(IILandroid/graphics/PointF;)V

    sget-object v3, Lcom/amap/api/mapcore/util/ee;->a:[Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    iget v5, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v6, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v3, v5, v6}, Lcom/autonavi/amap/mapcore/FPoint;->set(FF)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    neg-int v5, v2

    invoke-interface {p0}, Lcom/amap/api/mapcore/util/l;->getMapHeight()I

    move-result v6

    add-int/2addr v2, v6

    invoke-interface {p0, v5, v2, v3}, Lcom/amap/api/mapcore/util/l;->b(IILandroid/graphics/PointF;)V

    sget-object v2, Lcom/amap/api/mapcore/util/ee;->a:[Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    iget v5, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v6, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {v2, v5, v6}, Lcom/autonavi/amap/mapcore/FPoint;->set(FF)V

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    sget-object v0, Lcom/amap/api/mapcore/util/ee;->a:[Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0

    :cond_0
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public static b(Lcom/autonavi/amap/mapcore/MapConfig;IIIIII)F
    .locals 6

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    if-eq p1, p3, :cond_0

    if-eq p2, p4, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v0

    int-to-double v2, p6

    sub-int v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v4, v1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ee;->a(FDD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapZoomScale()F

    move-result v1

    int-to-double v2, p5

    sub-int v4, p3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ee;->a(FDD)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    return v0
.end method

.method public static b(ILandroid/graphics/Bitmap;Z)I
    .locals 7

    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46240400    # 10497.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v0, 0x0

    const/16 v3, 0xde1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p0, v1, v0

    :cond_2
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    if-eqz p2, :cond_3

    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    :goto_1
    invoke-static {v3, v0, p1, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x2802

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ee;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "VMAP2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b([Lcom/autonavi/amap/mapcore/FPoint;Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, v2

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_7

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-eqz p2, :cond_2

    move v0, v3

    :goto_2
    if-ge v4, v0, :cond_5

    rem-int v0, v4, v3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/FPoint3;

    add-int/lit8 v1, v4, 0x1

    rem-int/2addr v1, v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/FPoint3;

    if-nez v4, :cond_0

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v0, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v0, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v1, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    :cond_3
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    iget v10, v1, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    invoke-static {v8, v9, v0, v1, v10}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint3;Lcom/autonavi/amap/mapcore/FPoint3;I)Lcom/autonavi/amap/mapcore/FPoint3;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    invoke-static {v1, v8, v9}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, p0, v5

    add-int/lit8 v9, v5, 0x1

    array-length v10, p0

    rem-int/2addr v9, v10

    aget-object v9, p0, v9

    iget v10, v0, Lcom/autonavi/amap/mapcore/FPoint3;->colorIndex:I

    invoke-static {v8, v9, v0, v1, v10}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint;Lcom/autonavi/amap/mapcore/FPoint3;Lcom/autonavi/amap/mapcore/FPoint3;I)Lcom/autonavi/amap/mapcore/FPoint3;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v0, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v5, 0x1

    int-to-byte v0, v0

    move v5, v0

    goto/16 :goto_0

    :cond_7
    return-object v7
.end method

.method public static b(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput p0, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static b(Landroid/graphics/Rect;II)V
    .locals 1

    if-eqz p0, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_2

    iput p2, p0, Landroid/graphics/Rect;->top:I

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_3

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->b(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(DDDDDD)Z
    .locals 6

    const/4 v0, 0x0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static/range {p0 .. p11}, Lcom/amap/api/mapcore/util/ee;->a(DDDDDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v2

    if-gez v1, :cond_0

    sub-double v2, p0, p4

    sub-double v4, p0, p8

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    sub-double v2, p2, p6

    sub-double v4, p2, p10

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static b(II)Z
    .locals 2

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "3dmap"

    const-string v1, "the map must have a size"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;",
            "Lcom/amap/api/maps/model/CircleHoleOptions;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_2

    :cond_1
    :goto_2
    move v0, v2

    :goto_3
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v8

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v8, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v6, v8

    if-gez v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v8

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v8, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amap/api/maps/utils/SpatialRelationUtil;->calShortestDistancePoint(Ljava/util/List;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v6, v0}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    float-to-double v8, v0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_5

    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v3, "isPolygon2CircleIntersect"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_1
    move v0, v4

    :cond_1
    return v0

    :cond_2
    move v5, v4

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    add-int/lit8 v0, v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_4
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    add-int/lit8 v1, v6, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    add-int/lit8 v3, v5, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/eb;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Util"

    const-string v2, "isSegmentsIntersect"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static b(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x800

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v5, [B

    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Lcom/amap/api/mapcore/util/fx;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/g;->e:Lcom/amap/api/mapcore/util/fx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/fx$a;

    const-string v1, "3dmap"

    const-string v2, "5.7.0"

    sget-object v3, Lcom/amap/api/mapcore/util/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/fx$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.amap.api.maps"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.amap.api.mapcore"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.autonavi.amap.mapcore"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.amap.api.3dmap.admic"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.amap.api.trace"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.amap.api.trace.core"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fx$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;

    move-result-object v0

    const-string v1, "5.7.0"

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/fx$a;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fx$a;->a()Lcom/amap/api/mapcore/util/fx;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/g;->e:Lcom/amap/api/mapcore/util/fx;

    goto :goto_0
.end method
