.class public final Lcom/amap/api/col/l3/cj;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/cn;


# static fields
.field private static v:F = 4.0075016E7f

.field private static w:I = 0x100

.field private static x:I = 0x14

.field private static y:D = 1.0E10


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/col/l3/u;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:Z

.field private m:Lcom/autonavi/amap/mapcore/IPoint;

.field private n:Lcom/autonavi/amap/mapcore/FPoint;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Ljava/nio/FloatBuffer;

.field private t:Ljava/nio/FloatBuffer;

.field private u:Lcom/amap/api/col/l3/dg$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->a:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/api/col/l3/cj;->b:D

    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/cj;->c:F

    const/high16 v0, -0x1000000

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/cj;->d:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/cj;->e:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/amap/api/col/l3/cj;->f:F

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cj;->g:Z

    .line 9
    iput v0, p0, Lcom/amap/api/col/l3/cj;->k:I

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cj;->l:Z

    .line 11
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    .line 12
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->n:Lcom/autonavi/amap/mapcore/FPoint;

    .line 13
    iput-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/cj;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cj;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "CircleDelegateImp"

    const-string v1, "create"

    .line 15
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    sget v0, Lcom/amap/api/col/l3/cj;->v:F

    float-to-double v0, v0

    mul-double p0, p0, v0

    sget v0, Lcom/amap/api/col/l3/cj;->w:I

    sget v1, Lcom/amap/api/col/l3/cj;->x:I

    shl-int/2addr v0, v1

    int-to-double v0, v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    return-wide v0
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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 47
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

    .line 48
    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 50
    iget-object v4, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/IPoint;

    sub-int/2addr p1, v1

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    .line 55
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v2, v1, :cond_2

    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/amap/api/col/l3/em;->a(Ljava/util/List;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    return-object v0
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

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 24
    new-array v0, v0, [F

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lcom/autonavi/amap/mapcore/IPoint;

    .line 26
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

    .line 27
    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, p2

    int-to-float v9, v9

    aput v9, v0, v8

    add-int/lit8 v9, v8, 0x1

    .line 28
    iget v10, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, p3

    int-to-float v10, v10

    aput v10, v0, v9

    add-int/2addr v8, v1

    .line 29
    aput v7, v0, v8

    .line 30
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v3}, Lcom/amap/api/col/l3/cj;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    .line 32
    array-length v5, p1

    if-nez v5, :cond_3

    .line 33
    sget-wide v5, Lcom/amap/api/col/l3/cj;->y:D

    const-wide v8, 0x4202a05f20000000L    # 1.0E10

    cmpl-double p1, v5, v8

    if-nez p1, :cond_2

    const-wide v5, 0x4197d78400000000L    # 1.0E8

    .line 34
    sput-wide v5, Lcom/amap/api/col/l3/cj;->y:D

    goto :goto_1

    .line 35
    :cond_2
    sput-wide v8, Lcom/amap/api/col/l3/cj;->y:D

    .line 36
    :goto_1
    invoke-static {v3}, Lcom/amap/api/col/l3/cj;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    .line 37
    :cond_3
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [F

    .line 38
    array-length v5, p1

    const/4 v6, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v8, p1, v4

    mul-int/lit8 v9, v6, 0x3

    .line 39
    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, p2

    int-to-float v10, v10

    aput v10, v3, v9

    add-int/lit8 v10, v9, 0x1

    .line 40
    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, p3

    int-to-float v8, v8

    aput v8, v3, v10

    add-int/2addr v9, v1

    .line 41
    aput v7, v3, v9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 42
    :cond_4
    iput v2, p0, Lcom/amap/api/col/l3/cj;->q:I

    .line 43
    array-length p1, p1

    iput p1, p0, Lcom/amap/api/col/l3/cj;->r:I

    .line 44
    invoke-static {v0}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    .line 45
    invoke-static {v3}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cj;->t:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 7

    const/4 v0, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cj;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    float-to-double v1, v1

    .line 8
    invoke-virtual {p0}, Lcom/amap/api/col/l3/cj;->getRadius()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-double/2addr v3, v5

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "CircleDelegateImp"

    const-string v2, "isCircleInCircle"

    .line 9
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z
    .locals 3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/cj;->contains(Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "CircleDelegateImp"

    const-string v2, "isPolygonInCircle"

    .line 5
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v0
.end method

.method private static a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 9

    .line 11
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 12
    new-array v1, v1, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x2

    .line 13
    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    sget-wide v7, Lcom/amap/api/col/l3/cj;->y:D

    mul-double v5, v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 14
    aget-object v5, p0, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    mul-double v5, v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lcom/amap/api/col/l3/dv;

    invoke-direct {p0}, Lcom/amap/api/col/l3/dv;-><init>()V

    .line 16
    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/dv;->a([D)Lcom/amap/api/col/l3/ek;

    move-result-object p0

    .line 17
    iget v0, p0, Lcom/amap/api/col/l3/ek;->b:I

    .line 18
    new-array v3, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    :goto_1
    if-ge v2, v0, :cond_1

    .line 19
    new-instance v4, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v4}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    aput-object v4, v3, v2

    .line 20
    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ek;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/col/l3/cj;->y:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 21
    aget-object v4, v3, v2

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3/ek;->a(I)S

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v1, v5

    sget-wide v7, Lcom/amap/api/col/l3/cj;->y:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private b(Lcom/amap/api/maps/model/CircleHoleOptions;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/16 v2, 0x43e

    new-array v2, v2, [F

    .line 16
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Lcom/amap/api/col/l3/cj;->a(D)D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v5

    mul-double v3, v3, v5

    .line 17
    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object p1

    .line 18
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v5, v6, v1}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 19
    iget v5, v1, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    aput v5, v2, v6

    .line 20
    iget v5, v1, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x1

    aput v5, v2, v7

    const/4 v5, 0x2

    const/4 v7, 0x0

    aput v7, v2, v5

    :goto_0
    const/16 v8, 0x169

    if-ge v6, v8, :cond_0

    int-to-double v8, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v3

    .line 22
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v3

    .line 23
    iget v12, v0, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    add-double/2addr v12, v10

    double-to-int v10, v12

    .line 24
    iget v11, v0, Landroid/graphics/Point;->y:I

    int-to-double v11, v11

    add-double/2addr v11, v8

    double-to-int v8, v11

    .line 25
    invoke-virtual {p1, v10, v8, v1}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    .line 26
    iget-object v9, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v9}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v9

    sub-int/2addr v10, v9

    int-to-float v9, v10

    iput v9, v1, Landroid/graphics/PointF;->x:F

    .line 27
    iget-object v9, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v9}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v1, Landroid/graphics/PointF;->y:F

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v9, v6, 0x3

    .line 28
    iget v10, v1, Landroid/graphics/PointF;->x:F

    aput v10, v2, v9

    add-int/lit8 v10, v9, 0x1

    .line 29
    aput v8, v2, v10

    add-int/2addr v9, v5

    .line 30
    aput v7, v2, v9

    goto :goto_0

    :cond_0
    const/16 p1, 0x16a

    .line 31
    iput p1, p0, Lcom/amap/api/col/l3/cj;->q:I

    .line 32
    invoke-static {v2}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    .line 33
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 34
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 2
    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->m(I)Lcom/amap/api/col/l3/df;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3/dg$d;

    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/col/l3/cj;->k:I

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/cj;->j:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->p:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/cj;->setHoleOptions(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/amap/api/col/l3/cj;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_15

    iget-wide v2, v0, Lcom/amap/api/col/l3/cj;->b:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-lez v6, :cond_15

    iget-boolean v2, v0, Lcom/amap/api/col/l3/cj;->g:Z

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Lcom/amap/api/col/l3/cj;->l:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/16 v4, 0x43e

    new-array v4, v4, [F

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Lcom/amap/api/col/l3/cj;->a(D)D

    move-result-wide v5

    iget-wide v7, v0, Lcom/amap/api/col/l3/cj;->b:D

    mul-double v5, v5, v7

    iget-object v1, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    iget-object v7, v0, Lcom/amap/api/col/l3/cj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v9, v0, Lcom/amap/api/col/l3/cj;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v1, v8, v7, v9}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v7, v0, Lcom/amap/api/col/l3/cj;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    aput v8, v4, v2

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v4, v3

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v4, v7

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x169

    if-ge v9, v10, :cond_1

    int-to-double v10, v9

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double v10, v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v5

    iget-object v14, v0, Lcom/amap/api/col/l3/cj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v15, v14, Landroid/graphics/Point;->x:I

    int-to-double v2, v15

    add-double/2addr v2, v12

    double-to-int v2, v2

    iget v3, v14, Landroid/graphics/Point;->y:I

    int-to-double v12, v3

    add-double/2addr v12, v10

    double-to-int v3, v12

    iget-object v10, v0, Lcom/amap/api/col/l3/cj;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v1, v2, v3, v10}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v10, v0, Lcom/amap/api/col/l3/cj;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v11, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v11}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v11

    sub-int/2addr v2, v11

    int-to-float v2, v2

    iput v2, v10, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/amap/api/col/l3/cj;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v10, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v10}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v10

    sub-int/2addr v3, v10

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v2, v9, 0x3

    iget-object v3, v0, Lcom/amap/api/col/l3/cj;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    aput v10, v4, v2

    add-int/lit8 v10, v2, 0x1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v4, v10

    add-int/2addr v2, v7

    aput v8, v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x16a

    iput v1, v0, Lcom/amap/api/col/l3/cj;->k:I

    invoke-static {v4}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/col/l3/cj;->j:Ljava/nio/FloatBuffer;

    .line 3
    :cond_2
    iget-object v1, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    const/16 v3, 0xb90

    const/16 v4, 0x400

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v5, 0xff

    invoke-static {v5}, Landroid/opengl/GLES20;->glStencilMask(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v2, 0x200

    const/4 v6, 0x1

    invoke-static {v2, v6, v5}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 v2, 0x1e01

    const/16 v6, 0x1e00

    invoke-static {v2, v6, v6}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const/4 v2, 0x0

    :goto_1
    iget-object v6, v0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    iget-object v6, v0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v7, v6, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v7, :cond_3

    move-object v8, v6

    check-cast v8, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v8}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3/cj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v9

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/amap/api/col/l3/cj;->a(Ljava/util/List;II)V

    goto :goto_2

    :cond_3
    instance-of v8, v6, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v8, :cond_4

    move-object v8, v6

    check-cast v8, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v9, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v9}, Lcom/amap/api/col/l3/u;->g()V

    invoke-direct {v0, v8}, Lcom/amap/api/col/l3/cj;->b(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    :cond_4
    :goto_2
    iget-object v8, v0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_8

    iget v8, v0, Lcom/amap/api/col/l3/cj;->q:I

    if-lez v8, :cond_8

    iget-object v8, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/cj;->d()V

    :cond_6
    if-eqz v7, :cond_7

    iget-object v6, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    const/16 v17, -0x1

    iget v7, v0, Lcom/amap/api/col/l3/cj;->e:I

    iget-object v8, v0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3/cj;->getStrokeWidth()F

    move-result v20

    iget-object v9, v0, Lcom/amap/api/col/l3/cj;->t:Ljava/nio/FloatBuffer;

    iget v10, v0, Lcom/amap/api/col/l3/cj;->q:I

    iget v11, v0, Lcom/amap/api/col/l3/cj;->r:I

    iget-object v12, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v12}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v24

    move-object/from16 v16, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-static/range {v16 .. v24}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/dg$d;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V

    goto :goto_3

    :cond_7
    instance-of v6, v6, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v6, :cond_8

    iget-object v7, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    const/4 v8, -0x1

    const/4 v9, -0x1

    iget-object v10, v0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    const/high16 v11, 0x41200000    # 10.0f

    iget v12, v0, Lcom/amap/api/col/l3/cj;->q:I

    iget-object v6, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v6}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v13

    invoke-static/range {v7 .. v13}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/dg$d;IILjava/nio/FloatBuffer;FI[F)V

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v1, 0x205

    invoke-static {v1, v2, v5}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/GLES20;->glStencilMask(I)V

    .line 4
    :cond_a
    iget-object v1, v0, Lcom/amap/api/col/l3/cj;->j:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/amap/api/col/l3/cj;->k:I

    if-lez v1, :cond_d

    .line 5
    iget-object v1, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/cj;->d()V

    .line 7
    :cond_c
    iget-object v5, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    iget v6, v0, Lcom/amap/api/col/l3/cj;->e:I

    iget v7, v0, Lcom/amap/api/col/l3/cj;->d:I

    iget-object v8, v0, Lcom/amap/api/col/l3/cj;->j:Ljava/nio/FloatBuffer;

    iget v9, v0, Lcom/amap/api/col/l3/cj;->c:F

    iget v10, v0, Lcom/amap/api/col/l3/cj;->k:I

    iget-object v1, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    .line 8
    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v11

    .line 9
    invoke-static/range {v5 .. v11}, Lcom/amap/api/col/l3/dw;->a(Lcom/amap/api/col/l3/dg$d;IILjava/nio/FloatBuffer;FI[F)V

    :cond_d
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v2, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14

    :goto_4
    iget-object v3, v0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_14

    iget-object v3, v0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v4, v3, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v4, :cond_e

    move-object v5, v3

    check-cast v5, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/amap/api/col/l3/cj;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v6

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Lcom/amap/api/col/l3/cj;->a(Ljava/util/List;II)V

    goto :goto_5

    :cond_e
    instance-of v5, v3, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v5, :cond_f

    move-object v5, v3

    check-cast v5, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v6, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v6}, Lcom/amap/api/col/l3/u;->g()V

    invoke-direct {v0, v5}, Lcom/amap/api/col/l3/cj;->b(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    :cond_f
    :goto_5
    iget-object v5, v0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_13

    iget v5, v0, Lcom/amap/api/col/l3/cj;->q:I

    if-lez v5, :cond_13

    iget-object v5, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/cj;->d()V

    :cond_11
    if-eqz v4, :cond_12

    iget-object v6, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    iget v7, v0, Lcom/amap/api/col/l3/cj;->d:I

    iget-object v8, v0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    iget v9, v0, Lcom/amap/api/col/l3/cj;->c:F

    iget v10, v0, Lcom/amap/api/col/l3/cj;->q:I

    iget-object v3, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v3}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lcom/amap/api/col/l3/dw;->b(Lcom/amap/api/col/l3/dg$d;ILjava/nio/FloatBuffer;FI[F)V

    goto :goto_6

    :cond_12
    instance-of v3, v3, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v3, :cond_13

    iget-object v4, v0, Lcom/amap/api/col/l3/cj;->u:Lcom/amap/api/col/l3/dg$d;

    iget v5, v0, Lcom/amap/api/col/l3/cj;->d:I

    iget-object v6, v0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    iget v7, v0, Lcom/amap/api/col/l3/cj;->c:F

    iget v8, v0, Lcom/amap/api/col/l3/cj;->q:I

    iget-object v3, v0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {v3}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/amap/api/col/l3/dw;->c(Lcom/amap/api/col/l3/dg$d;ILjava/nio/FloatBuffer;FI[F)V

    :cond_13
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/amap/api/col/l3/cj;->l:Z

    :cond_15
    :goto_7
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cj;->l:Z

    return v0
.end method

.method public final contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 3
    invoke-static {v2, p1}, Lcom/amap/api/col/l3/em;->a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/amap/api/col/l3/cj;->b:D

    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result p1

    float-to-double v4, p1

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->a:Lcom/amap/api/maps/model/LatLng;

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/cj;->j:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->j:Ljava/nio/FloatBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->s:Ljava/nio/FloatBuffer;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/cj;->t:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 10
    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->t:Ljava/nio/FloatBuffer;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/cj;->p:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 14
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    :cond_4
    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->p:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "CircleDelegateImp"

    const-string v2, "destroy"

    .line 17
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
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

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cj;->getId()Ljava/lang/String;

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

.method public final getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cj;->e:I

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

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
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    const-string v1, "Circle"

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->h:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getRadius()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/amap/api/col/l3/cj;->b:D

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cj;->d:I

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
    iget v0, p0, Lcom/amap/api/col/l3/cj;->c:F

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
    iget v0, p0, Lcom/amap/api/col/l3/cj;->f:F

    return v0
.end method

.method public final hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

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
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cj;->g:Z

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
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/cj;->a:Lcom/amap/api/maps/model/LatLng;

    .line 2
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 3
    invoke-direct {p0}, Lcom/amap/api/col/l3/cj;->e()V

    :cond_0
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
    iput p1, p0, Lcom/amap/api/col/l3/cj;->e:I

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setHoleOptions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3/cj;->p:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/BaseHoleOptions;

    .line 7
    instance-of v2, v1, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_1

    .line 8
    check-cast v1, Lcom/amap/api/maps/model/PolygonHoleOptions;

    .line 9
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/cj;->a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3/em;->a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_1
    instance-of v2, v1, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v2, :cond_2

    .line 12
    check-cast v1, Lcom/amap/api/maps/model/CircleHoleOptions;

    .line 13
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/cj;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/amap/api/col/l3/em;->a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    iget-object v2, p0, Lcom/amap/api/col/l3/cj;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "PolygonDelegateImp"

    const-string v1, "setHoleOptions"

    .line 15
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRadius(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/amap/api/col/l3/cj;->b:D

    .line 2
    invoke-direct {p0}, Lcom/amap/api/col/l3/cj;->e()V

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/cj;->d:I

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

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
    iput p1, p0, Lcom/amap/api/col/l3/cj;->c:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

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
    iput-boolean p1, p0, Lcom/amap/api/col/l3/cj;->g:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

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
    iput p1, p0, Lcom/amap/api/col/l3/cj;->f:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->g()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/cj;->i:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
