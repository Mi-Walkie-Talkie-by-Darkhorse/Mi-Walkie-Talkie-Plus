.class public final Lcom/amap/api/col/l3/al;
.super Ljava/lang/Object;


# static fields
.field static a:D = 3.141592653589793

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(D)D
    .locals 4

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double p0, p0, v0

    sget-wide v0, Lcom/amap/api/col/l3/al;->a:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static a(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double v2, v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double p0, p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "Jni_wgs2gcj"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amap/api/col/l3/al;->b:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/amap/api/col/l3/al;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, p0, p1}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    sget-boolean p1, Lcom/amap/api/col/l3/al;->b:Z

    invoke-static {p0, p1}, Lcom/amap/api/col/l3/al;->a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v3, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p1
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 22

    move-object/from16 v1, p0

    if-eqz v1, :cond_1

    :try_start_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v6, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v8, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    sub-double v6, v2, v6

    sub-double v8, v4, v8

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v11

    invoke-static {v6, v7}, Lcom/amap/api/col/l3/al;->b(D)D

    move-result-wide v12

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Lcom/amap/api/col/l3/al;->a(D)D

    move-result-wide v14

    mul-double v16, v6, v6

    mul-double v18, v8, v8

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    add-double v14, v14, v18

    mul-double v12, v12, v14

    const-wide v14, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v12, v14

    invoke-static {v6, v7}, Lcom/amap/api/col/l3/al;->b(D)D

    move-result-wide v14

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    add-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v8, v9}, Lcom/amap/api/col/l3/al;->a(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    add-double v18, v18, v16

    mul-double v14, v14, v18

    const-wide v16, 0x3f789374bc6a7efaL    # 0.006

    add-double v14, v14, v16

    invoke-static {v12, v13}, Lcom/amap/api/col/l3/al;->c(D)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v14, v15}, Lcom/amap/api/col/l3/al;->c(D)D

    move-result-wide v12

    iput-wide v12, v11, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v6, v2

    iget-wide v12, v11, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/amap/api/col/l3/al;->c(D)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v8, v4

    iget-wide v6, v11, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Lcom/amap/api/col/l3/al;->c(D)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v8, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double v8, v2, v8

    sub-double v6, v4, v6

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v20, v6

    move-wide v6, v8

    move-wide/from16 v8, v20

    goto/16 :goto_0

    :cond_0
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v12, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v14, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method private static a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 6

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/l3/eg;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v1, v0, [D

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [D

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    aput-wide v4, p1, v3

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    aput-wide v4, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1, v1}, Lcom/autonavi/amap/mapcore/CoordUtil;->convertToGcj([D[D)I

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v4, v5}, Lcom/amap/api/col/l3/kj;->a(DD)[D

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v4, v5}, Lcom/amap/api/col/l3/kj;->a(DD)[D

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    aget-wide v3, v1, v3

    aget-wide v0, v1, v2

    invoke-static {v3, v4, v0, v1}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_2
    return-object p0
.end method

.method private static b(D)D
    .locals 4

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double p0, p0, v0

    sget-wide v0, Lcom/amap/api/col/l3/al;->a:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static b(DD)D
    .locals 6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40d1940000000000L    # 18000.0

    div-double v4, p0, v4

    mul-double v2, v2, v4

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x40c1940000000000L    # 9000.0

    div-double/2addr p2, v0

    mul-double p0, p0, p2

    add-double/2addr v2, p0

    return-wide v2
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 16

    move-object/from16 v1, p1

    :try_start_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    mul-double v2, v2, v6

    double-to-long v2, v2

    const-wide/32 v8, 0x2255100

    rem-long/2addr v2, v8

    long-to-double v2, v2

    mul-double v4, v4, v6

    double-to-long v4, v4

    rem-long/2addr v4, v8

    long-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3/al;->a(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v2

    double-to-int v0, v8

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/l3/al;->b(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v4

    double-to-int v8, v8

    int-to-double v9, v0

    int-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Lcom/amap/api/col/l3/al;->a(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v2

    const/4 v0, 0x1

    const/4 v10, -0x1

    const-wide/16 v13, 0x0

    cmpl-double v15, v2, v13

    if-lez v15, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    int-to-double v2, v2

    add-double/2addr v8, v2

    double-to-int v2, v8

    int-to-double v2, v2

    invoke-static {v2, v3, v11, v12}, Lcom/amap/api/col/l3/al;->b(DD)D

    move-result-wide v8

    neg-double v8, v8

    add-double/2addr v8, v4

    cmpl-double v11, v4, v13

    if-lez v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    int-to-double v4, v0

    add-double/2addr v8, v4

    double-to-int v0, v8

    div-double/2addr v2, v6

    int-to-double v4, v0

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    move-object/from16 v2, p0

    invoke-static {v2, v8}, Lcom/amap/api/col/l3/al;->a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private static c(D)D
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/16 p0, 0x8

    const/4 p1, 0x4

    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method
