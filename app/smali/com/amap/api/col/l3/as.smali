.class public final Lcom/amap/api/col/l3/as;
.super Ljava/lang/Object;
.source "MultiPointOverlayDelegate.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;


# static fields
.field private static F:I


# instance fields
.field A:Ljava/lang/String;

.field B:I

.field private C:Ljava/lang/String;

.field private D:[F

.field private E:Z

.field private G:Ljava/util/concurrent/ExecutorService;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:[F

.field a:Lcom/amap/api/maps/model/BitmapDescriptor;

.field b:Lcom/amap/api/maps/model/BitmapDescriptor;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/amap/api/col/l3/au;

.field j:Lcom/amap/api/col/l3/ar;

.field k:Lcom/amap/api/col/l3/ar;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/autonavi/amap/mapcore/IPoint;

.field n:Lcom/amap/api/col/l3/at;

.field o:[F

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/aq;",
            ">;"
        }
    .end annotation
.end field

.field q:[F

.field r:[F

.field s:[F

.field t:Landroid/graphics/Rect;

.field u:Lcom/amap/api/col/l3/ar;

.field v:Lcom/amap/api/col/l3/ar;

.field w:I

.field x:I

.field y:[F

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/MultiPointOverlayOptions;Lcom/amap/api/col/l3/at;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->defaultMarker()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/as;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/as;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/amap/api/col/l3/as;->c:F

    .line 5
    iput v1, p0, Lcom/amap/api/col/l3/as;->d:F

    .line 6
    iput v1, p0, Lcom/amap/api/col/l3/as;->e:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    iput v1, p0, Lcom/amap/api/col/l3/as;->f:F

    .line 8
    iput v1, p0, Lcom/amap/api/col/l3/as;->g:F

    .line 9
    iput-object v0, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    .line 10
    iput-object v0, p0, Lcom/amap/api/col/l3/as;->j:Lcom/amap/api/col/l3/ar;

    .line 11
    new-instance v2, Lcom/amap/api/col/l3/ar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4, v3}, Lcom/amap/api/col/l3/ar;-><init>(IIII)V

    iput-object v2, p0, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    const/16 v2, 0x18

    new-array v2, v2, [F

    .line 13
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/amap/api/col/l3/as;->D:[F

    .line 14
    iput-boolean v3, p0, Lcom/amap/api/col/l3/as;->E:Z

    const/16 v2, 0x10

    new-array v5, v2, [F

    .line 15
    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/amap/api/col/l3/as;->o:[F

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/amap/api/col/l3/as;->p:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/amap/api/col/l3/as;->G:Ljava/util/concurrent/ExecutorService;

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/amap/api/col/l3/as;->H:Ljava/util/List;

    const/4 v5, 0x3

    .line 19
    iput v5, p0, Lcom/amap/api/col/l3/as;->I:I

    .line 20
    sget v6, Lcom/amap/api/col/l3/aq;->a:I

    mul-int/lit8 v6, v6, 0x3

    new-array v5, v6, [F

    iput-object v5, p0, Lcom/amap/api/col/l3/as;->J:[F

    new-array v2, v2, [F

    .line 21
    iput-object v2, p0, Lcom/amap/api/col/l3/as;->q:[F

    const/4 v2, 0x4

    new-array v5, v2, [F

    .line 22
    iput-object v5, p0, Lcom/amap/api/col/l3/as;->r:[F

    new-array v2, v2, [F

    .line 23
    iput-object v2, p0, Lcom/amap/api/col/l3/as;->s:[F

    .line 24
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    .line 25
    iput-object v0, p0, Lcom/amap/api/col/l3/as;->u:Lcom/amap/api/col/l3/ar;

    .line 26
    iput-object v0, p0, Lcom/amap/api/col/l3/as;->v:Lcom/amap/api/col/l3/ar;

    .line 27
    iput v4, p0, Lcom/amap/api/col/l3/as;->w:I

    .line 28
    iput v4, p0, Lcom/amap/api/col/l3/as;->x:I

    const/16 v2, 0xc

    new-array v5, v2, [F

    .line 29
    iput-object v5, p0, Lcom/amap/api/col/l3/as;->y:[F

    const-string v5, "precision highp float;\nattribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\nuniform mat4 aMVPMatrix;//mvp\u77e9\u9635\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}"

    .line 30
    iput-object v5, p0, Lcom/amap/api/col/l3/as;->z:Ljava/lang/String;

    const-string v5, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(0,0,1,1.0);\n}"

    .line 31
    iput-object v5, p0, Lcom/amap/api/col/l3/as;->A:Ljava/lang/String;

    const/4 v5, -0x1

    .line 32
    iput v5, p0, Lcom/amap/api/col/l3/as;->B:I

    .line 33
    iput-object p2, p0, Lcom/amap/api/col/l3/as;->n:Lcom/amap/api/col/l3/at;

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/amap/api/col/l3/as;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_0
    iput-object v5, p0, Lcom/amap/api/col/l3/as;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getAnchorU()F

    move-result v5

    iput v5, p0, Lcom/amap/api/col/l3/as;->f:F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MultiPointOverlayOptions;->getAnchorV()F

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/as;->g:F

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->D:[F

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [F

    iget p1, p0, Lcom/amap/api/col/l3/as;->f:F

    sub-float/2addr p1, v1

    iget v5, p0, Lcom/amap/api/col/l3/as;->g:F

    sub-float/2addr v5, v1

    aget v1, v0, v4

    add-float/2addr v1, p1

    aput v1, v0, v4

    aget v1, v0, v3

    sub-float/2addr v1, v5

    aput v1, v0, v3

    const/4 v1, 0x6

    aget v3, v0, v1

    add-float/2addr v3, p1

    aput v3, v0, v1

    const/4 v1, 0x7

    aget v3, v0, v1

    sub-float/2addr v3, v5

    aput v3, v0, v1

    aget v1, v0, v2

    add-float/2addr v1, p1

    aput v1, v0, v2

    const/16 v1, 0xd

    aget v2, v0, v1

    sub-float/2addr v2, v5

    aput v2, v0, v1

    const/16 v1, 0x12

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/16 p1, 0x13

    aget v1, v0, p1

    sub-float/2addr v1, v5

    aput v1, v0, p1

    .line 36
    :goto_1
    new-instance p1, Lcom/amap/api/col/l3/aq;

    invoke-direct {p1, v0}, Lcom/amap/api/col/l3/aq;-><init>([F)V

    .line 37
    invoke-virtual {p2}, Lcom/amap/api/col/l3/at;->a()Lcom/amap/api/col/l3/dg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/aq;->a(Lcom/amap/api/col/l3/dg;)V

    .line 38
    iget-object p2, p0, Lcom/amap/api/col/l3/as;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/aq;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 39
    iget-object p2, p0, Lcom/amap/api/col/l3/as;->p:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a()Lcom/amap/api/col/l3/ar;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/MultiPointItem;

    .line 5
    invoke-virtual {v1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 6
    invoke-virtual {v1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 7
    invoke-virtual {v1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 8
    invoke-virtual {v1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 9
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/model/MultiPointItem;

    .line 11
    invoke-virtual {v5}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 12
    invoke-virtual {v5}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v6, v2, :cond_2

    move v2, v6

    :cond_2
    if-le v6, v3, :cond_3

    move v3, v6

    :cond_3
    if-ge v5, v4, :cond_4

    move v4, v5

    :cond_4
    if-le v5, v1, :cond_1

    move v1, v5

    goto :goto_0

    .line 13
    :cond_5
    new-instance v0, Lcom/amap/api/col/l3/ar;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/amap/api/col/l3/ar;-><init>(IIII)V

    return-object v0

    :cond_6
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/as;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/as;->H:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->n:Lcom/amap/api/col/l3/at;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/at;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addItem(Lcom/amap/api/maps/model/MultiPointItem;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    invoke-direct {p0}, Lcom/amap/api/col/l3/as;->b()V

    return-void
.end method

.method public final addItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/MultiPointItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 7
    iget-object v2, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    if-nez v2, :cond_1

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/MultiPointItem;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    if-nez v3, :cond_2

    .line 12
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 13
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getLatLng()Lcom/amap/api/maps/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 14
    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MultiPointItem;->setIPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    if-nez p1, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/amap/api/col/l3/as;->a()Lcom/amap/api/col/l3/ar;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 17
    new-instance v1, Lcom/amap/api/col/l3/au;

    invoke-direct {v1, p1}, Lcom/amap/api/col/l3/au;-><init>(Lcom/amap/api/col/l3/ar;)V

    iput-object v1, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_7

    .line 19
    iget-object v1, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    if-nez v1, :cond_5

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/MultiPointItem;

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v1}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 23
    iget-object v2, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    if-eqz v2, :cond_6

    .line 24
    iget-object v2, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/au;->a(Lcom/amap/api/maps/model/MultiPointItem;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/as;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string v0, "MultiPointOverlayDelegate"

    const-string v1, "addItems"

    .line 28
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final destroy(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/as;->remove(Z)V

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_0
    return-void
.end method

.method public final draw(Lcom/autonavi/amap/mapcore/MapConfig;[F[F)V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-boolean v0, v1, Lcom/amap/api/col/l3/as;->E:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->G:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/as;->G:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/aq;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/col/l3/aq;->b()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/amap/api/col/l3/as;->H:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/amap/api/col/l3/as;->H:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/amap/api/col/l3/as;->G:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/amap/api/col/l3/as$1;

    invoke-direct {v5, v1, v2, v3}, Lcom/amap/api/col/l3/as$1;-><init>(Lcom/amap/api/col/l3/as;Lcom/amap/api/col/l3/aq;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_3
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    .line 4
    :cond_4
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v11

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_7

    iget-object v2, v1, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v23, v0

    move/from16 v22, v11

    goto/16 :goto_3

    .line 8
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_9

    .line 9
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, v1, Lcom/amap/api/col/l3/as;->j:Lcom/amap/api/col/l3/ar;

    if-nez v4, :cond_8

    new-instance v4, Lcom/amap/api/col/l3/ar;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/amap/api/col/l3/ar;-><init>(IIII)V

    iput-object v4, v1, Lcom/amap/api/col/l3/as;->j:Lcom/amap/api/col/l3/ar;

    goto :goto_2

    :cond_8
    iget-object v4, v1, Lcom/amap/api/col/l3/as;->j:Lcom/amap/api/col/l3/ar;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/amap/api/col/l3/ar;->a(IIII)V

    .line 10
    :cond_9
    :goto_2
    iget-object v3, v1, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapPerPixelUnitLength()F

    move-result v3

    iput v3, v1, Lcom/amap/api/col/l3/as;->c:F

    .line 12
    iget-object v4, v1, Lcom/amap/api/col/l3/as;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iput v3, v1, Lcom/amap/api/col/l3/as;->d:F

    .line 13
    iget v3, v1, Lcom/amap/api/col/l3/as;->c:F

    iget-object v4, v1, Lcom/amap/api/col/l3/as;->b:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iput v3, v1, Lcom/amap/api/col/l3/as;->e:F

    .line 14
    iget v4, v1, Lcom/amap/api/col/l3/as;->d:F

    mul-float v4, v4, v3

    const/high16 v5, 0x41800000    # 16.0f

    mul-float v4, v4, v5

    float-to-double v4, v4

    .line 15
    iget v6, v1, Lcom/amap/api/col/l3/as;->d:F

    iget-object v7, v1, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    if-nez v7, :cond_a

    new-instance v7, Lcom/amap/api/col/l3/ar;

    invoke-direct {v7, v15, v14, v15, v14}, Lcom/amap/api/col/l3/ar;-><init>(IIII)V

    iput-object v7, v1, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    :cond_a
    iget-object v7, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    invoke-virtual {v7, v15, v15, v15, v15}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v7, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v8, v1, Lcom/amap/api/col/l3/as;->f:F

    iget v9, v1, Lcom/amap/api/col/l3/as;->g:F

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->q:[F

    invoke-static {v10, v15}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->q:[F

    const/16 v17, 0x0

    neg-float v12, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v16, v10

    move/from16 v18, v12

    invoke-static/range {v16 .. v21}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->s:[F

    aput v13, v10, v15

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->s:[F

    aput v13, v10, v14

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v12, 0x2

    aput v13, v10, v12

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v12, 0x3

    aput v13, v10, v12

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->r:[F

    neg-float v12, v6

    mul-float v12, v12, v8

    aput v12, v10, v15

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->r:[F

    mul-float v17, v3, v9

    aput v17, v10, v14

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/16 v18, 0x2

    aput v13, v10, v18

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v16, 0x3

    aput v18, v10, v16

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/16 v23, 0x0

    iget-object v13, v1, Lcom/amap/api/col/l3/as;->q:[F

    const/16 v25, 0x0

    iget-object v14, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/16 v27, 0x0

    move-object/from16 v22, v10

    move-object/from16 v24, v13

    move-object/from16 v26, v14

    invoke-static/range {v22 .. v27}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v13, v7, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget-object v14, v1, Lcom/amap/api/col/l3/as;->s:[F

    aget v14, v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v7, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    iget-object v15, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/16 v20, 0x1

    aget v15, v15, v20

    sub-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v7, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    move/from16 v22, v11

    iget-object v11, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/16 v21, 0x0

    aget v11, v11, v21

    add-float/2addr v15, v11

    float-to-int v11, v15

    iget v15, v7, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    move/from16 v23, v0

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/16 v20, 0x1

    aget v0, v0, v20

    sub-float/2addr v15, v0

    float-to-int v0, v15

    invoke-virtual {v10, v13, v14, v11, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    sub-float v8, v18, v8

    mul-float v6, v6, v8

    const/4 v8, 0x0

    aput v6, v0, v8

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v8, 0x1

    aput v17, v0, v8

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v8, 0x2

    const/4 v10, 0x0

    aput v10, v0, v8

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v8, 0x3

    aput v18, v0, v8

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/16 v25, 0x0

    iget-object v8, v1, Lcom/amap/api/col/l3/as;->q:[F

    const/16 v27, 0x0

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/16 v29, 0x0

    move-object/from16 v24, v0

    move-object/from16 v26, v8

    move-object/from16 v28, v10

    invoke-static/range {v24 .. v29}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget v10, v7, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget-object v11, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v13, 0x1

    aget v11, v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v8, 0x0

    aput v6, v0, v8

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    neg-float v3, v3

    sub-float v6, v18, v9

    mul-float v3, v3, v6

    const/4 v6, 0x1

    aput v3, v0, v6

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v6, 0x2

    const/4 v8, 0x0

    aput v8, v0, v6

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v6, 0x3

    aput v18, v0, v6

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/16 v25, 0x0

    iget-object v6, v1, Lcom/amap/api/col/l3/as;->q:[F

    const/16 v27, 0x0

    iget-object v8, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/16 v29, 0x0

    move-object/from16 v24, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v8

    invoke-static/range {v24 .. v29}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v8, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget-object v9, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v6, 0x0

    aput v12, v0, v6

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v6, 0x1

    aput v3, v0, v6

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v3, 0x2

    const/4 v6, 0x0

    aput v6, v0, v3

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v3, 0x3

    aput v18, v0, v3

    iget-object v8, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/amap/api/col/l3/as;->q:[F

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/amap/api/col/l3/as;->r:[F

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v6, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, v7, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget-object v7, v1, Lcom/amap/api/col/l3/as;->s:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Rect;->union(II)V

    iget-object v0, v1, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    iget-object v3, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v1, Lcom/amap/api/col/l3/as;->t:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/amap/api/col/l3/ar;->a(IIII)V

    .line 16
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    iget-object v3, v1, Lcom/amap/api/col/l3/as;->j:Lcom/amap/api/col/l3/ar;

    iget-object v6, v1, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    invoke-virtual {v0, v3, v6, v4, v5}, Lcom/amap/api/col/l3/au;->a(Lcom/amap/api/col/l3/ar;Ljava/util/Collection;D)V

    .line 17
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :goto_3
    :try_start_2
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->m:Lcom/autonavi/amap/mapcore/IPoint;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, v1, Lcom/amap/api/col/l3/as;->m:Lcom/autonavi/amap/mapcore/IPoint;

    .line 20
    :cond_b
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->m:Lcom/autonavi/amap/mapcore/IPoint;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 21
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 22
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 23
    :cond_c
    iget-object v0, v1, Lcom/amap/api/col/l3/as;->p:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/aq;

    .line 24
    iget-object v11, v1, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 25
    :try_start_3
    iget-object v2, v1, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    const/4 v10, 0x0

    :cond_d
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/MultiPointItem;

    .line 26
    invoke-virtual {v2}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 27
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, v1, Lcom/amap/api/col/l3/as;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    .line 28
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v4, v1, Lcom/amap/api/col/l3/as;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    if-eqz v0, :cond_e

    .line 29
    invoke-virtual {v0}, Lcom/amap/api/col/l3/aq;->b()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 30
    iget-object v4, v1, Lcom/amap/api/col/l3/as;->J:[F

    iget v5, v1, Lcom/amap/api/col/l3/as;->I:I

    mul-int v5, v5, v10

    const/16 v21, 0x0

    add-int/lit8 v5, v5, 0x0

    int-to-float v3, v3

    aput v3, v4, v5

    .line 31
    iget-object v3, v1, Lcom/amap/api/col/l3/as;->J:[F

    iget v4, v1, Lcom/amap/api/col/l3/as;->I:I

    mul-int v4, v4, v10

    const/4 v13, 0x1

    add-int/2addr v4, v13

    int-to-float v2, v2

    aput v2, v3, v4

    .line 32
    iget-object v2, v1, Lcom/amap/api/col/l3/as;->J:[F

    iget v3, v1, Lcom/amap/api/col/l3/as;->I:I

    mul-int v3, v3, v10

    const/4 v14, 0x2

    add-int/2addr v3, v14

    const/4 v15, 0x0

    aput v15, v2, v3

    add-int/lit8 v10, v10, 0x1

    .line 33
    sget v2, Lcom/amap/api/col/l3/aq;->a:I

    if-lt v10, v2, :cond_d

    .line 34
    iget-object v5, v1, Lcom/amap/api/col/l3/as;->J:[F

    iget v6, v1, Lcom/amap/api/col/l3/as;->d:F

    iget v7, v1, Lcom/amap/api/col/l3/as;->e:F

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, v23

    move/from16 v9, v22

    invoke-virtual/range {v2 .. v10}, Lcom/amap/api/col/l3/aq;->a([F[F[FFFFFI)V

    goto :goto_4

    :cond_e
    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    :cond_f
    const/16 v21, 0x0

    goto :goto_5

    .line 35
    :cond_10
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v10, :cond_11

    .line 36
    :try_start_4
    iget-object v5, v1, Lcom/amap/api/col/l3/as;->J:[F

    iget v6, v1, Lcom/amap/api/col/l3/as;->d:F

    iget v7, v1, Lcom/amap/api/col/l3/as;->e:F

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, v23

    move/from16 v9, v22

    invoke-virtual/range {v2 .. v10}, Lcom/amap/api/col/l3/aq;->a([F[F[FFFFFI)V

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    .line 37
    monitor-exit v11

    throw v0

    :catchall_1
    move-exception v0

    .line 38
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    const-string v2, "MultiPointOverlayDelegate"

    const-string v3, "draw"

    .line 39
    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/amap/api/col/l3/as;->F:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/l3/as;->F:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPointOverlay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/amap/api/col/l3/as;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/as;->C:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final onClick(Lcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/model/MultiPointItem;
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/as;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->u:Lcom/amap/api/col/l3/ar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/ar;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/amap/api/col/l3/ar;-><init>(IIII)V

    iput-object v0, p0, Lcom/amap/api/col/l3/as;->u:Lcom/amap/api/col/l3/ar;

    .line 4
    :cond_1
    iget v0, p0, Lcom/amap/api/col/l3/as;->c:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    .line 5
    iget-object v4, p0, Lcom/amap/api/col/l3/as;->u:Lcom/amap/api/col/l3/ar;

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int v6, v5, v0

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int v7, p1, v0

    add-int/2addr p1, v0

    invoke-virtual {v4, v6, v5, v7, p1}, Lcom/amap/api/col/l3/ar;->a(IIII)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_5

    .line 8
    iget-object v4, p0, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/MultiPointItem;

    .line 9
    invoke-virtual {v4}, Lcom/amap/api/maps/model/MultiPointItem;->getIPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 10
    iget-object v6, p0, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    if-nez v6, :cond_2

    .line 11
    monitor-exit p1

    return-object v1

    .line 12
    :cond_2
    iget-object v6, p0, Lcom/amap/api/col/l3/as;->v:Lcom/amap/api/col/l3/ar;

    if-nez v6, :cond_3

    .line 13
    new-instance v6, Lcom/amap/api/col/l3/ar;

    invoke-direct {v6, v2, v3, v2, v3}, Lcom/amap/api/col/l3/ar;-><init>(IIII)V

    iput-object v6, p0, Lcom/amap/api/col/l3/as;->v:Lcom/amap/api/col/l3/ar;

    .line 14
    :cond_3
    iget-object v6, p0, Lcom/amap/api/col/l3/as;->v:Lcom/amap/api/col/l3/ar;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    iget v8, v8, Lcom/amap/api/col/l3/ar;->a:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    iget v9, v9, Lcom/amap/api/col/l3/ar;->c:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    iget v10, v10, Lcom/amap/api/col/l3/ar;->b:I

    add-int/2addr v9, v10

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/amap/api/col/l3/as;->k:Lcom/amap/api/col/l3/ar;

    iget v10, v10, Lcom/amap/api/col/l3/ar;->d:I

    add-int/2addr v5, v10

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/amap/api/col/l3/ar;->a(IIII)V

    .line 15
    iget-object v5, p0, Lcom/amap/api/col/l3/as;->v:Lcom/amap/api/col/l3/ar;

    iget-object v6, p0, Lcom/amap/api/col/l3/as;->u:Lcom/amap/api/col/l3/ar;

    invoke-virtual {v5, v6}, Lcom/amap/api/col/l3/ar;->a(Lcom/amap/api/col/l3/ar;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 17
    :cond_5
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public final remove(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/as;->E:Z

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/as;->w:I

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/as;->x:I

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->a:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/as;->h:Ljava/util/List;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/amap/api/col/l3/au;->a()V

    .line 11
    iput-object v1, p0, Lcom/amap/api/col/l3/as;->i:Lcom/amap/api/col/l3/au;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->G:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 16
    iput-object v1, p0, Lcom/amap/api/col/l3/as;->G:Ljava/util/concurrent/ExecutorService;

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->H:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->p:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/aq;

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {v2}, Lcom/amap/api/col/l3/aq;->c()V

    goto :goto_0

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3/as;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8
    if-eqz p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->n:Lcom/amap/api/col/l3/at;

    if-eqz p1, :cond_9

    .line 24
    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3/at;->a(Lcom/amap/api/col/l3/as;)V

    .line 25
    iget-object p1, p0, Lcom/amap/api/col/l3/as;->n:Lcom/amap/api/col/l3/at;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/at;->d()V

    .line 26
    :cond_9
    iput-object v1, p0, Lcom/amap/api/col/l3/as;->n:Lcom/amap/api/col/l3/at;

    .line 27
    iput-object v1, p0, Lcom/amap/api/col/l3/as;->D:[F

    return-void
.end method

.method public final setAnchor(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/as;->f:F

    .line 2
    iput p2, p0, Lcom/amap/api/col/l3/as;->g:F

    .line 3
    invoke-direct {p0}, Lcom/amap/api/col/l3/as;->b()V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/as;->E:Z

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/amap/api/col/l3/as;->b()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3/as;->E:Z

    return-void
.end method
