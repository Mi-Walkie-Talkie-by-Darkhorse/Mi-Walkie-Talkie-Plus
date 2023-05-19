.class public final Lcom/amap/api/col/l3/da;
.super Ljava/lang/Object;
.source "PolygonDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/ct;


# static fields
.field private static A:I = 0x100

.field private static B:I = 0x14

.field private static G:D = 1.0E10

.field private static z:F = 4.0075016E7f


# instance fields
.field private C:I

.field private D:I

.field private E:Ljava/nio/FloatBuffer;

.field private F:Ljava/nio/FloatBuffer;

.field a:Lcom/autonavi/amap/mapcore/FPointBounds;

.field b:Landroid/graphics/Rect;

.field private c:Lcom/amap/api/col/l3/u;

.field private d:F

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:F

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/nio/FloatBuffer;

.field private p:Ljava/nio/FloatBuffer;

.field private q:I

.field private r:I

.field private s:Lcom/amap/api/maps/model/LatLngBounds;

.field private t:Z

.field private u:F

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/Object;

.field private x:F

.field private y:Lcom/amap/api/col/l3/dg$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/da;->d:F

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/amap/api/col/l3/da;->e:Z

    .line 4
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/da;->n:Ljava/util/List;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/amap/api/col/l3/da;->q:I

    iput v1, p0, Lcom/amap/api/col/l3/da;->r:I

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/amap/api/col/l3/da;->s:Lcom/amap/api/maps/model/LatLngBounds;

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/col/l3/da;->t:Z

    .line 10
    iput v0, p0, Lcom/amap/api/col/l3/da;->u:F

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/da;->v:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/da;->w:Ljava/lang/Object;

    .line 13
    iput-object v2, p0, Lcom/amap/api/col/l3/da;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    .line 14
    iput-object v2, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    .line 15
    iput v0, p0, Lcom/amap/api/col/l3/da;->x:F

    .line 16
    iput-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/da;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/da;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "PolygonDelegateImp"

    const-string v1, "create"

    .line 18
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    .line 55
    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 57
    iget-object v4, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4, v1}, Lcom/amap/api/col/l3/em;->b(Landroid/graphics/Rect;II)V

    move-object v1, v2

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    const/4 v2, 0x0

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    sub-int/2addr p1, v1

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    .line 63
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v2, v1, :cond_2

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/amap/api/col/l3/em;->a(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method private a(Lcom/amap/api/maps/model/CircleHoleOptions;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v5

    iget-wide v5, v5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4, v5, v6, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/16 v3, 0x43e

    new-array v3, v3, [F

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sget v12, Lcom/amap/api/col/l3/da;->z:F

    float-to-double v12, v12

    mul-double v4, v4, v12

    sget v12, Lcom/amap/api/col/l3/da;->A:I

    sget v13, Lcom/amap/api/col/l3/da;->B:I

    shl-int/2addr v12, v13

    int-to-double v12, v12

    div-double/2addr v4, v12

    double-to-float v4, v4

    float-to-double v4, v4

    div-double/2addr v6, v4

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v4

    mul-double v6, v6, v4

    .line 7
    iget-object v4, v0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v4}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v4

    .line 8
    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v12, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v12, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 9
    iget v5, v2, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    aput v5, v3, v12

    .line 10
    iget v5, v2, Landroid/graphics/PointF;->y:F

    const/4 v13, 0x1

    aput v5, v3, v13

    const/4 v5, 0x2

    const/4 v13, 0x0

    aput v13, v3, v5

    :goto_0
    const/16 v14, 0x169

    if-ge v12, v14, :cond_0

    int-to-double v14, v12

    mul-double v14, v14, v8

    div-double/2addr v14, v10

    .line 11
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v6

    .line 12
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v6

    .line 13
    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    add-double v8, v8, v16

    double-to-int v8, v8

    .line 14
    iget v9, v1, Landroid/graphics/Point;->y:I

    int-to-double v10, v9

    add-double/2addr v10, v14

    double-to-int v9, v10

    .line 15
    invoke-virtual {v4, v8, v9, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 16
    iget-object v10, v0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v10}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v10

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iput v8, v2, Landroid/graphics/PointF;->x:F

    .line 17
    iget-object v8, v0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v8}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    iput v8, v2, Landroid/graphics/PointF;->y:F

    add-int/lit8 v12, v12, 0x1

    mul-int/lit8 v9, v12, 0x3

    .line 18
    iget v10, v2, Landroid/graphics/PointF;->x:F

    aput v10, v3, v9

    add-int/lit8 v10, v9, 0x1

    .line 19
    aput v8, v3, v10

    add-int/2addr v9, v5

    .line 20
    aput v13, v3, v9

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide v10, 0x4066800000000000L    # 180.0

    goto :goto_0

    :cond_0
    const/16 v4, 0x16a

    .line 21
    iput v4, v0, Lcom/amap/api/col/l3/da;->C:I

    .line 22
    invoke-static {v3}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    .line 23
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 24
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 27
    new-array v0, v0, [F

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lcom/autonavi/amap/mapcore/IPoint;

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/amap/mapcore/IPoint;

    mul-int/lit8 v8, v5, 0x3

    .line 30
    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, p2

    int-to-float v9, v9

    aput v9, v0, v8

    add-int/lit8 v9, v8, 0x1

    .line 31
    iget v10, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, p3

    int-to-float v10, v10

    aput v10, v0, v9

    add-int/2addr v8, v1

    .line 32
    aput v7, v0, v8

    .line 33
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v3}, Lcom/amap/api/col/l3/da;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    .line 35
    array-length v5, p1

    if-nez v5, :cond_3

    .line 36
    sget-wide v5, Lcom/amap/api/col/l3/da;->G:D

    const-wide v8, 0x4202a05f20000000L    # 1.0E10

    cmpl-double p1, v5, v8

    if-nez p1, :cond_2

    const-wide v5, 0x4197d78400000000L    # 1.0E8

    .line 37
    sput-wide v5, Lcom/amap/api/col/l3/da;->G:D

    goto :goto_1

    .line 38
    :cond_2
    sput-wide v8, Lcom/amap/api/col/l3/da;->G:D

    .line 39
    :goto_1
    invoke-static {v3}, Lcom/amap/api/col/l3/da;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    .line 40
    :cond_3
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    .line 41
    array-length v5, p1

    const/4 v6, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v8, p1, v4

    mul-int/lit8 v9, v6, 0x3

    .line 42
    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, p2

    int-to-float v10, v10

    aput v10, v3, v9

    add-int/lit8 v10, v9, 0x1

    .line 43
    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p3

    int-to-float v8, v8

    aput v8, v3, v10

    add-int/2addr v9, v1

    .line 44
    aput v7, v3, v9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 45
    :cond_4
    iput v2, p0, Lcom/amap/api/col/l3/da;->C:I

    .line 46
    array-length p1, p1

    iput p1, p0, Lcom/amap/api/col/l3/da;->D:I

    .line 47
    invoke-static {v0}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    .line 48
    invoke-static {v3}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/da;->F:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z
    .locals 4

    const/4 v0, 0x1

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/da;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/em;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "PolygonDelegateImp"

    const-string v2, "isPolygonInPolygon"

    .line 70
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v0
.end method

.method private a(Lcom/autonavi/amap/mapcore/Rectangle;)Z
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->h()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/da;->x:F

    .line 50
    invoke-direct {p0}, Lcom/amap/api/col/l3/da;->f()V

    .line 51
    iget v0, p0, Lcom/amap/api/col/l3/da;->x:F

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(Landroid/graphics/Rect;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_2
    return v1
.end method

.method private static a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 9

    .line 72
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 73
    new-array v1, v1, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x2

    .line 74
    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    sget-wide v7, Lcom/amap/api/col/l3/da;->G:D

    mul-double v5, v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 75
    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    mul-double v5, v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Lcom/amap/api/col/l3/dv;

    invoke-direct {p0}, Lcom/amap/api/col/l3/dv;-><init>()V

    .line 77
    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/dv;->a([D)Lcom/amap/api/col/l3/ek;

    move-result-object p0

    .line 78
    iget v0, p0, Lcom/amap/api/col/l3/ek;->b:I

    .line 79
    new-array v3, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 80
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    aput-object v4, v3, v2

    .line 81
    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ek;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/col/l3/da;->G:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 82
    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ek;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/col/l3/da;->G:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private b(Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 2

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/da;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amap/api/col/l3/em;->b(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/da;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "PolygonDelegateImp"

    const-string v1, "isCircleInPolygon"

    .line 23
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->m(I)Lcom/amap/api/col/l3/df;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/dg$d;

    iput-object v0, p0, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v1, 0x400

    .line 2
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v1, 0xb90

    .line 3
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 7
    iget-object v2, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 8
    instance-of v3, v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v3, :cond_0

    .line 9
    move-object v4, v2

    check-cast v4, Lcom/amap/api/maps/model/PolygonHoleOptions;

    .line 10
    invoke-virtual {v4}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amap/api/col/l3/da;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v5

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/amap/api/col/l3/da;->a(Ljava/util/List;II)V

    goto :goto_1

    .line 11
    :cond_0
    instance-of v4, v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v4, :cond_1

    .line 12
    move-object v4, v2

    check-cast v4, Lcom/amap/api/maps/model/CircleHoleOptions;

    .line 13
    iget-object v5, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v5}, Lcom/amap/api/col/l3/u;->g()V

    .line 14
    invoke-direct {p0, v4}, Lcom/amap/api/col/l3/da;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    .line 15
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/amap/api/col/l3/da;->C:I

    if-lez v4, :cond_5

    .line 16
    iget-object v4, p0, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3/da;->d()V

    :cond_3
    if-eqz v3, :cond_4

    .line 18
    iget-object v5, p0, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    iget v6, p0, Lcom/amap/api/col/l3/da;->i:I

    iget-object v7, p0, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    iget v8, p0, Lcom/amap/api/col/l3/da;->g:F

    iget v9, p0, Lcom/amap/api/col/l3/da;->C:I

    iget-object v2, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v2}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/amap/api/col/l3/dw;->b(Lcom/amap/api/col/l3/dg$d;ILjava/nio/FloatBuffer;FI[F)V

    goto :goto_2

    .line 19
    :cond_4
    instance-of v2, v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v2, :cond_5

    .line 20
    iget-object v3, p0, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    iget v4, p0, Lcom/amap/api/col/l3/da;->i:I

    iget-object v5, p0, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/col/l3/da;->g:F

    iget v7, p0, Lcom/amap/api/col/l3/da;->C:I

    iget-object v2, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v2}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/amap/api/col/l3/dw;->c(Lcom/amap/api/col/l3/dg$d;ILjava/nio/FloatBuffer;FI[F)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->h()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1388

    if-le v1, v2, :cond_2

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 3
    iget v1, p0, Lcom/amap/api/col/l3/da;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43480000    # 200.0f

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/da;->u:F

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/da;->u:F

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3/da;->u:F

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    .line 5
    iget-object v4, v1, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    .line 6
    invoke-direct {v1, v2}, Lcom/amap/api/col/l3/da;->a(Lcom/autonavi/amap/mapcore/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v1, Lcom/amap/api/col/l3/da;->w:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v4, v1, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/amap/api/col/l3/em;->a([Lcom/autonavi/amap/mapcore/IPoint;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 10
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    iget-object v3, v1, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    invoke-static {v5}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v3, 0xff

    invoke-static {v3}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const/16 v7, 0x400

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const/16 v7, 0xb90

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v7, 0x200

    invoke-static {v7, v6, v3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 v7, 0x1e01

    const/16 v8, 0x1e00

    invoke-static {v7, v8, v8}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v1, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    iget-object v8, v1, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v9, v8, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v9, :cond_2

    move-object v10, v8

    check-cast v10, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v10}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/amap/api/col/l3/da;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v11

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v12

    invoke-direct {v1, v10, v11, v12}, Lcom/amap/api/col/l3/da;->a(Ljava/util/List;II)V

    goto :goto_2

    :cond_2
    instance-of v10, v8, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v10, :cond_3

    move-object v10, v8

    check-cast v10, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v11, v1, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v11}, Lcom/amap/api/col/l3/u;->g()V

    invoke-direct {v1, v10}, Lcom/amap/api/col/l3/da;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    :cond_3
    :goto_2
    iget-object v10, v1, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_7

    iget v10, v1, Lcom/amap/api/col/l3/da;->C:I

    if-lez v10, :cond_7

    iget-object v10, v1, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/da;->d()V

    :cond_5
    if-eqz v9, :cond_6

    iget-object v11, v1, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    const/4 v12, -0x1

    iget v13, v1, Lcom/amap/api/col/l3/da;->i:I

    iget-object v14, v1, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    iget v15, v1, Lcom/amap/api/col/l3/da;->g:F

    iget-object v8, v1, Lcom/amap/api/col/l3/da;->F:Ljava/nio/FloatBuffer;

    iget v9, v1, Lcom/amap/api/col/l3/da;->C:I

    iget v10, v1, Lcom/amap/api/col/l3/da;->D:I

    iget-object v5, v1, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v5}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v19

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-static/range {v11 .. v19}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/dg$d;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V

    goto :goto_3

    :cond_6
    instance-of v5, v8, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v5, :cond_7

    iget-object v8, v1, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    const/16 v5, 0x50

    const/16 v9, 0xc8

    invoke-static {v9, v5, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v9, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    iget-object v11, v1, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    const/high16 v12, 0x40a00000    # 5.0f

    iget v13, v1, Lcom/amap/api/col/l3/da;->C:I

    iget-object v9, v1, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {v9}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v14

    move v9, v5

    invoke-static/range {v8 .. v14}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/dg$d;IILjava/nio/FloatBuffer;FI[F)V

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v2, 0x205

    invoke-static {v2, v6, v3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/GLES20;->glStencilMask(I)V

    .line 11
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_15

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/da;->f()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v3, :cond_12

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    :goto_4
    add-int/lit8 v11, v7, -0x1

    if-ge v10, v11, :cond_d

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/amap/mapcore/IPoint;

    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v13, v9, Landroid/graphics/Point;->x:I

    sub-int v14, v12, v13

    int-to-float v14, v14

    iget v15, v1, Lcom/amap/api/col/l3/da;->u:F

    cmpl-float v14, v14, v15

    if-gez v14, :cond_b

    sub-int/2addr v12, v13

    int-to-float v12, v12

    neg-float v13, v15

    cmpg-float v12, v12, v13

    if-lez v12, :cond_b

    iget v12, v11, Landroid/graphics/Point;->y:I

    iget v13, v9, Landroid/graphics/Point;->y:I

    sub-int v14, v12, v13

    int-to-float v14, v14

    cmpl-float v14, v14, v15

    if-gez v14, :cond_b

    sub-int/2addr v12, v13

    int-to-float v12, v12

    neg-float v13, v15

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_a

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v12, 0x1

    :goto_6
    if-eqz v12, :cond_c

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v11

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_d
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    new-array v4, v4, [F

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v9, v7, [Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/amap/mapcore/IPoint;

    mul-int/lit8 v13, v10, 0x3

    iget v14, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v2

    int-to-float v14, v14

    aput v14, v4, v13

    add-int/lit8 v14, v13, 0x1

    iget v15, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v15, v0

    int-to-float v15, v15

    aput v15, v4, v14

    add-int/2addr v13, v3

    aput v12, v4, v13

    aput-object v11, v9, v10

    add-int/2addr v10, v6

    goto :goto_7

    :cond_e
    invoke-static {v9}, Lcom/amap/api/col/l3/da;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    array-length v10, v5

    if-nez v10, :cond_10

    sget-wide v10, Lcom/amap/api/col/l3/da;->G:D

    const-wide v13, 0x4202a05f20000000L    # 1.0E10

    cmpl-double v5, v10, v13

    if-nez v5, :cond_f

    const-wide v10, 0x4197d78400000000L    # 1.0E8

    sput-wide v10, Lcom/amap/api/col/l3/da;->G:D

    goto :goto_8

    :cond_f
    sput-wide v13, Lcom/amap/api/col/l3/da;->G:D

    :goto_8
    invoke-static {v9}, Lcom/amap/api/col/l3/da;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v5

    :cond_10
    array-length v9, v5

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [F

    array-length v10, v5

    const/4 v11, 0x0

    :goto_9
    if-ge v8, v10, :cond_11

    aget-object v13, v5, v8

    mul-int/lit8 v14, v11, 0x3

    iget v15, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v15, v2

    int-to-float v15, v15

    aput v15, v9, v14

    add-int/lit8 v15, v14, 0x1

    iget v13, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v13, v0

    int-to-float v13, v13

    aput v13, v9, v15

    add-int/2addr v14, v3

    aput v12, v9, v14

    add-int/2addr v11, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    iput v7, v1, Lcom/amap/api/col/l3/da;->q:I

    array-length v0, v5

    iput v0, v1, Lcom/amap/api/col/l3/da;->r:I

    invoke-static {v4}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/da;->o:Ljava/nio/FloatBuffer;

    invoke-static {v9}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/da;->p:Ljava/nio/FloatBuffer;

    .line 13
    :cond_12
    iget-object v0, v1, Lcom/amap/api/col/l3/da;->o:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/amap/api/col/l3/da;->p:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_15

    iget v0, v1, Lcom/amap/api/col/l3/da;->q:I

    if-lez v0, :cond_15

    iget v0, v1, Lcom/amap/api/col/l3/da;->r:I

    if-lez v0, :cond_15

    .line 14
    iget-object v0, v1, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/da;->d()V

    .line 16
    :cond_14
    iget-object v7, v1, Lcom/amap/api/col/l3/da;->y:Lcom/amap/api/col/l3/dg$d;

    iget v8, v1, Lcom/amap/api/col/l3/da;->h:I

    iget v9, v1, Lcom/amap/api/col/l3/da;->i:I

    iget-object v10, v1, Lcom/amap/api/col/l3/da;->o:Ljava/nio/FloatBuffer;

    iget v11, v1, Lcom/amap/api/col/l3/da;->g:F

    iget-object v12, v1, Lcom/amap/api/col/l3/da;->p:Ljava/nio/FloatBuffer;

    iget v13, v1, Lcom/amap/api/col/l3/da;->q:I

    iget v14, v1, Lcom/amap/api/col/l3/da;->r:I

    iget-object v0, v1, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    .line 17
    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v15

    .line 18
    invoke-static/range {v7 .. v15}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/dg$d;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V

    .line 19
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/da;->e()V

    .line 20
    iput-boolean v6, v1, Lcom/amap/api/col/l3/da;->t:Z

    :cond_16
    :goto_a
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/da;->t:Z

    return v0
.end method

.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 3
    invoke-static {v2, p1}, Lcom/amap/api/col/l3/em;->a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/da;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/em;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v1, "PolygonDelegateImp"

    const-string v2, "contains"

    .line 5
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final destroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->o:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 3
    iput-object v1, p0, Lcom/amap/api/col/l3/da;->o:Ljava/nio/FloatBuffer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->p:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcom/amap/api/col/l3/da;->p:Ljava/nio/FloatBuffer;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/da;->E:Ljava/nio/FloatBuffer;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->F:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    iput-object v1, p0, Lcom/amap/api/col/l3/da;->F:Ljava/nio/FloatBuffer;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->m:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    :cond_5
    iput-object v1, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    .line 17
    iput-object v1, p0, Lcom/amap/api/col/l3/da;->m:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "PolygonDelegateImp"

    const-string v2, "destroy"

    .line 18
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/da;->getId()Ljava/lang/String;

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

.method public final getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/da;->h:I

    return v0
.end method

.method public final getHoleOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    const-string v1, "Polygon"

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/da;->f:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->j:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/da;->i:I

    return v0
.end method

.method public final getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/da;->g:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/da;->d:F

    return v0
.end method

.method public final hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/da;->e:Z

    return v0
.end method

.method public final remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/da;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setFillColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/da;->h:I

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setHoleOptions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3/da;->m:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 7
    instance-of v3, v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    .line 9
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/da;->a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/em;->a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    iget-object v3, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_1
    instance-of v3, v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_2

    .line 12
    check-cast v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    .line 13
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/da;->b(Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/amap/api/col/l3/em;->a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 14
    iget-object v3, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const-string v1, "PolygonDelegateImp"

    const-string v2, "setHoleOptions"

    .line 16
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setPoints(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/da;->w:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3/da;->j:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/amap/api/col/l3/em;->a(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v4, v3}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget-object v6, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v9, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v11, v3

    invoke-interface/range {v6 .. v11}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v5, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6, v3}, Lcom/amap/api/col/l3/em;->b(Landroid/graphics/Rect;II)V

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x1

    if-le p1, v3, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v5, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-ne v5, v6, :cond_3

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v4, v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/da;->s:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object p1, p0, Lcom/amap/api/col/l3/da;->o:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->p:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/amap/api/col/l3/em;->a(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/col/l3/da;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_6
    iput v2, p0, Lcom/amap/api/col/l3/da;->q:I

    iput v2, p0, Lcom/amap/api/col/l3/da;->r:I

    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {p1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->m:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/da;->setHoleOptions(Ljava/util/List;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setStrokeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/da;->i:I

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/da;->g:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/col/l3/da;->e:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setZIndex(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/da;->d:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->g()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/da;->c:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
