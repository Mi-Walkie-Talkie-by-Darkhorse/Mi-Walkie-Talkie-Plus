.class public final Lcom/amap/api/col/l3/kp;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/amap/api/col/l3/kp;


# instance fields
.field a:I

.field b:J

.field private d:Lcom/amap/api/col/l3/km;

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/kp;->e:J

    iput-wide v0, p0, Lcom/amap/api/col/l3/kp;->f:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/l3/kp;->a:I

    iput-wide v0, p0, Lcom/amap/api/col/l3/kp;->b:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/col/l3/kp;
    .locals 2

    const-class v0, Lcom/amap/api/col/l3/kp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/kp;->c:Lcom/amap/api/col/l3/kp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3/kp;

    invoke-direct {v1}, Lcom/amap/api/col/l3/kp;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3/kp;->c:Lcom/amap/api/col/l3/kp;

    :cond_0
    sget-object v1, Lcom/amap/api/col/l3/kp;->c:Lcom/amap/api/col/l3/kp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Lcom/amap/api/col/l3/km;)Lcom/amap/api/col/l3/km;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3/km;)Lcom/amap/api/col/l3/km;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/amap/api/col/l3/kp;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/col/l3/kp;->b:J

    iget-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_0
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3/kp;->b:J

    iget-object v2, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-static {v2}, Lcom/amap/api/col/l3/kw;->a(Lcom/amap/api/col/l3/km;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3/kw;->a(Lcom/amap/api/col/l3/km;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v6, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const/high16 v8, 0x43960000    # 300.0f

    cmp-long v9, v2, v6

    if-nez v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/l3/km;->c()I

    move-result v2

    iget-object v3, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/km;->c()I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getBuildingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLocationType()I

    move-result v2

    iput v2, v0, Lcom/amap/api/col/l3/kp;->a:I

    const/4 v2, 0x4

    new-array v2, v2, [D

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    const/4 v3, 0x2

    iget-object v6, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    const/4 v3, 0x3

    iget-object v6, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    invoke-static {v2}, Lcom/amap/api/col/l3/lj;->a([D)F

    move-result v2

    iget-object v3, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getAccuracy()F

    move-result v6

    sub-float v7, v6, v3

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/amap/api/col/l3/kp;->e:J

    sub-long v11, v9, v11

    const/high16 v13, 0x42ca0000    # 101.0f

    const-wide/16 v14, 0x0

    const v16, 0x43958000    # 299.0f

    cmpg-float v13, v3, v13

    if-gez v13, :cond_6

    cmpl-float v13, v6, v16

    if-gtz v13, :cond_7

    :cond_6
    cmpl-float v13, v3, v16

    if-lez v13, :cond_a

    cmpl-float v17, v6, v16

    if-lez v17, :cond_a

    :cond_7
    iget-wide v2, v0, Lcom/amap/api/col/l3/kp;->f:J

    cmp-long v6, v2, v14

    if-nez v6, :cond_8

    iput-wide v9, v0, Lcom/amap/api/col/l3/kp;->f:J

    goto :goto_0

    :cond_8
    sub-long v2, v9, v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_9

    iput-wide v9, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    iput-wide v14, v0, Lcom/amap/api/col/l3/kp;->f:J

    return-object v1

    :cond_9
    :goto_0
    iget-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_a
    const/high16 v17, 0x42c80000    # 100.0f

    cmpg-float v17, v6, v17

    if-gez v17, :cond_b

    if-lez v13, :cond_b

    iput-wide v9, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    iput-wide v14, v0, Lcom/amap/api/col/l3/kp;->f:J

    return-object v1

    :cond_b
    cmpg-float v13, v6, v16

    if-gtz v13, :cond_c

    iput-wide v14, v0, Lcom/amap/api/col/l3/kp;->f:J

    :cond_c
    const/high16 v13, 0x41200000    # 10.0f

    cmpg-float v13, v2, v13

    if-gez v13, :cond_f

    float-to-double v13, v2

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v13, v15

    if-lez v2, :cond_f

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v6, v2

    if-lez v2, :cond_f

    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpl-float v2, v7, v2

    if-ltz v2, :cond_d

    iget-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_d
    div-float/2addr v3, v6

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_e

    iput-wide v9, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_e
    iget-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_f
    cmpl-float v2, v7, v8

    if-ltz v2, :cond_11

    cmp-long v2, v11, v4

    if-ltz v2, :cond_10

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_10
    iget-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_11
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1

    :cond_12
    :goto_1
    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/col/l3/kp;->e:J

    iput-object v1, v0, Lcom/amap/api/col/l3/kp;->d:Lcom/amap/api/col/l3/km;

    return-object v1
.end method
