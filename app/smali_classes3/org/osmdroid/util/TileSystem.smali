.class public final Lorg/osmdroid/util/TileSystem;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GroundResolution(DI)D
    .locals 8

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->GroundResolution(DI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 14

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v8

    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v6, 0x4076800000000000L    # 360.0

    move-wide/from16 v0, p2

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v10

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v13}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static MapScale(DII)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmicrosoft/mappoint/TileSystem;->MapScale(DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static MapSize(I)I
    .locals 0

    invoke-static {p0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result p0

    return p0
.end method

.method public static PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 13

    invoke-static {p2}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v0

    move v1, p0

    int-to-double v1, v1

    add-int/lit8 v3, v0, -0x1

    int-to-double v9, v3

    int-to-double v11, v0

    const-wide/16 v3, 0x0

    move-wide v5, v9

    move-wide v7, v11

    invoke-static/range {v1 .. v8}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, p1

    int-to-double v4, v1

    const-wide/16 v6, 0x0

    move-wide v8, v9

    move-wide v10, v11

    invoke-static/range {v4 .. v11}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v1

    double-to-int v1, v1

    move v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, p2, v3}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1}, Lmicrosoft/mappoint/TileSystem;->QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToQuadKey(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTileSize()I
    .locals 1

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getTileSize()I

    move-result v0

    return v0
.end method

.method public static setTileSize(I)V
    .locals 0

    invoke-static {p0}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    return-void
.end method

.method private static wrap(DDDD)D
    .locals 4

    cmpl-double v0, p2, p4

    if-gtz v0, :cond_3

    sub-double v0, p4, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    cmpl-double v2, p6, v0

    if-gtz v2, :cond_2

    :goto_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    add-double/2addr p0, p6

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    sub-double/2addr p0, p6

    goto :goto_1

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "interval must be equal or smaller than maxValue-minValue: min: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " max:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " int:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "minValue must be smaller than maxValue: "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
