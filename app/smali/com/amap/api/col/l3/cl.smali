.class public final Lcom/amap/api/col/l3/cl;
.super Ljava/lang/Object;
.source "GroundOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/co;


# instance fields
.field a:Lcom/autonavi/amap/mapcore/FPointBounds;

.field b:[F

.field c:I

.field d:Lcom/amap/api/col/l3/dg$b;

.field private e:Lcom/amap/api/col/l3/u;

.field private f:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:F

.field private i:F

.field private j:Lcom/amap/api/maps/model/LatLngBounds;

.field private k:F

.field private l:F

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Ljava/lang/String;

.field private s:Ljava/nio/FloatBuffer;

.field private t:Ljava/nio/FloatBuffer;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cl;->m:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/cl;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/cl;->o:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/cl;->p:F

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/cl;->q:F

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cl;->v:Z

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/col/l3/cl;->w:Z

    .line 10
    iput-object v0, p0, Lcom/amap/api/col/l3/cl;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/cl;->x:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3/cl;->y:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v0, 0x2710

    .line 14
    iput v0, p0, Lcom/amap/api/col/l3/cl;->c:I

    .line 15
    iput-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/cl;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cl;->r:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "create"

    .line 17
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cl;->p:F

    float-to-double v0, v0

    mul-double p6, p6, v0

    sub-double/2addr p2, p6

    .line 2
    iget p6, p0, Lcom/amap/api/col/l3/cl;->q:F

    const/high16 p7, 0x3f800000    # 1.0f

    sub-float/2addr p7, p6

    float-to-double p6, p7

    mul-double p8, p8, p6

    sub-double/2addr p8, p4

    .line 3
    iget p4, p0, Lcom/amap/api/col/l3/cl;->k:F

    neg-float p4, p4

    float-to-double p4, p4

    const-wide p6, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double p4, p4, p6

    .line 4
    iget-wide p6, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, p2

    .line 5
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, p8

    add-double/2addr v0, v2

    add-double/2addr p6, v0

    double-to-int p6, p6

    iput p6, p10, Landroid/graphics/Point;->x:I

    .line 6
    iget-wide p6, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double p8, p8, v0

    .line 7
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    sub-double/2addr p8, p2

    add-double/2addr p6, p8

    double-to-int p1, p6

    iput p1, p10, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cl;->w:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->f()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->e()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->g()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private e()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3/cl;->h:F

    float-to-double v1, v1

    const-wide v3, 0x41584dae328f5c29L    # 6371000.79

    iget-wide v5, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v7, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v5, v5, v7

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    mul-double v5, v5, v7

    div-double/2addr v1, v5

    .line 4
    iget v0, p0, Lcom/amap/api/col/l3/cl;->i:F

    float-to-double v3, v0

    const-wide v5, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v3, v5

    .line 5
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v6, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v8, p0, Lcom/amap/api/col/l3/cl;->q:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    float-to-double v10, v8

    mul-double v10, v10, v3

    sub-double/2addr v6, v10

    iget-object v8, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v8, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v8, p0, Lcom/amap/api/col/l3/cl;->p:F

    float-to-double v12, v8

    mul-double v12, v12, v1

    sub-double/2addr v10, v12

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    iget-object v7, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget v10, p0, Lcom/amap/api/col/l3/cl;->q:F

    float-to-double v10, v10

    mul-double v10, v10, v3

    add-double/2addr v7, v10

    iget-object v3, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v10, p0, Lcom/amap/api/col/l3/cl;->p:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    mul-double v9, v9, v1

    add-double/2addr v3, v9

    invoke-direct {v6, v7, v8, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v5, v6}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->g()V

    return-void
.end method

.method private f()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    .line 3
    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    .line 4
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/amap/api/col/l3/cl;->q:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget-wide v7, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v7, v3

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget v7, p0, Lcom/amap/api/col/l3/cl;->p:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v9, v5

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    .line 5
    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x41584dae328f5c29L    # 6371000.79

    mul-double v2, v2, v6

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    mul-double v2, v2, v8

    mul-double v2, v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/col/l3/cl;->h:F

    .line 6
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v0, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v0

    mul-double v2, v2, v6

    mul-double v2, v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/amap/api/col/l3/cl;->i:F

    .line 7
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->g()V

    return-void
.end method

.method private declared-synchronized g()V
    .locals 21

    move-object/from16 v12, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x10

    :try_start_1
    new-array v0, v0, [F

    .line 3
    iput-object v0, v12, Lcom/amap/api/col/l3/cl;->b:[F

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v13

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v14

    .line 7
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v15

    .line 8
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 9
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v13}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v14}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 11
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v12, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v3, v3, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2, v3, v4, v15}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 12
    iget v1, v12, Lcom/amap/api/col/l3/cl;->k:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 13
    iget v1, v13, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-double v9, v1

    .line 14
    iget v1, v13, Landroid/graphics/Point;->y:I

    iget v2, v14, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-double v7, v1

    .line 15
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v11

    .line 16
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget v3, v12, Lcom/amap/api/col/l3/cl;->p:F

    float-to-double v3, v3

    mul-double v3, v3, v9

    add-double/2addr v1, v3

    iput-wide v1, v11, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 17
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v12, Lcom/amap/api/col/l3/cl;->q:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double v3, v3, v7

    sub-double/2addr v1, v3

    iput-wide v1, v11, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v18, v9

    move-wide/from16 v9, v16

    move-object/from16 v20, v11

    move-object v11, v0

    .line 18
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3/cl;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v18

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v13

    .line 19
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3/cl;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v18

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v14

    .line 20
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3/cl;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    move-object v11, v15

    .line 21
    invoke-direct/range {v1 .. v11}, Lcom/amap/api/col/l3/cl;->a(Lcom/autonavi/amap/mapcore/DPoint;DDDDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 22
    invoke-virtual/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 23
    :cond_1
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 24
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 25
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x2

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 26
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 27
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x4

    iget v3, v13, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 28
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x5

    iget v3, v13, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 29
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x6

    iget v3, v13, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 30
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/4 v2, 0x7

    iget v3, v13, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 31
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0x8

    iget v3, v14, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 32
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0x9

    iget v3, v14, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 33
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0xa

    iget v3, v14, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 34
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0xb

    iget v3, v14, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 35
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0xc

    iget v3, v15, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 36
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0xd

    iget v3, v15, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 37
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0xe

    iget v3, v15, Landroid/graphics/Point;->x:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 38
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    const/16 v2, 0xf

    iget v3, v15, Landroid/graphics/Point;->y:I

    iget v4, v12, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 39
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_2

    .line 40
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v12, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, v12, Lcom/amap/api/col/l3/cl;->b:[F

    iget-object v2, v12, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/em;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v12, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    .line 42
    :goto_0
    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 43
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 44
    invoke-virtual {v13}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 45
    invoke-virtual {v14}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iput p1, p0, Lcom/amap/api/col/l3/cl;->p:F

    .line 9
    iput p2, p0, Lcom/amap/api/col/l3/cl;->q:F

    .line 10
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/amap/api/col/l3/cl;->m:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    if-eqz v1, :cond_b

    :cond_0
    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->b:[F

    if-nez v1, :cond_2

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/cl;->d()Z

    .line 4
    :cond_2
    iget-boolean v1, v0, Lcom/amap/api/col/l3/cl;->v:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 5
    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 7
    iget v4, v0, Lcom/amap/api/col/l3/cl;->u:I

    if-nez v4, :cond_3

    new-array v4, v2, [I

    aput v3, v4, v3

    .line 8
    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 9
    aget v4, v4, v3

    iput v4, v0, Lcom/amap/api/col/l3/cl;->u:I

    goto :goto_0

    :cond_3
    new-array v5, v2, [I

    aput v4, v5, v3

    .line 10
    invoke-static {v2, v5, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 11
    :goto_0
    iget v4, v0, Lcom/amap/api/col/l3/cl;->u:I

    invoke-static {v4, v1, v3}, Lcom/amap/api/col/l3/em;->a(ILandroid/graphics/Bitmap;Z)I

    .line 12
    :cond_4
    iput-boolean v2, v0, Lcom/amap/api/col/l3/cl;->v:Z

    .line 13
    :cond_5
    iget v1, v0, Lcom/amap/api/col/l3/cl;->h:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_6

    iget v1, v0, Lcom/amap/api/col/l3/cl;->i:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_6

    return-void

    .line 14
    :cond_6
    iget v1, v0, Lcom/amap/api/col/l3/cl;->u:I

    iget-object v9, v0, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    iget-object v15, v0, Lcom/amap/api/col/l3/cl;->t:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/amap/api/col/l3/cl;->b:[F

    if-eqz v4, :cond_a

    if-eqz v9, :cond_a

    if-nez v15, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v4, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/amap/api/col/l3/df;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, v0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    if-eqz v4, :cond_9

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/amap/api/col/l3/u;->m(I)Lcom/amap/api/col/l3/df;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3/dg$b;

    iput-object v4, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    :cond_9
    iget-object v4, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v4, v4, Lcom/amap/api/col/l3/df;->d:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v16, 0xbe2

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v4, 0x303

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget v4, v0, Lcom/amap/api/col/l3/cl;->o:F

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v5, v4, v17

    mul-float v6, v4, v17

    mul-float v7, v4, v17

    invoke-static {v5, v6, v7, v4}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    const/16 v14, 0xde1

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v1, v1, Lcom/amap/api/col/l3/dg$b;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v4, v1, Lcom/amap/api/col/l3/dg$b;->b:I

    const/4 v5, 0x4

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v1, v1, Lcom/amap/api/col/l3/dg$b;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v10, v1, Lcom/amap/api/col/l3/dg$b;->c:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v1, 0x8

    const/16 v4, 0xde1

    move v14, v1

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v1, v1, Lcom/amap/api/col/l3/dg$b;->g:I

    iget-object v5, v0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-interface {v5}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v5

    iget v6, v0, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-interface {v6}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v6

    iget v7, v0, Lcom/amap/api/col/l3/cl;->c:I

    div-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-interface {v7}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v7

    iget v8, v0, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-interface {v8}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v8

    iget v9, v0, Lcom/amap/api/col/l3/cl;->c:I

    rem-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v1, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v1, v1, Lcom/amap/api/col/l3/dg$b;->h:I

    iget v5, v0, Lcom/amap/api/col/l3/cl;->o:F

    mul-float v6, v5, v17

    mul-float v7, v5, v17

    mul-float v8, v5, v17

    invoke-static {v1, v6, v7, v8, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v1, v1, Lcom/amap/api/col/l3/dg$b;->a:I

    iget-object v5, v0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-interface {v5}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v5

    invoke-static {v1, v2, v3, v5, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x6

    const/4 v5, 0x4

    invoke-static {v1, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v1, v1, Lcom/amap/api/col/l3/dg$b;->b:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v1, v0, Lcom/amap/api/col/l3/cl;->d:Lcom/amap/api/col/l3/dg$b;

    iget v1, v1, Lcom/amap/api/col/l3/dg$b;->c:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 15
    :cond_a
    :goto_1
    iput-boolean v2, v0, Lcom/amap/api/col/l3/cl;->w:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cl;->w:Z

    return v0
.end method

.method public final destroy()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/cl;->remove()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5
    iput-object v1, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->t:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    iput-object v1, p0, Lcom/amap/api/col/l3/cl;->t:Ljava/nio/FloatBuffer;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 11
    iput-object v1, p0, Lcom/amap/api/col/l3/cl;->s:Ljava/nio/FloatBuffer;

    .line 12
    :cond_2
    iput-object v1, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    .line 13
    iput-object v1, p0, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "GroundOverlayDelegateImp"

    const-string v2, "destroy"

    .line 14
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
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

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cl;->getId()Ljava/lang/String;

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

.method public final getBearing()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cl;->k:F

    return v0
.end method

.method public final getBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getHeight()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cl;->i:F

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const-string v1, "GroundOverlay"

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/cl;->r:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getTransparency()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cl;->n:F

    return v0
.end method

.method public final getWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cl;->h:F

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
    iget v0, p0, Lcom/amap/api/col/l3/cl;->l:F

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
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cl;->m:Z

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
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/cl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setBearing(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/cl;->k:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iput p1, p0, Lcom/amap/api/col/l3/cl;->k:F

    .line 3
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->g()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setDimensions(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cl;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/cl;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/amap/api/col/l3/cl;->h:F

    .line 3
    iput p1, p0, Lcom/amap/api/col/l3/cl;->i:F

    .line 4
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->e()V

    goto :goto_0

    .line 5
    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/cl;->h:F

    .line 6
    iput p1, p0, Lcom/amap/api/col/l3/cl;->i:F

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setDimensions(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/amap/api/col/l3/cl;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/cl;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/l3/cl;->i:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 9
    iput p1, p0, Lcom/amap/api/col/l3/cl;->h:F

    .line 10
    iput p2, p0, Lcom/amap/api/col/l3/cl;->i:F

    .line 11
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->e()V

    goto :goto_0

    .line 12
    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/cl;->h:F

    .line 13
    iput p2, p0, Lcom/amap/api/col/l3/cl;->i:F

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3/cl;->f:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float p1, p1

    int-to-float v3, v3

    div-float/2addr p1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    const/4 v4, 0x1

    aput v1, v2, v4

    const/4 v4, 0x2

    aput p1, v2, v4

    const/4 v4, 0x3

    aput v1, v2, v4

    const/4 v1, 0x4

    aput p1, v2, v1

    const/4 p1, 0x5

    aput v3, v2, p1

    const/4 p1, 0x6

    aput v3, v2, p1

    const/4 p1, 0x7

    aput v3, v2, p1

    invoke-static {v2}, Lcom/amap/api/col/l3/em;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/cl;->t:Ljava/nio/FloatBuffer;

    .line 4
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3/cl;->v:Z

    if-eqz p1, :cond_3

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/col/l3/cl;->v:Z

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/cl;->g:Lcom/amap/api/maps/model/LatLng;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->e()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/cl;->j:Lcom/amap/api/maps/model/LatLngBounds;

    .line 2
    invoke-direct {p0}, Lcom/amap/api/col/l3/cl;->f()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setTransparency(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/col/l3/cl;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/cl;->o:F

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

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
    iput-boolean p1, p0, Lcom/amap/api/col/l3/cl;->m:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

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
    iput p1, p0, Lcom/amap/api/col/l3/cl;->l:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->g()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/cl;->e:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
