.class public final Lcom/amap/api/col/l3/ci;
.super Ljava/lang/Object;
.source "ArcDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/cm;


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

.field private m:Lcom/amap/api/col/l3/u;

.field private n:[F

.field private o:I

.field private p:Z

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/u;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/ci;->h:F

    const/high16 v0, -0x1000000

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/ci;->i:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/ci;->j:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ci;->k:Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/ci;->o:I

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/col/l3/ci;->p:Z

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/amap/api/col/l3/ci;->q:D

    .line 9
    iput-wide v0, p0, Lcom/amap/api/col/l3/ci;->r:D

    .line 10
    iput-wide v0, p0, Lcom/amap/api/col/l3/ci;->s:D

    .line 11
    iput-object p1, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/ci;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ci;->l:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ArcDelegateImp"

    const-string v1, "create"

    .line 13
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private a(DDDD)D
    .locals 3

    sub-double/2addr p3, p7

    .line 5
    iget-wide p7, p0, Lcom/amap/api/col/l3/ci;->q:D

    div-double/2addr p3, p7

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p7, v0

    if-lez v2, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    move-result-wide p3

    .line 7
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->asin(D)D

    move-result-wide p3

    const-wide/16 p7, 0x0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, p3, p7

    if-ltz v2, :cond_1

    cmpg-double p7, p5, p1

    if-gez p7, :cond_3

    .line 8
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    sub-double p3, v0, p1

    goto :goto_0

    :cond_1
    cmpg-double p7, p5, p1

    if-gez p7, :cond_2

    sub-double p3, v0, p3

    goto :goto_0

    :cond_2
    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr p3, p1

    :cond_3
    :goto_0
    return-wide p3
.end method

.method private a(Lcom/autonavi/ae/gmap/GLMapState;DDD)Lcom/autonavi/amap/mapcore/FPoint;
    .locals 4

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/ci;->q:D

    mul-double v0, v0, v2

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    neg-double p2, p2

    iget-wide v2, p0, Lcom/amap/api/col/l3/ci;->q:D

    mul-double p2, p2, v2

    add-double/2addr p4, v0

    double-to-int p4, p4

    add-double/2addr p6, p2

    double-to-int p2, p6

    .line 3
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object p3

    .line 4
    invoke-virtual {p1, p4, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    return-object p3
.end method

.method private d()Z
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    iget-object v0, v10, Lcom/amap/api/col/l3/ci;->e:Lcom/amap/api/maps/model/LatLng;

    const/4 v11, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v10, Lcom/amap/api/col/l3/ci;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_a

    iget-object v0, v10, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_a

    iget-boolean v0, v10, Lcom/amap/api/col/l3/ci;->k:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    :try_start_0
    iput-boolean v11, v10, Lcom/amap/api/col/l3/ci;->p:Z

    .line 3
    iget-object v0, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    .line 4
    iget-object v1, v10, Lcom/amap/api/col/l3/ci;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, v10, Lcom/amap/api/col/l3/ci;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v5

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, v10, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v12, v7, v12

    mul-double v2, v2, v12

    iget-wide v12, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v12, v7

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v5, v7

    mul-double v12, v12, v5

    sub-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v12, 0x1

    cmpg-double v5, v1, v3

    if-gez v5, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v13, 0x0

    if-nez v1, :cond_3

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 5
    iput-object v2, v10, Lcom/amap/api/col/l3/ci;->n:[F

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    .line 7
    iget-object v3, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    iget-object v4, v10, Lcom/amap/api/col/l3/ci;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    aput-object v2, v1, v11

    .line 8
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    .line 9
    iget-object v14, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    iget-object v3, v10, Lcom/amap/api/col/l3/ci;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-object/from16 v19, v2

    invoke-interface/range {v14 .. v19}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    aput-object v2, v1, v12

    .line 10
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v2

    .line 11
    iget-object v15, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    iget-object v3, v10, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-object/from16 v20, v2

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 12
    iget-object v3, v10, Lcom/amap/api/col/l3/ci;->n:[F

    mul-int/lit8 v4, v2, 0x3

    aget-object v5, v1, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    .line 13
    aget-object v6, v1, v2

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x2

    .line 14
    aput v13, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_2
    iput v0, v10, Lcom/amap/api/col/l3/ci;->o:I

    return v12

    .line 16
    :cond_3
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v14

    iget-object v3, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    iget-object v1, v10, Lcom/amap/api/col/l3/ci;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v8, v14

    invoke-interface/range {v3 .. v8}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v8

    iget-object v15, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    iget-object v1, v10, Lcom/amap/api/col/l3/ci;->f:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-object/from16 v20, v8

    invoke-interface/range {v15 .. v20}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v15

    iget-object v1, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    iget-object v2, v10, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object/from16 v16, v1

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-object/from16 v21, v15

    invoke-interface/range {v16 .. v21}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v14, Landroid/graphics/Point;->x:I

    int-to-double v6, v1

    iget v1, v14, Landroid/graphics/Point;->y:I

    int-to-double v4, v1

    iget v1, v8, Landroid/graphics/Point;->x:I

    int-to-double v2, v1

    iget v1, v8, Landroid/graphics/Point;->y:I

    int-to-double v11, v1

    iget v1, v15, Landroid/graphics/Point;->x:I

    move-object/from16 v19, v14

    int-to-double v13, v1

    iget v1, v15, Landroid/graphics/Point;->y:I

    move-object/from16 v20, v8

    int-to-double v8, v1

    sub-double v21, v8, v4

    mul-double v23, v11, v11

    mul-double v25, v4, v4

    sub-double v27, v23, v25

    mul-double v29, v2, v2

    add-double v27, v27, v29

    mul-double v31, v6, v6

    sub-double v27, v27, v31

    mul-double v27, v27, v21

    sub-double v33, v11, v4

    mul-double v35, v8, v8

    sub-double v37, v25, v35

    add-double v37, v37, v31

    mul-double v39, v13, v13

    sub-double v37, v37, v39

    mul-double v37, v37, v33

    add-double v27, v27, v37

    sub-double v37, v2, v6

    const-wide/high16 v41, 0x4000000000000000L    # 2.0

    mul-double v43, v37, v41

    mul-double v43, v43, v21

    sub-double v45, v13, v6

    mul-double v47, v45, v41

    mul-double v47, v47, v33

    sub-double v43, v43, v47

    move-wide/from16 v47, v13

    div-double v13, v27, v43

    sub-double v29, v29, v31

    add-double v29, v29, v23

    sub-double v29, v29, v25

    mul-double v29, v29, v45

    sub-double v31, v31, v39

    add-double v31, v31, v25

    sub-double v31, v31, v35

    mul-double v31, v31, v37

    add-double v29, v29, v31

    mul-double v33, v33, v41

    mul-double v33, v33, v45

    mul-double v21, v21, v41

    mul-double v21, v21, v37

    sub-double v33, v33, v21

    move-wide/from16 v21, v11

    div-double v11, v29, v33

    sub-double v23, v6, v13

    mul-double v23, v23, v23

    sub-double v25, v4, v11

    mul-double v25, v25, v25

    add-double v23, v23, v25

    move-wide/from16 v25, v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v10, Lcom/amap/api/col/l3/ci;->q:D

    move-object/from16 v1, p0

    move-wide/from16 v23, v25

    move-wide v2, v13

    move-wide/from16 v25, v4

    move-wide v4, v11

    move-wide/from16 v27, v8

    move-wide/from16 v8, v25

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3/ci;->a(DDDD)D

    move-result-wide v1

    iput-wide v1, v10, Lcom/amap/api/col/l3/ci;->r:D

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v4, v11

    move-wide/from16 v6, v23

    move-wide/from16 v8, v21

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3/ci;->a(DDDD)D

    move-result-wide v21

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v4, v11

    move-wide/from16 v6, v47

    move-wide/from16 v8, v27

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3/ci;->a(DDDD)D

    move-result-wide v1

    iput-wide v1, v10, Lcom/amap/api/col/l3/ci;->s:D

    iget-wide v3, v10, Lcom/amap/api/col/l3/ci;->r:D

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v7, v3, v1

    if-gez v7, :cond_5

    cmpl-double v7, v21, v3

    if-lez v7, :cond_4

    cmpg-double v3, v21, v1

    if-ltz v3, :cond_7

    :cond_4
    sub-double/2addr v1, v5

    iput-wide v1, v10, Lcom/amap/api/col/l3/ci;->s:D

    goto :goto_2

    :cond_5
    cmpl-double v7, v21, v1

    if-lez v7, :cond_6

    cmpg-double v7, v21, v3

    if-ltz v7, :cond_7

    :cond_6
    add-double/2addr v1, v5

    iput-wide v1, v10, Lcom/amap/api/col/l3/ci;->s:D

    :cond_7
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual/range {v20 .. v20}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v15}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-static {v13, v14, v11, v12}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v9

    .line 17
    iget-wide v1, v10, Lcom/amap/api/col/l3/ci;->s:D

    iget-wide v3, v10, Lcom/amap/api/col/l3/ci;->r:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double v1, v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    double-to-int v11, v1

    .line 18
    iget-wide v1, v10, Lcom/amap/api/col/l3/ci;->s:D

    iget-wide v3, v10, Lcom/amap/api/col/l3/ci;->r:D

    sub-double/2addr v1, v3

    int-to-double v3, v11

    div-double v12, v1, v3

    add-int/lit8 v14, v11, 0x1

    .line 19
    new-array v15, v14, [Lcom/autonavi/amap/mapcore/FPoint;

    mul-int/lit8 v1, v14, 0x3

    .line 20
    new-array v1, v1, [F

    iput-object v1, v10, Lcom/amap/api/col/l3/ci;->n:[F

    const/4 v7, 0x0

    :goto_3
    if-gt v7, v11, :cond_9

    if-ne v7, v11, :cond_8

    .line 21
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v8

    .line 22
    iget-object v1, v10, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    iget-object v2, v10, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-wide v2, v3

    move-wide v4, v5

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/col/l3/u;->a(DDLcom/autonavi/amap/mapcore/FPoint;)V

    .line 23
    aput-object v8, v15, v7

    move/from16 v21, v11

    move v11, v7

    goto :goto_4

    .line 24
    :cond_8
    iget-wide v1, v10, Lcom/amap/api/col/l3/ci;->r:D

    int-to-double v3, v7

    mul-double v3, v3, v12

    add-double/2addr v3, v1

    iget-wide v5, v9, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v1, v9, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-wide/from16 v19, v1

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v21, v11

    move v11, v7

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lcom/amap/api/col/l3/ci;->a(Lcom/autonavi/ae/gmap/GLMapState;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v15, v11

    .line 25
    :goto_4
    iget-wide v1, v10, Lcom/amap/api/col/l3/ci;->r:D

    int-to-double v3, v11

    mul-double v3, v3, v12

    add-double/2addr v3, v1

    iget-wide v5, v9, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v7, v9, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lcom/amap/api/col/l3/ci;->a(Lcom/autonavi/ae/gmap/GLMapState;DDD)Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    aput-object v1, v15, v11

    .line 26
    iget-object v1, v10, Lcom/amap/api/col/l3/ci;->n:[F

    mul-int/lit8 v7, v11, 0x3

    aget-object v2, v15, v11

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v1, v7

    add-int/lit8 v2, v7, 0x1

    .line 27
    aget-object v3, v15, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aput v3, v1, v2

    add-int/lit8 v7, v7, 0x2

    const/4 v2, 0x0

    .line 28
    aput v2, v1, v7

    add-int/lit8 v7, v11, 0x1

    move/from16 v11, v21

    goto :goto_3

    .line 29
    :cond_9
    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 30
    iput v14, v10, Lcom/amap/api/col/l3/ci;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "ArcDelegateImp"

    const-string v2, "calMapFPoint"

    .line 31
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return v1

    :cond_a
    :goto_5
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/amap/api/col/l3/ci;->e:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->f:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/amap/api/col/l3/ci;->k:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/col/l3/ci;->d()Z

    .line 3
    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->n:[F

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/amap/api/col/l3/ci;->o:I

    if-lez v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    iget v3, v0, Lcom/amap/api/col/l3/ci;->h:F

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v6

    .line 5
    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    .line 6
    iget-object v4, v0, Lcom/amap/api/col/l3/ci;->n:[F

    array-length v5, v4

    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    .line 7
    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->e()I

    move-result v7

    iget v8, v0, Lcom/amap/api/col/l3/ci;->b:F

    iget v9, v0, Lcom/amap/api/col/l3/ci;->c:F

    iget v10, v0, Lcom/amap/api/col/l3/ci;->d:F

    iget v11, v0, Lcom/amap/api/col/l3/ci;->a:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    .line 8
    invoke-interface {v1}, Lcom/amap/api/col/l3/u;->v()[F

    move-result-object v16

    .line 9
    invoke-static/range {v4 .. v16}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineByTextureID([FIFIFFFFFZZZ[F)V

    .line 10
    :cond_1
    iput-boolean v2, v0, Lcom/amap/api/col/l3/ci;->p:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/amap/api/col/l3/ci;->f:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public final c(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/ci;->p:Z

    return v0
.end method

.method public final destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/l3/ci;->e:Lcom/amap/api/maps/model/LatLng;

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/ci;->f:Lcom/amap/api/maps/model/LatLng;

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/ci;->g:Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ArcDelegateImp"

    const-string v2, "destroy"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
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

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ci;->getId()Ljava/lang/String;

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

.method public final getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/ci;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    const-string v1, "Arc"

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3/ci;->l:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/ci;->l:Ljava/lang/String;

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
    iget v0, p0, Lcom/amap/api/col/l3/ci;->i:I

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
    iget v0, p0, Lcom/amap/api/col/l3/ci;->h:F

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
    iget v0, p0, Lcom/amap/api/col/l3/ci;->j:F

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
    iget-boolean v0, p0, Lcom/amap/api/col/l3/ci;->k:Z

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
    iget-object v0, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ci;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/u;->a(Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method

.method public final setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/ci;->i:I

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3/ci;->a:F

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3/ci;->b:F

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3/ci;->c:F

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/amap/api/col/l3/ci;->d:F

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

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
    iput p1, p0, Lcom/amap/api/col/l3/ci;->h:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

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
    iput-boolean p1, p0, Lcom/amap/api/col/l3/ci;->k:Z

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

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
    iput p1, p0, Lcom/amap/api/col/l3/ci;->j:F

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    invoke-interface {p1}, Lcom/amap/api/col/l3/u;->g()V

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/ci;->m:Lcom/amap/api/col/l3/u;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V

    return-void
.end method
