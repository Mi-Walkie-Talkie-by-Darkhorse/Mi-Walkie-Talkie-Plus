.class final Lcom/amap/api/col/l3/q$d;
.super Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;
.source "GLMapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/q;

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
.method private constructor <init>(Lcom/amap/api/col/l3/q;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/col/l3/q$d;->b:Z

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/col/l3/q$d;->c:Z

    .line 4
    iput-boolean p1, p0, Lcom/amap/api/col/l3/q$d;->d:Z

    .line 5
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/q$d;->e:Landroid/graphics/Point;

    const/16 p1, 0xa

    new-array v0, p1, [F

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/q$d;->f:[F

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/amap/api/col/l3/q$d;->g:F

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lcom/amap/api/col/l3/q$d;->h:[F

    .line 9
    iput v0, p0, Lcom/amap/api/col/l3/q$d;->i:F

    .line 10
    new-instance p1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/q$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3/q;B)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/q$d;-><init>(Lcom/amap/api/col/l3/q;)V

    return-void
.end method


# virtual methods
.method public final onScaleRotate(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "onScaleRotate"

    const-string v3, "GLMapGestrureDetector"

    .line 1
    iget-object v0, v1, Lcom/amap/api/col/l3/q$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v4, 0x2

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v5, 0x4

    .line 2
    iput v5, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v5, v4, [F

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v8, 0x1

    aput v6, v5, v8

    iput-object v5, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 4
    iget-object v0, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v5, v1, Lcom/amap/api/col/l3/q$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v5}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v9

    long-to-float v6, v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getFocusX()F

    move-result v9

    float-to-int v9, v9

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getFocusY()F

    move-result v10

    float-to-int v10, v10

    .line 9
    iget-object v11, v1, Lcom/amap/api/col/l3/q$d;->e:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    .line 10
    iget-object v12, v1, Lcom/amap/api/col/l3/q$d;->e:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    .line 11
    iget-object v13, v1, Lcom/amap/api/col/l3/q$d;->e:Landroid/graphics/Point;

    iput v9, v13, Landroid/graphics/Point;->x:I

    .line 12
    iput v10, v13, Landroid/graphics/Point;->y:I

    float-to-double v13, v0

    .line 13
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    double-to-float v0, v13

    .line 14
    iget-object v13, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v13}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;)I

    move-result v13

    if-gtz v13, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3fc999999999999aL    # 0.2

    cmpl-double v17, v13, v15

    if-lez v17, :cond_0

    .line 15
    iput-boolean v8, v1, Lcom/amap/api/col/l3/q$d;->d:Z

    :cond_0
    const/16 v13, 0x65

    const/high16 v14, 0x40000000    # 2.0f

    .line 16
    :try_start_0
    iget-object v15, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v15, v15, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v15}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v15

    invoke-interface {v15}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isZoomGesturesEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 17
    iget-boolean v15, v1, Lcom/amap/api/col/l3/q$d;->b:Z

    if-nez v15, :cond_1

    const v15, 0x3d75c28f    # 0.06f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    .line 18
    iput-boolean v8, v1, Lcom/amap/api/col/l3/q$d;->b:Z

    .line 19
    :cond_1
    iget-boolean v15, v1, Lcom/amap/api/col/l3/q$d;->b:Z

    if-eqz v15, :cond_6

    const v15, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmpg-float v15, v15, v16

    if-gez v15, :cond_6

    cmpl-float v7, v11, v14

    if-gtz v7, :cond_2

    cmpl-float v7, v12, v14

    if-lez v7, :cond_3

    .line 20
    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v15, 0x3ca3d70a    # 0.02f

    cmpg-float v7, v7, v15

    if-ltz v7, :cond_4

    :cond_3
    const/4 v7, 0x0

    cmpl-float v15, v6, v7

    if-lez v15, :cond_4

    div-float v15, v0, v6

    .line 21
    iput v15, v1, Lcom/amap/api/col/l3/q$d;->g:F

    .line 22
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 23
    iget-object v14, v1, Lcom/amap/api/col/l3/q$d;->f:[F

    iget-object v4, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v4}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;)I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    aput v15, v14, v4

    .line 24
    iget-object v4, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v4}, Lcom/amap/api/col/l3/q;->g(Lcom/amap/api/col/l3/q;)I

    .line 25
    iget-object v4, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v4, v4, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-static {v13, v0, v9, v10}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v14

    invoke-interface {v4, v5, v14}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    .line 26
    iget-object v0, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, v8}, Lcom/amap/api/col/l3/u;->a(I)V

    :cond_4
    :goto_0
    const/4 v7, 0x1

    goto :goto_2

    .line 27
    :cond_5
    iget-object v0, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Lcom/amap/api/col/l3/u;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v7, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 28
    :goto_1
    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_6
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, v5}, Lcom/amap/api/col/l3/u;->d(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lcom/amap/api/col/l3/q$d;->d:Z

    if-nez v0, :cond_a

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->getRotationDegreesDelta()F

    move-result v0

    .line 32
    iget-boolean v4, v1, Lcom/amap/api/col/l3/q$d;->c:Z

    const/high16 v14, 0x40800000    # 4.0f

    if-nez v4, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v14

    if-ltz v4, :cond_7

    .line 33
    iput-boolean v8, v1, Lcom/amap/api/col/l3/q$d;->c:Z

    .line 34
    :cond_7
    iget-boolean v4, v1, Lcom/amap/api/col/l3/q$d;->c:Z

    if-eqz v4, :cond_a

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v4, v4, v15

    if-gez v4, :cond_a

    cmpl-float v4, v11, v14

    if-gtz v4, :cond_8

    cmpl-float v4, v12, v14

    if-lez v4, :cond_9

    .line 35
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v4, v4, v11

    if-ltz v4, :cond_a

    :cond_9
    div-float v4, v0, v6

    .line 36
    iput v4, v1, Lcom/amap/api/col/l3/q$d;->i:F

    .line 37
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 38
    iget-object v6, v1, Lcom/amap/api/col/l3/q$d;->h:[F

    iget-object v11, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v11}, Lcom/amap/api/col/l3/q;->c(Lcom/amap/api/col/l3/q;)I

    move-result v11

    rem-int/lit8 v11, v11, 0xa

    aput v4, v6, v11

    .line 39
    iget-object v4, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v4}, Lcom/amap/api/col/l3/q;->h(Lcom/amap/api/col/l3/q;)I

    .line 40
    iget-object v4, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v4, v4, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-static {v13, v0, v9, v10}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 41
    :try_start_3
    iget-object v0, v1, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/4 v4, 0x6

    invoke-interface {v0, v4}, Lcom/amap/api/col/l3/u;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_a
    move v8, v7

    goto :goto_4

    :catchall_3
    move-exception v0

    move v8, v7

    .line 42
    :goto_3
    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return v8
.end method

.method public final onScaleRotateBegin(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x4

    .line 2
    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v2, v1

    iput-object v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v2, p0, Lcom/amap/api/col/l3/q$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v2}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getFocusY()F

    move-result p1

    float-to-int p1, p1

    .line 7
    iput-boolean v4, p0, Lcom/amap/api/col/l3/q$d;->d:Z

    .line 8
    iget-object v3, p0, Lcom/amap/api/col/l3/q$d;->e:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->x:I

    .line 9
    iput p1, v3, Landroid/graphics/Point;->y:I

    .line 10
    iput-boolean v4, p0, Lcom/amap/api/col/l3/q$d;->b:Z

    .line 11
    iput-boolean v4, p0, Lcom/amap/api/col/l3/q$d;->c:Z

    .line 12
    iget-object v3, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v3, v3, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v4, 0x64

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v2, p1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v3, v3, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v3}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    iget-object v3, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v3, v3, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v3, v0}, Lcom/amap/api/col/l3/u;->d(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    iget-object v3, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v3, v3, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v5, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v5, v5, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v5}, Lcom/amap/api/col/l3/u;->r()F

    move-result v5

    invoke-static {v4, v5, v2, p1}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v2, "onScaleRotateBegin"

    .line 16
    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public final onScaleRotateEnd(Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v1, 0x4

    .line 2
    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/ScaleGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->j:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    .line 5
    iput-boolean v3, p0, Lcom/amap/api/col/l3/q$d;->d:Z

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v1, 0x66

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v3}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;)I

    move-result v0

    const/16 v2, 0xa

    const/4 v4, 0x0

    if-lez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;)I

    move-result v0

    if-le v0, v2, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;)I

    move-result v0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 9
    iget-object v7, p0, Lcom/amap/api/col/l3/q$d;->f:[F

    aget v8, v7, v5

    add-float/2addr v6, v8

    .line 10
    aput v4, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    div-float/2addr v6, v0

    const v0, 0x3b83126f    # 0.004f

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->b(I)F

    .line 12
    :cond_2
    iput v4, p0, Lcom/amap/api/col/l3/q$d;->g:F

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->d(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v5, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object v5, v5, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v5}, Lcom/amap/api/col/l3/u;->r()F

    move-result v5

    invoke-static {v1, v5, v3, v3}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->obtain(IFII)Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v1, "onScaleRotateEnd"

    .line 16
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {p1}, Lcom/amap/api/col/l3/q;->c(Lcom/amap/api/col/l3/q;)I

    move-result p1

    if-lez p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(I)V

    .line 20
    iget-object p1, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    invoke-static {p1}, Lcom/amap/api/col/l3/q;->c(Lcom/amap/api/col/l3/q;)I

    move-result p1

    if-le p1, v2, :cond_5

    const/16 p1, 0xa

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    .line 21
    invoke-static {p1}, Lcom/amap/api/col/l3/q;->c(Lcom/amap/api/col/l3/q;)I

    move-result p1

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-ge v3, v2, :cond_6

    .line 22
    iget-object v1, p0, Lcom/amap/api/col/l3/q$d;->h:[F

    aget v5, v1, v3

    add-float/2addr v0, v5

    .line 23
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    int-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_7

    .line 24
    iget-object p1, p0, Lcom/amap/api/col/l3/q$d;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->r()F

    .line 25
    :cond_7
    iput v4, p0, Lcom/amap/api/col/l3/q$d;->g:F

    :cond_8
    return-void
.end method
