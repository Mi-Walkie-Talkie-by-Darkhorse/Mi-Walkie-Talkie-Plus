.class public Lcom/amap/api/mapcore/util/ac;
.super Ljava/lang/Object;
.source "OffsetUtil.java"


# static fields
.field static a:D

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/util/ac;->b:Z

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/amap/api/mapcore/util/ac;->a:D

    return-void
.end method

.method private static a(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/amap/api/mapcore/util/ac;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(DI)D
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 7

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v0, "libwgs2gcj.so"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/fw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/amap/api/mapcore/util/ac;->b:Z

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/ac;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    sget-boolean v1, Lcom/amap/api/mapcore/util/ac;->b:Z

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ac;->a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 7

    if-eqz p0, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/ac;->a(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private static a(DDDD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 8

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    sub-double v2, p0, p4

    sub-double v4, p2, p6

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/ac;->d(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    add-double/2addr v2, p0

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double/2addr v2, v6

    const/16 v6, 0x8

    invoke-static {v2, v3, v6}, Lcom/amap/api/mapcore/util/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double v2, p2, v4

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr v2, v4

    const/16 v1, 0x8

    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    return-object v0
.end method

.method private static a(DDI)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 10

    const-wide v4, 0x3f7a37ffff31d771L    # 0.006401062

    const-wide v6, 0x3f78c0000225c17dL    # 0.0060424805

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    :goto_0
    if-ge v8, p4, :cond_0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/ac;->a(DDDD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double v4, p0, v2

    iget-wide v2, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double v6, p2, v2

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/DPoint;Z)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 6

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/dy;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [D

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    aput-wide v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1, v0}, Lcom/autonavi/amap/mapcore/CoordUtil;->convertToGcj([D[D)I

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ig;->a(DD)[D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ig;->a(DD)[D

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ig;->a(DD)[D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static b(D)D
    .locals 6

    const-wide v0, 0x40a7700000000000L    # 3000.0

    mul-double/2addr v0, p0

    sget-wide v2, Lcom/amap/api/mapcore/util/ac;->a:D

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(DD)D
    .locals 6

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double v0, p2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x40d1940000000000L    # 18000.0

    div-double v2, p0, v2

    mul-double/2addr v0, v2

    div-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v4, 0x40c1940000000000L    # 9000.0

    div-double v4, p2, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 8

    :try_start_0
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ac;->c(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v7

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v7, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v7, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/ac;->a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 10

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, p0

    double-to-long v0, v0

    const-wide/32 v2, 0x2255100

    rem-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, p2

    double-to-long v2, v2

    const-wide/32 v4, 0x2255100

    rem-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ac;->a(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ac;->b(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v2

    double-to-int v5, v6

    int-to-double v6, v4

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/mapcore/util/ac;->a(DD)D

    move-result-wide v6

    neg-double v6, v6

    add-double/2addr v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v1, v0

    int-to-double v6, v1

    int-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Lcom/amap/api/mapcore/util/ac;->b(DD)D

    move-result-wide v4

    neg-double v4, v4

    add-double/2addr v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-double v2, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    int-to-double v2, v1

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    int-to-double v0, v0

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d(DD)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 12

    const/16 v1, 0x8

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/ac;->b(D)D

    move-result-wide v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/ac;->a(D)D

    move-result-wide v4

    mul-double v6, p0, p0

    mul-double v8, p2, p2

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr v2, v4

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/ac;->b(D)D

    move-result-wide v4

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p2, p3}, Lcom/amap/api/mapcore/util/ac;->a(D)D

    move-result-wide v6

    mul-double v8, p0, p0

    mul-double v10, p2, p2

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v4, v6

    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v4, v5, v1}, Lcom/amap/api/mapcore/util/ac;->a(DI)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    return-object v0
.end method
