.class public Lcom/amap/api/mapcore/util/bz;
.super Ljava/lang/Object;
.source "ArcDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cd;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:Lcom/amap/api/maps/model/LatLng;

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:F

.field private i:I

.field private j:F

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/amap/api/mapcore/util/l;

.field private n:[F

.field private o:I

.field private p:Z

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/l;)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->h:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/bz;->k:Z

    iput v1, p0, Lcom/amap/api/mapcore/util/bz;->o:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/bz;->p:Z

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bz;->q:D

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bz;->r:D

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bz;->s:D

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bz;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bz;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ArcDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(DDDD)D
    .locals 7

    sub-double v0, p3, p7

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bz;->q:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    cmpg-double v2, p5, p1

    if-gez v2, :cond_1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    cmpg-double v2, p5, p1

    if-gez v2, :cond_3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double v0, v2, v0

    goto :goto_0

    :cond_3
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private a(Lcom/autonavi/ae/gmap/GLMapState;DDD)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 6

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bz;->q:D

    mul-double/2addr v0, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/bz;->q:D

    mul-double/2addr v2, v4

    add-double/2addr v0, p4

    double-to-int v0, v0

    add-double/2addr v2, p6

    double-to-int v1, v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    return-object v2
.end method

.method private e()Z
    .locals 8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    iget-object v4, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v6, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()Lcom/autonavi/amap/mapcore/DPoint;
    .locals 30

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v10, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v9 .. v14}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v0, v2

    move-wide/from16 v26, v0

    iget v2, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v0, v2

    move-wide/from16 v28, v0

    iget v2, v14, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v2, v2

    iget v4, v14, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v4, v4

    move-object/from16 v0, v20

    iget v6, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v6, v6

    move-object/from16 v0, v20

    iget v9, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v9

    sub-double v12, v10, v28

    mul-double v16, v4, v4

    mul-double v18, v28, v28

    sub-double v16, v16, v18

    mul-double v18, v2, v2

    add-double v16, v16, v18

    mul-double v18, v26, v26

    sub-double v16, v16, v18

    mul-double v12, v12, v16

    sub-double v16, v4, v28

    mul-double v18, v28, v28

    mul-double v22, v10, v10

    sub-double v18, v18, v22

    mul-double v22, v26, v26

    add-double v18, v18, v22

    mul-double v22, v6, v6

    sub-double v18, v18, v22

    mul-double v16, v16, v18

    add-double v12, v12, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    sub-double v18, v2, v26

    mul-double v16, v16, v18

    sub-double v18, v10, v28

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v22, v6, v26

    mul-double v18, v18, v22

    sub-double v22, v4, v28

    mul-double v18, v18, v22

    sub-double v16, v16, v18

    div-double v22, v12, v16

    sub-double v12, v6, v26

    mul-double v16, v2, v2

    mul-double v18, v26, v26

    sub-double v16, v16, v18

    mul-double v18, v4, v4

    add-double v16, v16, v18

    mul-double v18, v28, v28

    sub-double v16, v16, v18

    mul-double v12, v12, v16

    sub-double v16, v2, v26

    mul-double v18, v26, v26

    mul-double v24, v6, v6

    sub-double v18, v18, v24

    mul-double v24, v28, v28

    add-double v18, v18, v24

    mul-double v24, v10, v10

    sub-double v18, v18, v24

    mul-double v16, v16, v18

    add-double v12, v12, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    sub-double v18, v4, v28

    mul-double v16, v16, v18

    sub-double v18, v6, v26

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    sub-double v24, v10, v28

    mul-double v18, v18, v24

    sub-double v24, v2, v26

    mul-double v18, v18, v24

    sub-double v16, v16, v18

    div-double v24, v12, v16

    sub-double v12, v26, v22

    sub-double v16, v26, v22

    mul-double v12, v12, v16

    sub-double v16, v28, v24

    sub-double v18, v28, v24

    mul-double v16, v16, v18

    add-double v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/amap/api/mapcore/util/bz;->q:D

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v29}, Lcom/amap/api/mapcore/util/bz;->a(DDDD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/amap/api/mapcore/util/bz;->r:D

    move-object/from16 v21, p0

    move-wide/from16 v26, v2

    move-wide/from16 v28, v4

    invoke-direct/range {v21 .. v29}, Lcom/amap/api/mapcore/util/bz;->a(DDDD)D

    move-result-wide v2

    move-object/from16 v21, p0

    move-wide/from16 v26, v6

    move-wide/from16 v28, v10

    invoke-direct/range {v21 .. v29}, Lcom/amap/api/mapcore/util/bz;->a(DDDD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/mapcore/util/bz;->r:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/mapcore/util/bz;->r:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    sub-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    :cond_1
    :goto_0
    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v14}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-static/range {v22 .. v25}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    return-object v2

    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/mapcore/util/bz;->r:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/amap/api/mapcore/util/bz;->s:D

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public b()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/bz;->k:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/bz;->p:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v9

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bz;->e()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/autonavi/amap/mapcore/FPoint;

    array-length v0, v8

    mul-int/2addr v0, v7

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x0

    aput-object v6, v8, v0

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x1

    aput-object v6, v8, v0

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x2

    aput-object v6, v8, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    mul-int/lit8 v2, v0, 0x3

    aget-object v3, v8, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-object v3, v8, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v0, v8

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->o:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bz;->f()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v10

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bz;->s:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bz;->r:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int v11, v0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bz;->s:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bz;->r:D

    sub-double/2addr v0, v2

    int-to-double v2, v11

    div-double v12, v0, v2

    add-int/lit8 v0, v11, 0x1

    new-array v14, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    array-length v0, v14

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-gt v8, v11, :cond_5

    if-ne v8, v11, :cond_4

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v6

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/util/l;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    aput-object v6, v14, v8

    :goto_3
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bz;->r:D

    int-to-double v2, v8

    mul-double/2addr v2, v12

    add-double/2addr v2, v0

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/util/bz;->a(Lcom/autonavi/ae/gmap/GLMapState;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    aput-object v0, v14, v8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    mul-int/lit8 v1, v8, 0x3

    aget-object v2, v14, v8

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v14, v8

    iget v2, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    mul-int/lit8 v1, v8, 0x3

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_4
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bz;->r:D

    int-to-double v2, v8

    mul-double/2addr v2, v12

    add-double/2addr v2, v0

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v6, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/mapcore/util/bz;->a(Lcom/autonavi/ae/gmap/GLMapState;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    aput-object v0, v14, v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "ArcDelegateImp"

    const-string v2, "calMapFPoint"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    array-length v0, v14

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->o:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public c()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/bz;->k:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bz;->b()Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/bz;->o:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/bz;->h:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bz;->n:[F

    array-length v1, v1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/l;->d()I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/bz;->b:F

    iget v5, p0, Lcom/amap/api/mapcore/util/bz;->c:F

    iget v6, p0, Lcom/amap/api/mapcore/util/bz;->d:F

    iget v7, p0, Lcom/amap/api/mapcore/util/bz;->a:F

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v11}, Lcom/amap/api/mapcore/util/l;->u()[F

    move-result-object v12

    move v11, v9

    invoke-static/range {v0 .. v12}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    :cond_2
    iput-boolean v10, p0, Lcom/amap/api/mapcore/util/bz;->p:Z

    goto :goto_0
.end method

.method public c(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/bz;->p:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/bz;->e:Lcom/amap/api/maps/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bz;->f:Lcom/amap/api/maps/model/LatLng;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bz;->g:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ArcDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "destroy erro"

    const-string v1, "ArcDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bz;->getId()Ljava/lang/String;

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

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    const-string v1, "Arc"

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bz;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/bz;->i:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/bz;->h:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/bz;->j:F

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

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/bz;->k:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bz;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v1, 0x437f0000    # 255.0f

    iput p1, p0, Lcom/amap/api/mapcore/util/bz;->i:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->a:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->b:F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->c:F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/bz;->d:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

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

    iput p1, p0, Lcom/amap/api/mapcore/util/bz;->h:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

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

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/bz;->k:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

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

    iput p1, p0, Lcom/amap/api/mapcore/util/bz;->j:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bz;->m:Lcom/amap/api/mapcore/util/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->setRunLowFrame(Z)V

    return-void
.end method
