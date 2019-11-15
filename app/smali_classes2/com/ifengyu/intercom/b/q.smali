.class public Lcom/ifengyu/intercom/b/q;
.super Ljava/lang/Object;
.source "GCJToWGSUtil.java"


# direct methods
.method public static a(DD)[D
    .locals 16

    const-wide v0, 0x415854c140000000L    # 6378245.0

    const-wide v2, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, p2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, p0, v6

    invoke-static {v4, v5, v6, v7}, Lcom/ifengyu/intercom/b/q;->c(DD)D

    move-result-wide v4

    const-wide v6, 0x405a400000000000L    # 105.0

    sub-double v6, p2, v6

    const-wide v8, 0x4041800000000000L    # 35.0

    sub-double v8, p0, v8

    invoke-static {v6, v7, v8, v9}, Lcom/ifengyu/intercom/b/q;->b(DD)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v8, p0, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double v14, v2, v10

    mul-double/2addr v10, v14

    sub-double v10, v12, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v2, v14, v2

    mul-double/2addr v2, v0

    mul-double/2addr v10, v12

    div-double/2addr v2, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v10

    div-double v2, v4, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    div-double/2addr v0, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    sub-double v2, p0, v2

    aput-wide v2, v4, v5

    const/4 v2, 0x1

    sub-double v0, p2, v0

    aput-wide v0, v4, v2

    return-object v4
.end method

.method private static b(DD)D
    .locals 10

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p0, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4062c00000000000L    # 150.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p0, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double v6, p0, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static c(DD)D
    .locals 10

    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, p2

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p2, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p2, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, p2

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method
