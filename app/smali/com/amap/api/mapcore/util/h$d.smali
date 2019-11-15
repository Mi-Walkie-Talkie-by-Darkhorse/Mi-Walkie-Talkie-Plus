.class Lcom/amap/api/mapcore/util/h$d;
.super Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;
.source "GLMapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/h;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Point;

.field private f:[F

.field private g:F

.field private h:[F

.field private i:F

.field private j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/h;)V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h$d;->b:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h$d;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/h$d;->d:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->e:Landroid/graphics/Point;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->f:[F

    iput v1, p0, Lcom/amap/api/mapcore/util/h$d;->g:F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->h:[F

    iput v1, p0, Lcom/amap/api/mapcore/util/h$d;->i:F

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/h;Lcom/amap/api/mapcore/util/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/h$d;-><init>(Lcom/amap/api/mapcore/util/h;)V

    return-void
.end method


# virtual methods
.method public onScaleRotate(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z
    .locals 13

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x4

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getTimeDelta()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getFocusX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getFocusY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/amap/api/mapcore/util/h$d;->e:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/amap/api/mapcore/util/h$d;->e:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/amap/api/mapcore/util/h$d;->e:Landroid/graphics/Point;

    iput v4, v8, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/h$d;->e:Landroid/graphics/Point;

    iput v5, v8, Landroid/graphics/Point;->y:I

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v1, v8

    iget-object v8, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v8}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v8

    if-gtz v8, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/h$d;->d:Z

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v8, v8, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v8}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v8

    invoke-interface {v8}, Lcom/amap/api/mapcore/util/o;->isZoomGesturesEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/amap/api/mapcore/util/h$d;->b:Z

    if-nez v8, :cond_1

    const v8, 0x3d75c28f    # 0.06f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/h$d;->b:Z

    :cond_1
    iget-boolean v8, p0, Lcom/amap/api/mapcore/util/h$d;->b:Z

    if-eqz v8, :cond_3

    const v8, 0x3c23d70a    # 0.01f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    const/4 v0, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v8, v6, v8

    if-gtz v8, :cond_2

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_7

    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const v9, 0x3ca3d70a    # 0.02f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    :cond_3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/o;->isRotateGesturesEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, v2}, Lcom/amap/api/mapcore/util/l;->e(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/h$d;->d:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getRotationDegreesDelta()F

    move-result v1

    iget-boolean v8, p0, Lcom/amap/api/mapcore/util/h$d;->c:Z

    if-nez v8, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/h$d;->c:Z

    :cond_4
    iget-boolean v8, p0, Lcom/amap/api/mapcore/util/h$d;->c:Z

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    const/high16 v8, 0x40800000    # 4.0f

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_5

    const/high16 v6, 0x40800000    # 4.0f

    cmpl-float v6, v7, v6

    if-lez v6, :cond_9

    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    :cond_6
    :goto_1
    return v0

    :cond_7
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    div-float v8, v1, v3

    :try_start_2
    iput v8, p0, Lcom/amap/api/mapcore/util/h$d;->g:F

    iget v8, p0, Lcom/amap/api/mapcore/util/h$d;->g:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/amap/api/mapcore/util/h$d;->f:[F

    iget-object v10, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v10}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v10

    rem-int/lit8 v10, v10, 0xa

    aput v8, v9, v10

    iget-object v8, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v8}, Lcom/amap/api/mapcore/util/h;->g(Lcom/amap/api/mapcore/util/h;)I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v8, v8, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v9, 0x65

    invoke-static {v9, v1, v4, v5}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v8, 0x1

    invoke-interface {v1, v2, v8}, Lcom/amap/api/mapcore/util/l;->a(II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    const-string v8, "GLMapGestrureDetector"

    const-string v9, "onScaleRotate"

    invoke-static {v0, v8, v9}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v8, 0x2

    invoke-interface {v1, v2, v8}, Lcom/amap/api/mapcore/util/l;->a(II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_9
    div-float v3, v1, v3

    :try_start_4
    iput v3, p0, Lcom/amap/api/mapcore/util/h$d;->i:F

    iget v3, p0, Lcom/amap/api/mapcore/util/h$d;->i:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Lcom/amap/api/mapcore/util/h$d;->h:[F

    iget-object v7, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v7}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v7

    rem-int/lit8 v7, v7, 0xa

    aput v3, v6, v7

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/h;->h(Lcom/amap/api/mapcore/util/h;)I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v6, 0x65

    invoke-static {v6, v1, v4, v5}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore/util/l;->a(II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v2, "GLMapGestrureDetector"

    const-string v3, "onScaleRotate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public onScaleRotateBegin(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z
    .locals 7

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v6, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x4

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v6

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getFocusX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getFocusY()F

    move-result v2

    float-to-int v2, v2

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/h$d;->d:Z

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->e:Landroid/graphics/Point;

    iput v1, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->e:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/h$d;->b:Z

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/h$d;->c:Z

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v5, v4, v1, v2}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/o;->isRotateGesturesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3, v0}, Lcom/amap/api/mapcore/util/l;->e(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v5, v5, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v5, v0}, Lcom/amap/api/mapcore/util/l;->n(I)F

    move-result v5

    invoke-static {v4, v5, v1, v2}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v0

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onScaleRotateBegin"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onScaleRotateEnd(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)V
    .locals 10

    const/high16 v3, 0x42700000    # 60.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    const/16 v1, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v6, 0x3

    iput v6, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v6, 0x4

    iput v6, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    aput v7, v6, v4

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    aput v8, v6, v7

    iput-object v6, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/h$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v6}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v8

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/h$d;->d:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v6, 0x66

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v4, v4}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v6

    invoke-interface {v0, v8, v6}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    move v6, v4

    move v7, v5

    :goto_1
    if-ge v6, v1, :cond_1

    iget-object v9, p0, Lcom/amap/api/mapcore/util/h$d;->f:[F

    aget v9, v9, v6

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/amap/api/mapcore/util/h$d;->f:[F

    aput v5, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->b(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    div-float v0, v7, v0

    const v6, 0x3b83126f    # 0.004f

    cmpg-float v6, v6, v0

    if-gtz v6, :cond_4

    const/high16 v6, 0x43960000    # 300.0f

    mul-float/2addr v0, v6

    cmpl-float v6, v0, v2

    if-ltz v6, :cond_2

    move v0, v2

    :cond_2
    iget v2, p0, Lcom/amap/api/mapcore/util/h$d;->g:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_3

    neg-float v0, v0

    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2, v8}, Lcom/amap/api/mapcore/util/l;->a(I)F

    move-result v2

    add-float/2addr v0, v2

    :cond_4
    iput v5, p0, Lcom/amap/api/mapcore/util/h$d;->g:F

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v8}, Lcom/amap/api/mapcore/util/l;->e(I)Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->h()Lcom/amap/api/mapcore/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/o;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/16 v2, 0x66

    iget-object v6, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v6, v6, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v6, v8}, Lcom/amap/api/mapcore/util/l;->n(I)F

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v6, v7, v9}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Lcom/amap/api/mapcore/util/l;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    const/4 v2, 0x6

    invoke-interface {v0, v8, v2}, Lcom/amap/api/mapcore/util/l;->a(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    if-le v0, v1, :cond_7

    move v0, v1

    :goto_3
    move v2, v4

    move v4, v5

    :goto_4
    if-ge v2, v1, :cond_8

    iget-object v6, p0, Lcom/amap/api/mapcore/util/h$d;->h:[F

    aget v6, v6, v2

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/amap/api/mapcore/util/h$d;->h:[F

    aput v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "GLMapGestrureDetector"

    const-string v6, "onScaleRotateEnd"

    invoke-static {v0, v2, v6}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->c(Lcom/amap/api/mapcore/util/h;)I

    move-result v0

    goto :goto_3

    :cond_8
    int-to-float v0, v0

    div-float v0, v4, v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_b

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/h$d;->a:Lcom/amap/api/mapcore/util/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/h;->a:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v1, v8}, Lcom/amap/api/mapcore/util/l;->n(I)F

    move-result v1

    float-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    cmpl-float v2, v0, v3

    if-ltz v2, :cond_9

    move v0, v3

    :cond_9
    iget v2, p0, Lcom/amap/api/mapcore/util/h$d;->i:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_a

    neg-float v0, v0

    :cond_a
    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    :cond_b
    iput v5, p0, Lcom/amap/api/mapcore/util/h$d;->g:F

    :cond_c
    return-void
.end method
