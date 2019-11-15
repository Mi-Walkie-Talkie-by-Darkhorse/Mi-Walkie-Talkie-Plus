.class public Lcom/amap/api/mapcore/util/cp;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/cp$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/cp$a;

.field b:Landroid/animation/ValueAnimator;

.field c:Landroid/animation/Animator$AnimatorListener;

.field d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private e:Lcom/amap/api/mapcore/util/l;

.field private f:Lcom/amap/api/maps/model/Marker;

.field private g:Lcom/amap/api/maps/model/Circle;

.field private h:Lcom/amap/api/maps/model/MyLocationStyle;

.field private i:Lcom/amap/api/maps/model/LatLng;

.field private j:D

.field private k:Landroid/content/Context;

.field private l:Lcom/amap/api/mapcore/util/u;

.field private m:I

.field private n:Z

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private q:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    iput v2, p0, Lcom/amap/api/mapcore/util/cp;->m:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->n:Z

    const-string v0, "location_map_gps_locked.png"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->o:Ljava/lang/String;

    const-string v0, "location_map_gps_3d.png"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/amap/api/mapcore/util/cp;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->r:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->s:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->t:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->u:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->v:Z

    iput-object v3, p0, Lcom/amap/api/mapcore/util/cp;->a:Lcom/amap/api/mapcore/util/cp$a;

    new-instance v0, Lcom/amap/api/mapcore/util/cp$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/cp$1;-><init>(Lcom/amap/api/mapcore/util/cp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->c:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/amap/api/mapcore/util/cp$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/cp$2;-><init>(Lcom/amap/api/mapcore/util/cp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->k:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    new-instance v0, Lcom/amap/api/mapcore/util/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->k:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/mapcore/util/u;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/amap/api/mapcore/util/cp;->a(IZ)V

    return-void
.end method

.method private a(IZ)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput p1, p0, Lcom/amap/api/mapcore/util/cp;->m:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->s:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->r:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->u:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/cp;->v:Z

    iget v0, p0, Lcom/amap/api/mapcore/util/cp;->m:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->v:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/u;->a(Z)V

    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lcom/amap/api/mapcore/util/aa;->a(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/high16 v0, 0x42340000    # 45.0f

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cp;->b(F)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    :cond_2
    :goto_3
    return-void

    :pswitch_1
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->r:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->s:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->t:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->r:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->t:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->r:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->v:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->r:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->u:Z

    goto :goto_0

    :pswitch_5
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->u:Z

    goto :goto_0

    :pswitch_6
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/cp;->v:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u;->a(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->h()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->g()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->f()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/cp;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->i()V

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, v4, v5, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->a:Lcom/amap/api/mapcore/util/cp$a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/mapcore/util/cp$a;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/cp$a;-><init>(Lcom/amap/api/mapcore/util/cp;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cp;->a:Lcom/amap/api/mapcore/util/cp$a;

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    new-instance v1, Lcom/amap/api/mapcore/util/cp$a;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/cp$a;-><init>(Lcom/amap/api/mapcore/util/cp;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cp;->c:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cp;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_3

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p1, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cp;->a:Lcom/amap/api/mapcore/util/cp$a;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/cp;)Lcom/amap/api/maps/model/Circle;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    return-object v0
.end method

.method private b(F)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/aa;->c(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/cp;)Lcom/amap/api/maps/model/Marker;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method private c(F)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/aa;->d(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(F)V
    .locals 3

    const/high16 v2, 0x43b40000    # 360.0f

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    rem-float v0, p1, v2

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    sub-float/2addr v0, v2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    goto :goto_0

    :cond_3
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    add-float/2addr v0, v2

    goto :goto_1
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u;->b()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cp;->b(F)V

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cp;->c(F)V

    return-void
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->n:Z

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/cp;->n:Z

    :try_start_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aa;->a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/util/l;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "moveMapToLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    const-string v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->l()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    const-string v1, "location_map_gps_locked.png"

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->l()V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/Marker;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "locationIconRemove"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    new-instance v1, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setStrokeWidth(F)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getFillColor()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setFillColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getStrokeColor()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setStrokeColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cp;->j:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->e:Lcom/amap/api/mapcore/util/l;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getAnchorU()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getAnchorV()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/Marker;->setAnchor(FF)V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_b
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->i()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/Marker;)V

    :goto_1
    return-void

    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "myLocStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/cp;->a(IZ)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cp;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/cp;->j:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->j()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_3

    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/cp;->j:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/cp;->j:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cp;->d(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->i:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/cp;->a(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "setCentAndRadius"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->i()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cp;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/cp;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->j()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/maps/model/Marker;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/cp;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "setMyLocationStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->k()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/cp;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->l:Lcom/amap/api/mapcore/util/u;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->g:Lcom/amap/api/maps/model/Circle;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cp;->f:Lcom/amap/api/maps/model/Marker;

    return-void
.end method
