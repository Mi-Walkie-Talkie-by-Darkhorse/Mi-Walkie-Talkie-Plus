.class public final Lorg/osmdroid/util/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


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

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lmicrosoft/mappoint/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v8, 0x4076800000000000L    # 360.0

    move-wide v2, p2

    invoke-static/range {v2 .. v9}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static MapScale(DII)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lmicrosoft/mappoint/TileSystem;->MapScale(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static MapSize(I)I
    .locals 1

    invoke-static {p0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    return v0
.end method

.method public static PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10

    const-wide/16 v2, 0x0

    invoke-static {p2}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v8

    int-to-double v0, p0

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    int-to-double v6, v8

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v9, v0

    int-to-double v0, p1

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    int-to-double v6, v8

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v9, v0, p2, p3}, Lmicrosoft/mappoint/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    invoke-static {p0, p1}, Lmicrosoft/mappoint/TileSystem;->QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->TileXYToQuadKey(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minValue must be smaller than maxValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-double v0, p4, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    cmpl-double v0, p6, v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval must be equal or smaller than maxValue-minValue: min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    cmpg-double v2, v0, p2

    if-gez v2, :cond_1

    add-double/2addr v0, p6

    goto :goto_0

    :cond_1
    :goto_1
    cmpl-double v2, v0, p4

    if-lez v2, :cond_2

    sub-double/2addr v0, p6

    goto :goto_1

    :cond_2
    return-wide v0

    :cond_3
    move-wide v0, p0

    goto :goto_0
.end method
