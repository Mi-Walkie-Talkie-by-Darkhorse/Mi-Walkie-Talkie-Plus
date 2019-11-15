.class public Lcom/amap/api/maps/utils/SpatialRelationUtil;
.super Ljava/lang/Object;
.source "SpatialRelationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calShortestDistancePoint(Ljava/util/List;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    :try_start_1
    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;->obtain(DD)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/api/maps/utils/SpatialRelationUtil;->calShortestDistancePoint(Ljava/util/List;Lcom/autonavi/amap/mapcore/DPoint;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v1, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/DPoint;

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/DPoint;

    iget-wide v8, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static calShortestDistancePoint(Ljava/util/List;Lcom/autonavi/amap/mapcore/DPoint;)Landroid/util/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/DPoint;",
            ">;",
            "Lcom/autonavi/amap/mapcore/DPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/amap/mapcore/DPoint;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v15, 0x0

    :cond_1
    :goto_0
    return-object v15

    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/amap/mapcore/DPoint;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v15, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v15, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v8, v14

    :goto_2
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/autonavi/amap/mapcore/DPoint;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v15, Landroid/util/Pair;

    add-int/lit8 v2, v18, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v15, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v8, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v8, v8, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v10, v14, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v12, v14, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-static/range {v2 .. v13}, Lcom/amap/api/maps/utils/SpatialRelationUtil;->pointToSegDist(DDDDDD)Landroid/util/Pair;

    move-result-object v5

    if-nez v15, :cond_6

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    move-wide/from16 v16, v2

    move-object v15, v4

    goto :goto_1

    :cond_6
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v16, v2

    if-lez v2, :cond_7

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    new-instance v4, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    move-wide/from16 v2, v16

    move-object v4, v15

    goto :goto_3

    :cond_8
    move-object v8, v2

    goto :goto_2
.end method

.method private static pointToSegDist(DDDDDD)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Lcom/autonavi/amap/mapcore/DPoint;",
            ">;"
        }
    .end annotation

    sub-double v4, p8, p4

    sub-double v6, p0, p4

    mul-double/2addr v4, v6

    sub-double v6, p10, p6

    sub-double v8, p2, p6

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_0

    new-instance v4, Landroid/util/Pair;

    sub-double v6, p0, p4

    sub-double v8, p0, p4

    mul-double/2addr v6, v8

    sub-double v8, p2, p6

    sub-double v10, p2, p6

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-instance v6, Lcom/autonavi/amap/mapcore/DPoint;

    move-wide/from16 v0, p4

    move-wide/from16 v2, p6

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v4

    :cond_0
    sub-double v6, p8, p4

    sub-double v8, p8, p4

    mul-double/2addr v6, v8

    sub-double v8, p10, p6

    sub-double v10, p10, p6

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_1

    new-instance v4, Landroid/util/Pair;

    sub-double v6, p0, p8

    sub-double v8, p0, p8

    mul-double/2addr v6, v8

    sub-double v8, p2, p10

    sub-double v10, p2, p10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-instance v6, Lcom/autonavi/amap/mapcore/DPoint;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    div-double/2addr v4, v6

    sub-double v6, p8, p4

    mul-double/2addr v6, v4

    add-double v6, v6, p4

    sub-double v8, p10, p6

    mul-double/2addr v4, v8

    add-double v8, p6, v4

    sub-double v4, p0, v6

    sub-double v10, p0, v6

    mul-double/2addr v4, v10

    sub-double v10, v8, p2

    sub-double v12, v8, p2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    new-instance v4, Landroid/util/Pair;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-instance v10, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    invoke-direct {v4, v5, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
