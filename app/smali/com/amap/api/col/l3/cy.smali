.class public final Lcom/amap/api/col/l3/cy;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/cy$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/cy$a;

.field b:Landroid/animation/ValueAnimator;

.field c:Landroid/animation/Animator$AnimatorListener;

.field d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private e:Lcom/amap/api/col/l3/u;

.field private f:Lcom/amap/api/maps/model/Marker;

.field private g:Lcom/amap/api/maps/model/Circle;

.field private h:Lcom/amap/api/maps/model/MyLocationStyle;

.field private i:Lcom/amap/api/maps/model/LatLng;

.field private j:D

.field private k:Landroid/content/Context;

.field private l:Lcom/amap/api/col/l3/ad;

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
.method public constructor <init>(Lcom/amap/api/col/l3/u;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/cy;->m:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->n:Z

    const-string v2, "location_map_gps_locked.png"

    .line 5
    iput-object v2, p0, Lcom/amap/api/col/l3/cy;->o:Ljava/lang/String;

    const-string v2, "location_map_gps_3d.png"

    .line 6
    iput-object v2, p0, Lcom/amap/api/col/l3/cy;->p:Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/amap/api/col/l3/cy;->q:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->r:Z

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->s:Z

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->t:Z

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->u:Z

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->v:Z

    .line 13
    iput-object v2, p0, Lcom/amap/api/col/l3/cy;->a:Lcom/amap/api/col/l3/cy$a;

    .line 14
    new-instance v1, Lcom/amap/api/col/l3/cy$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/cy$1;-><init>(Lcom/amap/api/col/l3/cy;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/cy;->c:Landroid/animation/Animator$AnimatorListener;

    .line 15
    new-instance v1, Lcom/amap/api/col/l3/cy$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/cy$2;-><init>(Lcom/amap/api/col/l3/cy;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/cy;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3/cy;->k:Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    .line 18
    new-instance v1, Lcom/amap/api/col/l3/ad;

    invoke-direct {v1, p2, p1}, Lcom/amap/api/col/l3/ad;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    const/4 p1, 0x1

    .line 19
    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/l3/cy;->a(IZ)V

    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 14
    iput p1, p0, Lcom/amap/api/col/l3/cy;->m:I

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cy;->n:Z

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cy;->s:Z

    .line 17
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cy;->r:Z

    .line 18
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cy;->u:Z

    .line 19
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cy;->v:Z

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const/4 v2, 0x7

    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 20
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->u:Z

    goto :goto_0

    .line 21
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->r:Z

    .line 22
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->u:Z

    goto :goto_0

    .line 23
    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->r:Z

    .line 24
    :cond_3
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->v:Z

    goto :goto_0

    .line 25
    :cond_4
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->r:Z

    .line 26
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->t:Z

    goto :goto_0

    .line 27
    :cond_5
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->r:Z

    .line 28
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->s:Z

    .line 29
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cy;->t:Z

    .line 30
    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3/cy;->u:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/amap/api/col/l3/cy;->v:Z

    if-eqz p1, :cond_6

    goto :goto_2

    .line 31
    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 33
    :cond_7
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/col/l3/aj;->c(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :cond_8
    :goto_1
    invoke-direct {p0, p2}, Lcom/amap/api/col/l3/cy;->b(F)V

    .line 35
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ad;->b()V

    goto :goto_5

    .line 36
    :cond_9
    :goto_2
    iget-boolean p1, p0, Lcom/amap/api/col/l3/cy;->v:Z

    if-eqz p1, :cond_b

    .line 37
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/ad;->a(Z)V

    if-nez p2, :cond_a

    .line 38
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {p2}, Lcom/amap/api/col/l3/aj;->a(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_3
    const/high16 p1, 0x42340000    # 45.0f

    .line 40
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/cy;->b(F)V

    goto :goto_4

    .line 41
    :cond_b
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/ad;->a(Z)V

    .line 42
    :goto_4
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ad;->a()V

    .line 43
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz p1, :cond_c

    .line 44
    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    :cond_c
    :goto_5
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/cy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/cy;->f()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3/cy;)Lcom/amap/api/maps/model/Circle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    return-object p0
.end method

.method private b(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/l3/aj;->b(F)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/u;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/col/l3/cy;)Lcom/amap/api/maps/model/Marker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cy;->r:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cy;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cy;->n:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cy;->n:Z

    .line 5
    :try_start_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    invoke-static {v0}, Lcom/amap/api/col/l3/aj;->a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/col/l3/u;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "moveMapToLocation"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    const-string v1, "location_map_gps_locked.png"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 3
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 6
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    new-instance v1, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getStrokeWidth()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setStrokeWidth(F)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getFillColor()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setFillColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getStrokeColor()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setStrokeColor(I)V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    iget-wide v2, p0, Lcom/amap/api/col/l3/cy;->j:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    new-instance v3, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getAnchorU()F

    move-result v0

    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getAnchorV()F

    move-result v0

    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/maps/model/Marker;->setAnchor(FF)V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_3

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    goto :goto_1

    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_f
    invoke-direct {p0}, Lcom/amap/api/col/l3/cy;->f()V

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    iget-object v1, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ad;->a(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "myLocStyle"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/cy;->a(Z)V

    .line 46
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 47
    :cond_1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 48
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    .line 49
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/amap/api/col/l3/cy;->j:D

    .line 50
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/amap/api/col/l3/cy;->g()V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_3

    .line 53
    :try_start_0
    iget-wide v1, p0, Lcom/amap/api/col/l3/cy;->j:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_3

    .line 54
    iget-wide v1, p0, Lcom/amap/api/col/l3/cy;->j:D

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "setCentAndRadius"

    .line 55
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cy;->t:Z

    if-eqz v0, :cond_6

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_4
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_5

    add-float/2addr p1, v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_6

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 58
    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 59
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->i:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    :cond_7
    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->a:Lcom/amap/api/col/l3/cy$a;

    if-nez v3, :cond_8

    new-instance v3, Lcom/amap/api/col/l3/cy$a;

    invoke-direct {v3, p0}, Lcom/amap/api/col/l3/cy$a;-><init>(Lcom/amap/api/col/l3/cy;)V

    iput-object v3, p0, Lcom/amap/api/col/l3/cy;->a:Lcom/amap/api/col/l3/cy$a;

    :cond_8
    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->b:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_9

    new-instance v3, Lcom/amap/api/col/l3/cy$a;

    invoke-direct {v3, p0}, Lcom/amap/api/col/l3/cy$a;-><init>(Lcom/amap/api/col/l3/cy;)V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object p1, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cy;->b:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->c:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->b:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    :cond_9
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object p1, v6, v4

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->b:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/col/l3/cy;->a:Lcom/amap/api/col/l3/cy$a;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :goto_2
    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double p1, v3, v1

    if-nez p1, :cond_a

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double p1, v3, v1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 60
    :cond_b
    invoke-direct {p0}, Lcom/amap/api/col/l3/cy;->f()V

    return-void
.end method

.method public final a(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 2

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/cy;->a(Z)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/ad;->a(Z)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/cy;->m:I

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/cy;->g()V

    .line 8
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    iget-object v1, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/ad;->a(Lcom/amap/api/maps/model/Marker;)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/col/l3/cy;->h:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/cy;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MyLocationOverlay"

    const-string v1, "setMyLocationStyle"

    .line 11
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/cy;->e:Lcom/amap/api/col/l3/u;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amap/api/col/l3/u;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "MyLocationOverlay"

    const-string v3, "locationIconRemove"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    iput-object v1, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ad;->a(Lcom/amap/api/maps/model/Marker;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ad;->b()V

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/cy;->l:Lcom/amap/api/col/l3/ad;

    :cond_2
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/cy;->g:Lcom/amap/api/maps/model/Circle;

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/cy;->f:Lcom/amap/api/maps/model/Marker;

    return-void
.end method
