.class public Lcom/amap/api/mapcore/util/eb;
.super Ljava/lang/Object;
.source "SegmentsIntersect.java"


# direct methods
.method private static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D
    .locals 6

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D
    .locals 2

    invoke-static {p2, p0}, Lcom/amap/api/mapcore/util/eb;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-static {p1, p0}, Lcom/amap/api/mapcore/util/eb;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/eb;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 12

    const/4 v0, 0x1

    const-wide/16 v10, 0x0

    invoke-static {p2, p3, p0}, Lcom/amap/api/mapcore/util/eb;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v2

    invoke-static {p2, p3, p1}, Lcom/amap/api/mapcore/util/eb;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v4

    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/eb;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v6

    invoke-static {p0, p1, p3}, Lcom/amap/api/mapcore/util/eb;->a(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)D

    move-result-wide v8

    cmpl-double v1, v2, v10

    if-lez v1, :cond_0

    cmpg-double v1, v4, v10

    if-ltz v1, :cond_1

    :cond_0
    cmpg-double v1, v2, v10

    if-gez v1, :cond_4

    cmpl-double v1, v4, v10

    if-lez v1, :cond_4

    :cond_1
    cmpl-double v1, v6, v10

    if-lez v1, :cond_2

    cmpg-double v1, v8, v10

    if-ltz v1, :cond_3

    :cond_2
    cmpg-double v1, v6, v10

    if-gez v1, :cond_4

    cmpl-double v1, v8, v10

    if-lez v1, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    cmpl-double v1, v2, v10

    if-nez v1, :cond_5

    invoke-static {p2, p3, p0}, Lcom/amap/api/mapcore/util/eb;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    cmpl-double v1, v4, v10

    if-nez v1, :cond_6

    invoke-static {p2, p3, p1}, Lcom/amap/api/mapcore/util/eb;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_6
    cmpl-double v1, v6, v10

    if-nez v1, :cond_7

    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore/util/eb;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_7
    cmpl-double v1, v8, v10

    if-nez v1, :cond_8

    invoke-static {p0, p1, p3}, Lcom/amap/api/mapcore/util/eb;->b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    .locals 8

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static b(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Z
    .locals 12

    const-wide/16 v10, 0x0

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v0, v2

    cmpl-double v0, v0, v10

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    :goto_0
    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    cmpg-double v2, v2, v10

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    :goto_1
    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    cmpl-double v4, v4, v10

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    :goto_2
    iget-wide v6, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    cmpg-double v6, v6, v10

    if-gez v6, :cond_3

    iget-wide v6, p0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    :goto_3
    iget-wide v8, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_4

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_4

    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double v0, v6, v0

    if-gtz v0, :cond_4

    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    goto :goto_1

    :cond_2
    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    goto :goto_2

    :cond_3
    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method
