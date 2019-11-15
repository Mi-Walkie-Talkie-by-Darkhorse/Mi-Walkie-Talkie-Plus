.class public Lorg/osmdroid/views/util/PathProjection;
.super Ljava/lang/Object;
.source "PathProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/osmdroid/views/util/PathProjection;->toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List",
            "<+",
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

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "List of GeoPoints needs to be at least 2."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->incReserve(I)V

    const/4 v2, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v13, v2

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v15

    iget v2, v15, Landroid/graphics/Point;->x:I

    iget v3, v15, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3, v15}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget v2, v15, Landroid/graphics/Point;->x:I

    iget v3, v15, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v15, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v15, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v2, v5, v6}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v10

    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v2

    const/4 v4, 0x7

    if-ge v2, v4, :cond_2

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v15, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v6, v15, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v6

    iget v6, v4, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v7

    mul-int/2addr v5, v7

    sub-int v5, v6, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    mul-int/2addr v3, v6

    sub-int v3, v4, v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    add-int/2addr v2, v3

    if-eqz v13, :cond_3

    int-to-float v3, v4

    int-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_1

    :cond_1
    new-instance p2, Landroid/graphics/Path;

    invoke-direct/range {p2 .. p2}, Landroid/graphics/Path;-><init>()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/util/BoundingBox;->getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(DDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    goto :goto_2

    :cond_3
    int-to-float v3, v4

    int-to-float v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_4
    return-object p2
.end method
