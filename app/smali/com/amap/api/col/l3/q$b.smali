.class final Lcom/amap/api/col/l3/q$b;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/q;

.field private b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/q$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3/q;B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/q$b;-><init>(Lcom/amap/api/col/l3/q;)V

    return-void
.end method


# virtual methods
.method public final onHove(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x6

    .line 2
    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v1, v1, [F

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return v4

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v1, p0, Lcom/amap/api/col/l3/q$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v1, v1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->b()Z

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v1}, Lcom/amap/api/col/l3/q;->c(Lcom/amap/api/col/l3/q;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return v3

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getFocusDelta()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->getFocusDelta()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 10
    iget-object v5, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v5}, Lcom/amap/api/col/l3/q;->i(Lcom/amap/api/col/l3/q;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 11
    invoke-virtual {p1, v3}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->getPointerDelta(I)Landroid/graphics/PointF;

    move-result-object v5

    .line 12
    invoke-virtual {p1, v4}, Lcom/autonavi/ae/gmap/gesture/TwoFingerGestureDetector;->getPointerDelta(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 13
    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    iget v7, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v6

    if-gtz v7, :cond_3

    :cond_2
    const/high16 v7, -0x3ee00000    # -10.0f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v7

    if-gez p1, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v6

    if-lez p1, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v6

    if-gez p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {p1, v4}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;Z)Z

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {p1}, Lcom/amap/api/col/l3/q;->i(Lcom/amap/api/col/l3/q;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {p1, v4}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;Z)Z

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v2, p1

    .line 18
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v1, 0x65

    invoke-static {v1, v2}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    .line 20
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {p1}, Lcom/amap/api/col/l3/q;->m(Lcom/amap/api/col/l3/q;)I

    :cond_6
    return v4

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v1, "onHove"

    .line 21
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v4
.end method

.method public final onHoveBegin(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x6

    .line 2
    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v2, v1

    iput-object v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->b()Z

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v2, 0x64

    .line 8
    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->l(I)F

    move-result v3

    .line 9
    invoke-static {v2, v3}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    return v1

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v2, "onHoveBegin"

    .line 10
    invoke-static {p1, v0, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public final onHoveEnd(Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v1, 0x6

    .line 2
    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/BaseGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->i()Lcom/amap/api/col/l3/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isTiltGesturesEnabled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object p1, p1, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->b:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->b()Z

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->l(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v0}, Lcom/amap/api/col/l3/q;->a(Lcom/amap/api/col/l3/q;)I

    move-result v0

    if-lez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    invoke-static {v0, v3}, Lcom/amap/api/col/l3/q;->b(Lcom/amap/api/col/l3/q;Z)Z

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/q$b;->a:Lcom/amap/api/col/l3/q;

    iget-object v0, v0, Lcom/amap/api/col/l3/q;->a:Lcom/amap/api/col/l3/u;

    const/16 v1, 0x66

    .line 11
    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->l(I)F

    move-result v2

    .line 12
    invoke-static {v1, v2}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->obtain(IF)Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amap/api/col/l3/u;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v1, "onHoveEnd"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
