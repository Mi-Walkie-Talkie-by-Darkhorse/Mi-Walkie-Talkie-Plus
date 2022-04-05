.class public final Lcom/amap/api/col/l3/cx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/cp;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAnimation;
.implements Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;


# static fields
.field private static h:I


# instance fields
.field private A:Lcom/amap/api/maps/model/MarkerOptions;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/autonavi/amap/mapcore/FPoint;

.field private L:Landroid/graphics/Point;

.field private M:F

.field private N:F

.field private O:I

.field private P:I

.field private Q:Lcom/amap/api/col/l3/ab;

.field private R:[Lcom/amap/api/col/l3/ab;

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Lcom/amap/api/maps/model/LatLng;

.field private V:Lcom/amap/api/maps/model/LatLng;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:F

.field private Z:F

.field a:[F

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/amap/api/col/l3/z;

.field private ad:Ljava/lang/Object;

.field private ae:Z

.field private af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:I

.field private ak:I

.field private al:Z

.field private am:I

.field private an:I

.field private ao:J

.field private ap:F

.field private aq:F

.field private ar:F

.field private as:F

.field b:[F

.field c:Landroid/graphics/Rect;

.field d:I

.field e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

.field g:Ljava/lang/Object;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/autonavi/amap/mapcore/FPoint;

.field private v:[F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MarkerOptions;Lcom/amap/api/col/l3/z;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->i:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->j:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->k:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/l3/cx;->l:F

    iput v1, p0, Lcom/amap/api/col/l3/cx;->m:F

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->n:Z

    iput v0, p0, Lcom/amap/api/col/l3/cx;->o:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->p:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->q:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->r:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    const/16 v2, 0x24

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iput v1, p0, Lcom/amap/api/col/l3/cx;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/amap/api/col/l3/cx;->x:F

    iput v1, p0, Lcom/amap/api/col/l3/cx;->y:F

    iput v1, p0, Lcom/amap/api/col/l3/cx;->z:F

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->B:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->C:Z

    const/4 v3, 0x5

    iput v3, p0, Lcom/amap/api/col/l3/cx;->D:I

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->E:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->F:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->G:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->H:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->I:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->J:Z

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3/cx;->K:Lcom/autonavi/amap/mapcore/FPoint;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3/cx;->L:Landroid/graphics/Point;

    iput v0, p0, Lcom/amap/api/col/l3/cx;->O:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->P:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->S:Z

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/amap/api/col/l3/cx;->Y:F

    iput v1, p0, Lcom/amap/api/col/l3/cx;->Z:F

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->aa:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->ab:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ae:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ag:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ah:Z

    const/16 v1, 0x9

    iput v1, p0, Lcom/amap/api/col/l3/cx;->d:I

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->ai:Z

    iput v0, p0, Lcom/amap/api/col/l3/cx;->aj:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/amap/api/col/l3/cx;->ak:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/cx;->ao:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->g:Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amap/api/col/l3/cx;->ap:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3/cx;->aq:F

    iput v1, p0, Lcom/amap/api/col/l3/cx;->ar:F

    iput v0, p0, Lcom/amap/api/col/l3/cx;->as:F

    iput-object p2, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/cx;->setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(II)V
    .locals 7

    iput p1, p0, Lcom/amap/api/col/l3/cx;->s:I

    iput p2, p0, Lcom/amap/api/col/l3/cx;->t:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    iget p2, p0, Lcom/amap/api/col/l3/cx;->s:I

    iget v0, p0, Lcom/amap/api/col/l3/cx;->t:I

    invoke-static {p2, v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput-object p2, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    iget-object p2, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {p2}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object p2

    iget v0, p0, Lcom/amap/api/col/l3/cx;->s:I

    iget v1, p0, Lcom/amap/api/col/l3/cx;->t:I

    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {p2, v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 8

    instance-of v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/cx;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v0, :cond_1

    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, p0, Lcom/amap/api/col/l3/cx;->am:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget v0, p0, Lcom/amap/api/col/l3/cx;->an:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v2

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    iget-wide v5, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/amap/api/col/l3/u;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void

    :cond_1
    check-cast p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;

    iget v0, p0, Lcom/amap/api/col/l3/cx;->s:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromXDelta:D

    iget v0, p0, Lcom/amap/api/col/l3/cx;->t:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mFromYDelta:D

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget-wide v3, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToXDelta:D

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    iput-wide v1, p1, Lcom/autonavi/amap/mapcore/animation/GLTranslateAnimation;->mToYDelta:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    return-void
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->m()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->O:I

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->O:I

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->P:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3/cx;->O:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private o()I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/l3/cx;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_0
    return-void
.end method

.method private q()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    :cond_1
    iget-boolean v1, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3/cx;->am:I

    iget v3, p0, Lcom/amap/api/col/l3/cx;->an:I

    iget-object v4, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/col/l3/u;->a(IILandroid/graphics/PointF;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3/cx;->t:I

    iget v3, p0, Lcom/amap/api/col/l3/cx;->s:I

    iget-object v4, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/api/col/l3/u;->a(IILcom/autonavi/amap/mapcore/FPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static r()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    return v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->n()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/amap/api/col/l3/cx;->M:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v0

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->o()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/amap/api/col/l3/cx;->N:F

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/autonavi/amap/mapcore/FPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    return-object v0
.end method

.method public final a(Lcom/amap/api/col/l3/u;)V
    .locals 11

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ah:Z

    if-nez v0, :cond_a

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amap/api/col/l3/ab;

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1, v5}, Lcom/amap/api/col/l3/u;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3/ab;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->f()I

    move-result v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-nez v6, :cond_2

    new-instance v6, Lcom/amap/api/col/l3/ab;

    invoke-direct {v6, v5, v7}, Lcom/amap/api/col/l3/ab;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    :cond_2
    if-nez v7, :cond_6

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/amap/api/col/l3/cx;->O:I

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/amap/api/col/l3/cx;->P:I

    iget-object v7, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v7}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v7

    invoke-interface {v7}, Lcom/amap/api/col/l3/u;->f()I

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3/cx;->r()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/col/l3/ab;->a(I)V

    if-eqz v0, :cond_3

    invoke-interface {p1, v6}, Lcom/amap/api/col/l3/u;->a(Lcom/amap/api/col/l3/ab;)V

    :cond_3
    invoke-static {v7, v5, v3}, Lcom/amap/api/col/l3/em;->a(ILandroid/graphics/Bitmap;Z)I

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v8, v5, v6}, Lcom/amap/api/col/l3/z;->a(Landroid/graphics/Bitmap;Lcom/amap/api/col/l3/ab;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->b()F

    move-result v8

    const/high16 v9, 0x44000000    # 512.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->a()F

    move-result v9

    const/high16 v10, 0x44800000    # 1024.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    invoke-static {v7, v5, v8, v9}, Lcom/amap/api/col/l3/em;->a(ILandroid/graphics/Bitmap;II)I

    invoke-virtual {v6, v7}, Lcom/amap/api/col/l3/ab;->a(I)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/amap/api/col/l3/cx;->r()I

    move-result v7

    invoke-static {v7, v5, v3}, Lcom/amap/api/col/l3/em;->a(ILandroid/graphics/Bitmap;Z)I

    invoke-virtual {v6, v7}, Lcom/amap/api/col/l3/ab;->a(I)V

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {p1, v6}, Lcom/amap/api/col/l3/u;->a(Lcom/amap/api/col/l3/ab;)V

    :cond_6
    :goto_4
    invoke-virtual {v6}, Lcom/amap/api/col/l3/ab;->g()V

    iget-object v5, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_8

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->ai:Z

    goto :goto_5

    :cond_8
    iput-boolean v3, p0, Lcom/amap/api/col/l3/cx;->ai:Z

    :goto_5
    iput-boolean v3, p0, Lcom/amap/api/col/l3/cx;->G:Z

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->ah:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->q()Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MarkerDelegateImp"

    const-string v1, "loadtexture"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_a
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/u;[FIF)V
    .locals 11

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->S:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v0, :cond_14

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/l3/cx;->s:I

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v1, p0, Lcom/amap/api/col/l3/cx;->t:I

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/l3/cx;->ao:J

    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->i:Z

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->F:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/l3/cx;->am:I

    iget v2, p0, Lcom/amap/api/col/l3/cx;->an:I

    iget-object v3, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-interface {p1, v0, v2, v3}, Lcom/amap/api/col/l3/u;->a(IILandroid/graphics/PointF;)V

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->J:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->g:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/animation/GLTransformation;-><init>()V

    iget-object v5, p0, Lcom/amap/api/col/l3/cx;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v4}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->getTransformation(JLcom/autonavi/amap/mapcore/animation/GLTransformation;)Z

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    double-to-float v5, v5

    iput v5, p0, Lcom/amap/api/col/l3/cx;->x:F

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    double-to-float v5, v5

    iput v5, p0, Lcom/amap/api/col/l3/cx;->y:F

    :cond_4
    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_5

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    double-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/amap/api/col/l3/cx;->setRotateAngle(F)V

    :cond_5
    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_7

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_7

    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iget-wide v7, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    iget-boolean v9, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v9

    iget-object v10, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v10}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v10

    invoke-interface {v10}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v10

    double-to-int v5, v5

    double-to-int v6, v7

    invoke-virtual {v10, v5, v6, v9}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget-object v6, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v6}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v6

    iget v7, v9, Landroid/graphics/PointF;->x:F

    iget v8, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8, v5}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6, v7}, Lcom/amap/api/col/l3/cx;->a(II)V

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->al:Z

    goto :goto_0

    :cond_6
    double-to-int v5, v5

    double-to-int v6, v7

    invoke-direct {p0, v5, v6}, Lcom/amap/api/col/l3/cx;->a(II)V

    :cond_7
    :goto_0
    iget-wide v5, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_8

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    double-to-float v4, v4

    iput v4, p0, Lcom/amap/api/col/l3/cx;->z:F

    :cond_8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->k:Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3/cx;->ai:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_9
    iput v2, p0, Lcom/amap/api/col/l3/cx;->x:F

    iput v2, p0, Lcom/amap/api/col/l3/cx;->y:F

    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->J:Z

    :goto_1
    iget v0, p0, Lcom/amap/api/col/l3/cx;->x:F

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->n()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    float-to-int v0, v0

    iget v4, p0, Lcom/amap/api/col/l3/cx;->y:F

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->o()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v0, v0

    mul-float v0, v0, p4

    int-to-float v4, v4

    mul-float v4, v4, p4

    iget-object p4, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget p4, p4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v6

    iget v7, p0, Lcom/amap/api/col/l3/cx;->l:F

    iget-boolean v8, p0, Lcom/amap/api/col/l3/cx;->n:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result p1

    sub-float/2addr v7, p1

    const/4 v6, 0x0

    :cond_a
    iget p1, p0, Lcom/amap/api/col/l3/cx;->z:F

    cmpg-float v8, p1, v9

    if-gez v8, :cond_b

    goto :goto_2

    :cond_b
    move v9, p1

    :goto_2
    cmpl-float p1, v9, v2

    if-lez p1, :cond_c

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_c
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x0

    add-int/2addr v8, v3

    iget v10, p0, Lcom/amap/api/col/l3/cx;->Y:F

    mul-float v10, v10, v0

    sub-float v10, p4, v10

    aput v10, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x0

    add-int/2addr v8, v1

    iget v10, p0, Lcom/amap/api/col/l3/cx;->Z:F

    sub-float v10, v2, v10

    mul-float v10, v10, v4

    add-float/2addr v10, v5

    aput v10, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x0

    add-int/lit8 v8, v8, 0x2

    aput p4, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x0

    add-int/lit8 v8, v8, 0x3

    aput v5, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x0

    add-int/lit8 v8, v8, 0x6

    aput v7, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x0

    add-int/lit8 v8, v8, 0x7

    aput v6, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x0

    add-int/lit8 v8, v8, 0x8

    aput v9, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v3

    iget v10, p0, Lcom/amap/api/col/l3/cx;->Y:F

    sub-float v10, v2, v10

    mul-float v10, v10, v0

    add-float/2addr v10, p4

    aput v10, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v1

    iget v10, p0, Lcom/amap/api/col/l3/cx;->Z:F

    sub-float v10, v2, v10

    mul-float v10, v10, v4

    add-float/2addr v10, v5

    aput v10, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x2

    aput p4, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x3

    aput v5, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x6

    aput v7, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x7

    aput v6, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x8

    aput v9, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v8, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    iget v10, p0, Lcom/amap/api/col/l3/cx;->Y:F

    sub-float/2addr v2, v10

    mul-float v2, v2, v0

    add-float/2addr v2, p4

    aput v2, p1, v8

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v2, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget v8, p0, Lcom/amap/api/col/l3/cx;->Z:F

    mul-float v8, v8, v4

    sub-float v8, v5, v8

    aput v8, p1, v2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v2, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    aput p4, p1, v2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v2, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    aput v5, p1, v2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v2, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6

    aput v7, p1, v2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v2, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x7

    aput v6, p1, v2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v2, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x8

    aput v9, p1, v2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v2, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    iget v8, p0, Lcom/amap/api/col/l3/cx;->Y:F

    mul-float v0, v0, v8

    sub-float v0, p4, v0

    aput v0, p1, v2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v0, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    iget v2, p0, Lcom/amap/api/col/l3/cx;->Z:F

    mul-float v4, v4, v2

    sub-float v2, v5, v4

    aput v2, p1, v0

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget v0, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aput p4, p1, v0

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x3

    add-int/lit8 p4, p4, 0x3

    aput v5, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x3

    add-int/lit8 p4, p4, 0x6

    aput v7, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x3

    add-int/lit8 p4, p4, 0x7

    aput v6, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x3

    add-int/lit8 p4, p4, 0x8

    aput v9, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    iget p1, p0, Lcom/amap/api/col/l3/cx;->aj:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->aj:I

    iget p1, p0, Lcom/amap/api/col/l3/cx;->ak:I

    iget-object p4, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    mul-int p1, p1, p4

    iget p4, p0, Lcom/amap/api/col/l3/cx;->aj:I

    if-lt p4, p1, :cond_d

    iput v3, p0, Lcom/amap/api/col/l3/cx;->aj:I

    :cond_d
    iget p1, p0, Lcom/amap/api/col/l3/cx;->ak:I

    if-nez p1, :cond_e

    iput v1, p0, Lcom/amap/api/col/l3/cx;->ak:I

    :cond_e
    iget p1, p0, Lcom/amap/api/col/l3/cx;->aj:I

    iget p4, p0, Lcom/amap/api/col/l3/cx;->ak:I

    div-int/2addr p1, p4

    iget-object p4, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    aget-object p1, p4, p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    iget-boolean p1, p0, Lcom/amap/api/col/l3/cx;->ai:Z

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    :cond_f
    iget-boolean p1, p0, Lcom/amap/api/col/l3/cx;->G:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/amap/api/col/l3/cx;->ai:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p1, :cond_11

    :cond_10
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x0

    add-int/lit8 p4, p4, 0x4

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->b()F

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x0

    add-int/lit8 p4, p4, 0x5

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->d()F

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x1

    add-int/lit8 p4, p4, 0x4

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->c()F

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x1

    add-int/lit8 p4, p4, 0x5

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->d()F

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0x4

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->c()F

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0x5

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->a()F

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x3

    add-int/lit8 p4, p4, 0x4

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->b()F

    move-result v0

    aput v0, p1, p4

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget p4, p0, Lcom/amap/api/col/l3/cx;->d:I

    mul-int/lit8 p4, p4, 0x3

    add-int/lit8 p4, p4, 0x5

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ab;->a()F

    move-result v0

    aput v0, p1, p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->G:Z

    :cond_11
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    array-length p1, p1

    if-lez p1, :cond_12

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->v:[F

    iget-object p4, p0, Lcom/amap/api/col/l3/cx;->v:[F

    array-length p4, p4

    invoke-static {p1, v3, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    iget-boolean p1, p0, Lcom/amap/api/col/l3/cx;->k:Z

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->isInfoWindowShown()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->k()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/amap/api/col/l3/cx;->ao:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    cmp-long v0, p1, p3

    if-lez v0, :cond_13

    iput-boolean v3, p0, Lcom/amap/api/col/l3/cx;->k:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_13
    return-void

    :catchall_2
    move-exception p1

    const-string p2, "MarkerDelegateImp"

    const-string p3, "drawMarker"

    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_4
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->k:Z

    return-void
.end method

.method public final b()Lcom/amap/api/maps/model/LatLng;
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/l3/cx;->am:I

    iget v2, p0, Lcom/amap/api/col/l3/cx;->an:I

    iget-object v3, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3/cx;->am:I

    iget v3, p0, Lcom/amap/api/col/l3/cx;->an:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/col/l3/u;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->V:Lcom/amap/api/maps/model/LatLng;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->I:Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->o:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->p:I

    return v0
.end method

.method public final destroy(Z)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->S:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->remove()Z

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/ab;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ab;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amap/api/col/l3/u;->b(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->ad:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->R:[Lcom/amap/api/col/l3/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MarkerDelegateImp"

    const-string v1, "destroy"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->q:I

    return v0
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->r:I

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    return v0
.end method

.method public final getAlpha()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->z:F

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->Y:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->Z:F

    return v0
.end method

.method public final getDisplayLevel()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->D:I

    return v0
.end method

.method public final getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;
    .locals 4

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3/cx;->am:I

    iget v3, p0, Lcom/amap/api/col/l3/cx;->an:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/col/l3/u;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    return-object v0

    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3/cx;->s:I

    iget v2, p0, Lcom/amap/api/col/l3/cx;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public final getIMarkerAction()Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->T:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/amap/api/col/l3/cx;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3/cx;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3/cx;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->T:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ad:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOptions()Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    return-object v0
.end method

.method public final getPeriod()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->ak:I

    return v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 7

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->q()Z

    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-interface {v2, v4, v3, v1}, Lcom/amap/api/col/l3/u;->a(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotateAngle()F
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iget v0, p0, Lcom/amap/api/col/l3/cx;->m:F

    return v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->X:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->w:F

    return v0
.end method

.method public final h()Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->v:[F

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/cx;->n()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/cx;->o()I

    move-result v4

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, v1, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v6, v7, v5}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->a:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v7, 0x0

    iget v0, v1, Lcom/amap/api/col/l3/cx;->l:F

    neg-float v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-boolean v0, v1, Lcom/amap/api/col/l3/cx;->n:Z

    if-eqz v0, :cond_1

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v12, v1, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    neg-int v7, v3

    int-to-float v12, v7

    iget v7, v1, Lcom/amap/api/col/l3/cx;->Y:F

    mul-float v7, v7, v12

    aput v7, v6, v2

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    int-to-float v13, v4

    iget v7, v1, Lcom/amap/api/col/l3/cx;->Z:F

    mul-float v7, v7, v13

    const/4 v14, 0x1

    aput v7, v6, v14

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v15, v6, v16

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    const/16 v17, 0x3

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v6, v17

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/amap/api/col/l3/cx;->b:[F

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aget v8, v0, v2

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aget v9, v0, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    aget v10, v0, v2

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    aget v11, v0, v14

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    int-to-float v3, v3

    iget v7, v1, Lcom/amap/api/col/l3/cx;->Y:F

    sub-float v7, v18, v7

    mul-float v7, v7, v3

    aput v7, v6, v2

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    iget v7, v1, Lcom/amap/api/col/l3/cx;->Z:F

    mul-float v13, v13, v7

    aput v13, v6, v14

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    aput v15, v6, v16

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    aput v18, v6, v17

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/amap/api/col/l3/cx;->b:[F

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    aget v8, v0, v2

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aget v9, v0, v14

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->union(II)V

    iget-object v6, v1, Lcom/amap/api/col/l3/cx;->b:[F

    iget v7, v1, Lcom/amap/api/col/l3/cx;->Y:F

    sub-float v7, v18, v7

    mul-float v3, v3, v7

    aput v3, v6, v2

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->b:[F

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v1, Lcom/amap/api/col/l3/cx;->Z:F

    sub-float v6, v18, v6

    mul-float v6, v6, v4

    aput v6, v3, v14

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->b:[F

    aput v15, v3, v16

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->b:[F

    aput v18, v3, v17

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/amap/api/col/l3/cx;->b:[F

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aget v7, v0, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    aget v8, v0, v14

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->union(II)V

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->b:[F

    iget v6, v1, Lcom/amap/api/col/l3/cx;->Y:F

    mul-float v12, v12, v6

    aput v12, v3, v2

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->b:[F

    iget v6, v1, Lcom/amap/api/col/l3/cx;->Z:F

    sub-float v6, v18, v6

    mul-float v4, v4, v6

    aput v4, v3, v14

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->b:[F

    aput v15, v3, v16

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->b:[F

    aput v18, v3, v17

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/amap/api/col/l3/cx;->b:[F

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v3, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    iget v4, v5, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget v6, v0, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, v5, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aget v0, v0, v14

    sub-float/2addr v6, v0

    float-to-int v0, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v3, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/amap/api/col/l3/cx;->q:I

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/amap/api/col/l3/cx;->r:I

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    iget-object v0, v1, Lcom/amap/api/col/l3/cx;->c:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v3, "MarkerDelegateImp"

    const-string v4, "getRect"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final hideInfoWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->isInfoWindowShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/z;->b(Lcom/amap/api/col/l3/cs;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->j:Z

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->k:Z

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ai:Z

    return v0
.end method

.method public final isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->E:Z

    return v0
.end method

.method public final isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->aa:Z

    return v0
.end method

.method public final isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->n:Z

    return v0
.end method

.method public final isInfoWindowAutoOverturn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->B:Z

    return v0
.end method

.method public final isInfoWindowEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->C:Z

    return v0
.end method

.method public final isInfoWindowShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->j:Z

    return v0
.end method

.method public final isPerspective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ae:Z

    return v0
.end method

.method public final isRemoved()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3/z;->c(Lcom/amap/api/col/l3/cs;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ab:Z

    return v0
.end method

.method public final j()Z
    .locals 7

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->J:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->L:Landroid/graphics/Point;

    iget v3, p0, Lcom/amap/api/col/l3/cx;->s:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/amap/api/col/l3/cx;->t:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    iget v3, p0, Lcom/amap/api/col/l3/cx;->s:I

    iget v4, p0, Lcom/amap/api/col/l3/cx;->t:I

    invoke-virtual {v0, v3, v4}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->s()V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v3, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iput v4, v0, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->s()V

    iget v3, p0, Lcom/amap/api/col/l3/cx;->M:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget v3, p0, Lcom/amap/api/col/l3/cx;->N:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->ap:F

    const/4 v4, 0x2

    aget-object v5, v0, v4

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->ap:F

    const/4 v5, 0x3

    aget-object v6, v0, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->ap:F

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v6, v0, v1

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->aq:F

    aget-object v6, v0, v4

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->aq:F

    aget-object v6, v0, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->aq:F

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v6, v0, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->as:F

    aget-object v6, v0, v4

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->as:F

    aget-object v6, v0, v5

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->as:F

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v6, v0, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->ar:F

    aget-object v4, v0, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->ar:F

    aget-object v4, v0, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3/cx;->ar:F

    iget-object v3, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/amap/api/col/l3/cx;->ap:F

    iget v5, p0, Lcom/amap/api/col/l3/cx;->aq:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/l3/cx;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, p0, Lcom/amap/api/col/l3/cx;->M:F

    div-float/2addr v6, v5

    add-float/2addr v3, v6

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/amap/api/col/l3/cx;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, p0, Lcom/amap/api/col/l3/cx;->M:F

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    :goto_0
    iput v3, v4, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/amap/api/col/l3/cx;->as:F

    iget v6, p0, Lcom/amap/api/col/l3/cx;->ar:F

    add-float/2addr v4, v6

    div-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/amap/api/col/l3/cx;->K:Lcom/autonavi/amap/mapcore/FPoint;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/amap/api/col/l3/cx;->K:Lcom/autonavi/amap/mapcore/FPoint;

    iget v5, p0, Lcom/amap/api/col/l3/cx;->N:F

    sub-float/2addr v3, v5

    :goto_1
    iput v3, v4, Landroid/graphics/PointF;->y:F

    :cond_5
    iget-object v3, p0, Lcom/amap/api/col/l3/cx;->K:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-static {v3, v0}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/FPoint;[Lcom/autonavi/amap/mapcore/FPoint;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method public final k()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->Q:Lcom/amap/api/col/l3/ab;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/ab;->f()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->I:Z

    return v0
.end method

.method public final remove()Z
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ab:Z

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/cs;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final set2Top()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/cp;)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->z:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->alpha(F)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setAnchor(FF)V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/cx;->Y:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/cx;->Z:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/col/l3/cx;->Y:F

    iput p2, p0, Lcom/amap/api/col/l3/cx;->Z:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->k:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    return-void
.end method

.method public final setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/amap/api/maps/model/animation/Animation;->glAnimation:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    :goto_0
    invoke-interface {p0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAnimation;->setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    return-void
.end method

.method public final setAnimation(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    return-void
.end method

.method public final setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public final setAutoOverturnInfoWindow(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->B:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setBelowMaskLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->H:Z

    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->E:Z

    return-void
.end method

.method public final setDisplayLevel(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->D:I

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setDraggable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->aa:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    return-void
.end method

.method public final setFixingPointEnable(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->F:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/amap/api/col/l3/cx;->al:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/cx;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->al:Z

    :cond_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/amap/api/col/l3/cx;->al:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->b()Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/cx;->u:Lcom/autonavi/amap/mapcore/FPoint;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, p1}, Lcom/autonavi/ae/gmap/GLMapState;->map2Win(FFLcom/autonavi/amap/mapcore/IPoint;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->am:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->an:I

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    return-void
.end method

.method public final setFlat(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->n:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->al:Z

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/l3/cx;->a(II)V

    return-void
.end method

.method public final setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->G:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ah:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->i:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->k:Z

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->O:I

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->P:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "MarkerDelegateImp"

    const-string v1, "setIcon"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized setIcons(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->af:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/cx;->a(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->ah:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->i:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->G:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "MarkerDelegateImp"

    const-string v1, "setIcons"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final setInfoWindowEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->C:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->hideInfoWindow()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setMarkerOptions(Lcom/amap/api/maps/model/MarkerOptions;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isGps()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ag:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ag:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3/kj;->a(DD)[D

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcom/amap/api/col/l3/cx;->V:Lcom/amap/api/maps/model/LatLng;

    aget-wide v3, v0, v5

    aget-wide v1, v0, v2

    invoke-static {v3, v4, v1, v2, p1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MarkerDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->V:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, p1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    :cond_2
    :goto_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->s:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/amap/api/col/l3/cx;->t:I

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorU()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->Y:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAnchorV()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->Z:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetX()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->o:I

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getInfoWindowOffsetY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->p:I

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getPeriod()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->ak:I

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->w:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->H:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->q()Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/cx;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ab:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isDraggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->aa:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isPerspective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ae:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->n:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isBelowMaskLayer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->H:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->z:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getRotateAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/cx;->setRotateAngle(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->getDisplayLevel()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->D:I

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowAutoOverturn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->B:Z

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MarkerOptions;->isInfoWindowEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/cx;->C:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->a:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/col/l3/cx;->b:[F

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->ad:Ljava/lang/Object;

    return-void
.end method

.method public final setPeriod(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/col/l3/cx;->ak:I

    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/cx;->ak:I

    return-void
.end method

.method public final setPerspective(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->ae:Z

    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u975e\u6cd5\u5750\u6807\u503c latlng is null"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    const-string v0, "setPosition"

    const-string v1, "Marker"

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->U:Lcom/amap/api/maps/model/LatLng;

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/l3/cx;->ag:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/col/l3/kj;->a(DD)[D

    move-result-object v1

    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    aget-wide v5, v1, v2

    aget-wide v7, v1, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v4, p0, Lcom/amap/api/col/l3/cx;->V:Lcom/amap/api/maps/model/LatLng;

    aget-wide v4, v1, v3

    aget-wide v6, v1, v2

    invoke-static {v4, v5, v6, v7, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->V:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :cond_1
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    :goto_0
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/amap/api/col/l3/cx;->s:I

    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/amap/api/col/l3/cx;->t:I

    iput-boolean v3, p0, Lcom/amap/api/col/l3/cx;->al:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->q()Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iput-boolean v2, p0, Lcom/amap/api/col/l3/cx;->k:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void
.end method

.method public final setPositionByPixels(II)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3/cx;->am:I

    iput p2, p0, Lcom/amap/api/col/l3/cx;->an:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->al:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->q()Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->k:Z

    return-void
.end method

.method public final setPositionNotUpdate(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/cx;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    return-void
.end method

.method public final setRotateAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;

    iput p1, p0, Lcom/amap/api/col/l3/cx;->m:F

    neg-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/amap/api/col/l3/cx;->l:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->k:Z

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    return-void
.end method

.method public final setRotateAngleNotUpdate(F)V
    .locals 0

    return-void
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->X:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/l3/cx;->W:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ab:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->ab:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/cx;->I:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->isInfoWindowShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3/z;->b(Lcom/amap/api/col/l3/cs;)V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/l3/cx;->w:F

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->A:Lcom/amap/api/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    iget-object p1, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/z;->e()V

    return-void
.end method

.method public final showInfoWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/cx;->ab:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/cx;->isInfoWindowEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->ac:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/z;->b(Lcom/amap/api/col/l3/cp;)V

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    return-void
.end method

.method public final startAnimation()Z
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/cx;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    instance-of v2, v2, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    check-cast v2, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v4}, Lcom/amap/api/col/l3/cx;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimationSet;->getDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/cx;->a(Lcom/autonavi/amap/mapcore/animation/GLAnimation;)V

    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cx;->J:Z

    iget-object v2, p0, Lcom/amap/api/col/l3/cx;->f:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    iput-object v2, p0, Lcom/amap/api/col/l3/cx;->e:Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->start()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/amap/api/col/l3/cx;->p()V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_1
    return v1
.end method
