.class public final Lcom/amap/api/col/l3/ej;
.super Ljava/lang/Object;
.source "SegmentsIntersect.java"


# direct methods
.method private static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D
    .locals 4

    .line 2
    invoke-static {p2, p0}, Lcom/amap/api/col/l3/ej;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    invoke-static {p1, p0}, Lcom/amap/api/col/l3/ej;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p0

    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double v0, v0, v2

    iget-wide p0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double p0, p0, v2

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method private static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 5

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v1, v3

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide p0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 3
    invoke-static {v2, v3, v0}, Lcom/amap/api/col/l3/ej;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v4

    .line 4
    invoke-static {v2, v3, v1}, Lcom/amap/api/col/l3/ej;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v6

    .line 5
    invoke-static/range {p0 .. p2}, Lcom/amap/api/col/l3/ej;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v8

    .line 6
    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3/ej;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v10

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    cmpl-double v15, v4, v13

    if-lez v15, :cond_0

    cmpg-double v16, v6, v13

    if-ltz v16, :cond_1

    :cond_0
    cmpg-double v16, v4, v13

    if-gez v16, :cond_4

    cmpl-double v4, v6, v13

    if-lez v4, :cond_4

    :cond_1
    cmpl-double v4, v8, v13

    if-lez v4, :cond_2

    cmpg-double v4, v10, v13

    if-ltz v4, :cond_3

    :cond_2
    cmpg-double v4, v8, v13

    if-gez v4, :cond_4

    cmpl-double v4, v10, v13

    if-lez v4, :cond_4

    :cond_3
    return v12

    :cond_4
    if-nez v15, :cond_5

    .line 7
    invoke-static {v2, v3, v0}, Lcom/amap/api/col/l3/ej;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v12

    :cond_5
    cmpl-double v4, v6, v13

    if-nez v4, :cond_6

    .line 8
    invoke-static {v2, v3, v1}, Lcom/amap/api/col/l3/ej;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v12

    :cond_6
    cmpl-double v4, v8, v13

    if-nez v4, :cond_7

    .line 9
    invoke-static/range {p0 .. p2}, Lcom/amap/api/col/l3/ej;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v12

    :cond_7
    cmpl-double v2, v10, v13

    if-nez v2, :cond_8

    .line 10
    invoke-static {v0, v1, v3}, Lcom/amap/api/col/l3/ej;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v12

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v4, v0, v2

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 2
    :goto_0
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v8, v2, v4

    cmpg-double v10, v8, v6

    if-gez v10, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, v4

    .line 3
    :goto_1
    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v10, v4, v8

    cmpl-double v12, v10, v6

    if-lez v12, :cond_2

    goto :goto_2

    :cond_2
    move-wide v4, v8

    .line 4
    :goto_2
    iget-wide v8, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide p0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double v10, v8, p0

    cmpg-double v12, v10, v6

    if-gez v12, :cond_3

    goto :goto_3

    :cond_3
    move-wide v8, p0

    .line 5
    :goto_3
    iget-wide p0, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v6, v2, p0

    if-gtz v6, :cond_4

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_4

    iget-wide p0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double p2, v8, p0

    if-gtz p2, :cond_4

    cmpg-double p2, p0, v4

    if-gtz p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
