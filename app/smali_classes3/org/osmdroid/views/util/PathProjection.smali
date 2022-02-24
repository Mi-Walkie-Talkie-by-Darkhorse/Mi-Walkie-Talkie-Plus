.class public Lorg/osmdroid/views/util/PathProjection;
.super Ljava/lang/Object;
.source "PathProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/osmdroid/views/util/PathProjection;->toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            "Z)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->incReserve(I)V

    const/4 v1, 0x1

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    .line 6
    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v8

    const/4 v9, 0x0

    .line 7
    invoke-static/range {v4 .. v9}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 8
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6, v4}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 9
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 10
    iget v6, v4, Landroid/graphics/Point;->x:I

    .line 11
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v8

    add-int/2addr v6, v8

    iget v8, v4, Landroid/graphics/Point;->y:I

    .line 12
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v9

    add-int/2addr v8, v9

    .line 13
    invoke-static {v6, v8, v7}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 14
    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v9

    .line 16
    invoke-static {v8, v5, v9, v7}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    .line 17
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 18
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v9

    .line 19
    invoke-static {v8, v6, v9, v7}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v6

    .line 20
    new-instance v17, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    .line 21
    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v13

    .line 22
    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v15

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v16}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    if-eqz p3, :cond_1

    .line 23
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v5

    const/4 v6, 0x7

    if-ge v5, v6, :cond_1

    .line 24
    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    const/4 v13, 0x0

    move-object/from16 v8, v17

    .line 25
    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    const/4 v13, 0x0

    move-object/from16 v8, v17

    .line 27
    invoke-virtual/range {v8 .. v13}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 28
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    .line 30
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 31
    invoke-static {v6, v5, v7}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 32
    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v6, v8, v7}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 33
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    .line 34
    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    .line 35
    iget v4, v6, Landroid/graphics/Point;->x:I

    .line 36
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v8

    mul-int v8, v8, v7

    sub-int/2addr v4, v8

    .line 37
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 38
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v7

    mul-int v7, v7, v5

    sub-int/2addr v6, v7

    .line 39
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 40
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v7

    int-to-float v7, v7

    mul-float v5, v5, v7

    float-to-int v5, v5

    add-int/2addr v4, v5

    .line 41
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 42
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    add-int/2addr v6, v3

    if-eqz v1, :cond_2

    int-to-float v1, v4

    int-to-float v3, v6

    .line 43
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_2
    int-to-float v1, v4

    int-to-float v3, v6

    .line 44
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_3
    return-object v0

    .line 45
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of GeoPoints needs to be at least 2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
