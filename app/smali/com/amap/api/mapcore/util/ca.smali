.class public Lcom/amap/api/mapcore/util/ca;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ce;


# static fields
.field private static v:F

.field private static w:I

.field private static x:I

.field private static y:D


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/mapcore/util/l;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:Z

.field private m:Lcom/autonavi/amap/mapcore/IPoint;

.field private n:Lcom/autonavi/amap/mapcore/FPoint;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Ljava/nio/FloatBuffer;

.field private t:Ljava/nio/FloatBuffer;

.field private u:Lcom/amap/api/mapcore/util/cx$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x4c18dfc2    # 4.0075016E7f

    sput v0, Lcom/amap/api/mapcore/util/ca;->v:F

    const/16 v0, 0x100

    sput v0, Lcom/amap/api/mapcore/util/ca;->w:I

    const/16 v0, 0x14

    sput v0, Lcom/amap/api/mapcore/util/ca;->x:I

    const-wide v0, 0x4202a05f20000000L    # 1.0E10

    sput-wide v0, Lcom/amap/api/mapcore/util/ca;->y:D

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/ca;->b:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/ca;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/util/ca;->d:I

    iput v2, p0, Lcom/amap/api/mapcore/util/ca;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/ca;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ca;->g:Z

    iput v2, p0, Lcom/amap/api/mapcore/util/ca;->k:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/ca;->l:Z

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CircleDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(D)F
    .locals 5

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sget v2, Lcom/amap/api/mapcore/util/ca;->v:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    sget v2, Lcom/amap/api/mapcore/util/ca;->w:I

    sget v3, Lcom/amap/api/mapcore/util/ca;->x:I

    shl-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ne v3, v4, :cond_2

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v2, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v7, v9, v0}, Lcom/amap/api/mapcore/util/ee;->a(Ljava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    return-object v7
.end method

.method private a(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    const-wide v8, 0x4202a05f20000000L    # 1.0E10

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v3, v0, [F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    mul-int/lit8 v6, v1, 0x3

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v7, p2

    int-to-float v7, v7

    aput v7, v3, v6

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v7, p3

    int-to-float v7, v7

    aput v7, v3, v6

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    aput v10, v3, v6

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/amap/api/mapcore/util/ca;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_2

    sget-wide v0, Lcom/amap/api/mapcore/util/ca;->y:D

    cmpl-double v0, v0, v8

    if-nez v0, :cond_3

    const-wide v0, 0x4197d78400000000L    # 1.0E8

    sput-wide v0, Lcom/amap/api/mapcore/util/ca;->y:D

    :goto_2
    invoke-static {v4}, Lcom/amap/api/mapcore/util/ca;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    :cond_2
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [F

    array-length v6, v0

    move v1, v2

    :goto_3
    if-ge v2, v6, :cond_4

    aget-object v7, v0, v2

    mul-int/lit8 v8, v1, 0x3

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v9, p2

    int-to-float v9, v9

    aput v9, v5, v8

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    iget v7, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v7, p3

    int-to-float v7, v7

    aput v7, v5, v8

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aput v10, v5, v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sput-wide v8, Lcom/amap/api/mapcore/util/ca;->y:D

    goto :goto_2

    :cond_4
    array-length v1, v4

    iput v1, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    array-length v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ca;->r:I

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->t:Ljava/nio/FloatBuffer;

    goto/16 :goto_0
.end method

.method private a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ca;->contains(Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    const-string v2, "CircleDelegateImp"

    const-string v3, "isPolygonInCircle"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 10

    const/4 v0, 0x0

    array-length v2, p0

    mul-int/lit8 v1, v2, 0x2

    new-array v3, v1, [D

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v4, v1, 0x2

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v6, v5

    sget-wide v8, Lcom/amap/api/mapcore/util/ca;->y:D

    mul-double/2addr v6, v8

    aput-wide v6, v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v6, v5

    sget-wide v8, Lcom/amap/api/mapcore/util/ca;->y:D

    mul-double/2addr v6, v8

    aput-wide v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/util/dn;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/dn;-><init>()V

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/dn;->a([D)Lcom/amap/api/mapcore/util/ec;

    move-result-object v1

    iget v2, v1, Lcom/amap/api/mapcore/util/ec;->b:I

    new-array v4, v2, [Lcom/autonavi/amap/mapcore/IPoint;

    :goto_1
    if-ge v0, v2, :cond_1

    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ec;->a(I)S

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    aget-wide v6, v3, v6

    sget-wide v8, Lcom/amap/api/mapcore/util/ca;->y:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    aget-object v5, v4, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ec;->a(I)S

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v3, v6

    sget-wide v8, Lcom/amap/api/mapcore/util/ca;->y:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private b(D)D
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/ca;->a(D)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private b(Lcom/amap/api/maps/model/CircleHoleOptions;)Z
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->getRadius()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CircleDelegateImp"

    const-string v3, "isCircleInCircle"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->t(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cx$d;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v2, 0x1e00

    const/16 v13, 0xff

    const/4 v1, -0x1

    const/4 v12, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v11

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {v10}, Landroid/opengl/GLES20;->glClearStencil(I)V

    invoke-static {v13}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const/16 v0, 0x400

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {v10, v10, v10, v10}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v0, 0x200

    invoke-static {v0, v12, v13}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const/16 v0, 0x1e01

    invoke-static {v0, v2, v2}, Landroid/opengl/GLES20;->glStencilOp(III)V

    move v9, v10

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v2, v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    invoke-virtual {v11}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/util/List;II)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/cx$d;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ca;->f()V

    :cond_2
    instance-of v2, v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    iget v2, p0, Lcom/amap/api/mapcore/util/ca;->e:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->getStrokeWidth()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ca;->t:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    iget v7, p0, Lcom/amap/api/mapcore/util/ca;->r:I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v8}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->f()V

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/ca;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    goto :goto_1

    :cond_5
    instance-of v0, v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    const/high16 v4, 0x41200000    # 10.0f

    iget v5, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v6

    move v2, v1

    move v7, v10

    move v8, v10

    invoke-static/range {v0 .. v8}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[FII)V

    goto :goto_2

    :cond_6
    invoke-static {v12, v12, v12, v12}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v0, 0x205

    invoke-static {v0, v12, v13}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glStencilMask(I)V

    :cond_7
    return-void
.end method

.method private h()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    const/16 v0, 0x400

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v0, 0xb90

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v10

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v9, v1

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v2, v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/PolygonHoleOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/amap/api/mapcore/util/ca;->a(Ljava/util/List;II)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/cx$d;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ca;->f()V

    :cond_2
    instance-of v2, v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    iget v2, p0, Lcom/amap/api/mapcore/util/ca;->d:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/util/ca;->c:F

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ca;->t:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    iget v7, p0, Lcom/amap/api/mapcore/util/ca;->r:I

    iget-object v8, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v8}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/amap/api/mapcore/util/do;->b(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/amap/api/maps/model/CircleHoleOptions;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->f()V

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/ca;->a(Lcom/amap/api/maps/model/CircleHoleOptions;)V

    goto :goto_1

    :cond_5
    instance-of v0, v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    iget v2, p0, Lcom/amap/api/mapcore/util/ca;->d:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/util/ca;->c:F

    iget v5, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v6}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[F)V

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/CircleHoleOptions;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v1}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/16 v0, 0x43e

    new-array v3, v0, [F

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v4, v5}, Lcom/amap/api/mapcore/util/ca;->b(D)D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleHoleOptions;->getRadius()D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v6

    iget v0, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v6, v0, v7, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x0

    iget v7, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v7, v3, v0

    const/4 v0, 0x1

    iget v7, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v7, v3, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput v7, v3, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v7, 0x169

    if-ge v0, v7, :cond_0

    int-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    iget v7, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v7

    add-double/2addr v10, v12

    double-to-int v7, v10

    iget v10, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v10

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v9, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v9}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iput v7, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v7}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v7

    sub-int v7, v8, v7

    int-to-float v7, v7

    iput v7, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v7, v7, 0x3

    iget v8, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v8, v3, v7

    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    iget v8, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v8, v3, v7

    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    aput v8, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v3

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/ca;->q:I

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ca;->l:Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_1

    const/16 v1, 0x43e

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore/util/ca;->b(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/ca;->b:D

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v4}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ca;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ca;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v4, v5, v6, v7}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v5, v1, v0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v5, v1, v13

    const/4 v5, 0x2

    aput v12, v1, v5

    :goto_0
    const/16 v5, 0x169

    if-ge v0, v5, :cond_0

    int-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ca;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v10, v5

    add-double/2addr v8, v10

    double-to-int v5, v8

    iget-object v8, p0, Lcom/amap/api/mapcore/util/ca;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v8, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v8, v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    invoke-virtual {v4, v5, v6, v7}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v8, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v8}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v8

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v5, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v7}, Lcom/amap/api/mapcore/util/l;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, v5, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x3

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ca;->n:Lcom/autonavi/amap/mapcore/FPoint;

    iget v6, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aput v12, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/ca;->k:I

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ee;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    :cond_1
    return v13
.end method

.method public c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ca;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ca;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->b()Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ca;->g()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/util/ca;->k:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cx$d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ca;->f()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->u:Lcom/amap/api/mapcore/util/cx$d;

    iget v1, p0, Lcom/amap/api/mapcore/util/ca;->e:I

    iget v2, p0, Lcom/amap/api/mapcore/util/ca;->d:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/amap/api/mapcore/util/ca;->c:F

    iget v5, p0, Lcom/amap/api/mapcore/util/ca;->k:I

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v6}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v6

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/amap/api/mapcore/util/do;->a(Lcom/amap/api/mapcore/util/cx$d;IILjava/nio/FloatBuffer;FI[FII)V

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ca;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ca;->l:Z

    goto :goto_0
.end method

.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BaseHoleOptions;

    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/amap/api/maps/model/BaseHoleOptions;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/ca;->b:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ca;->l:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->s:Ljava/nio/FloatBuffer;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->t:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->t:Ljava/nio/FloatBuffer;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->p:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->p:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CircleDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "destroy erro"

    const-string v1, "CircleDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method e()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/util/ca;->k:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->p:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ca;->setHoleOptions(Ljava/util/List;)V

    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/ca;->e:I

    return v0
.end method

.method public getHoleOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const-string v1, "Circle"

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/ca;->b:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/ca;->d:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/ca;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/ca;->f:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ca;->g:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ca;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ca;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->e()V

    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/ca;->e:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setHoleOptions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BaseHoleOptions;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ca;->p:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BaseHoleOptions;

    instance-of v2, v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/amap/api/maps/model/PolygonHoleOptions;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ca;->a(Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/ee;->a(Ljava/util/List;Lcom/amap/api/maps/model/PolygonHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PolygonDelegateImp"

    const-string v2, "setHoleOptions"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    instance-of v2, v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/amap/api/maps/model/CircleHoleOptions;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ca;->b(Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/amap/api/mapcore/util/ee;->a(Ljava/util/List;Lcom/amap/api/maps/model/CircleHoleOptions;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ca;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setRadius(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-wide p1, p0, Lcom/amap/api/mapcore/util/ca;->b:D

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ca;->e()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/ca;->d:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/ca;->c:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ca;->g:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/ca;->f:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ca;->i:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method
