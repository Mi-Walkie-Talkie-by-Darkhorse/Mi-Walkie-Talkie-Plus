.class public Lorg/osmdroid/views/util/Mercator;
.super Ljava/lang/Object;
.source "Mercator.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEG2RAD:D = 0.017453292519943295


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundingBoxFromCoords(DDDDI)Lorg/osmdroid/util/BoundingBox;
    .locals 12

    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    double-to-int v2, p2

    move/from16 v0, p8

    invoke-static {v2, v0}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v4

    move-wide/from16 v0, p4

    double-to-int v2, v0

    move/from16 v0, p8

    invoke-static {v2, v0}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v6

    move-wide/from16 v0, p6

    double-to-int v2, v0

    move/from16 v0, p8

    invoke-static {v2, v0}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v8

    double-to-int v2, p0

    move/from16 v0, p8

    invoke-static {v2, v0}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v3
.end method

.method public static getBoundingBoxFromPointInMapTile(Landroid/graphics/Point;I)Lorg/osmdroid/util/BoundingBox;
    .locals 10

    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v2

    iget v0, p0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v4

    iget v0, p0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v6

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v1
.end method

.method public static projectGeoPoint(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    const/4 v8, 0x1

    const/4 v0, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    if-eqz p5, :cond_0

    :goto_0
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr v0, p2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    shl-int v2, v8, p4

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p5, Landroid/graphics/Point;->x:I

    mul-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    mul-double v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v6, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    sub-double v0, v6, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    shl-int v2, v8, p4

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p5, Landroid/graphics/Point;->y:I

    return-object p5

    :cond_0
    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public static projectGeoPoint(Lorg/osmdroid/api/IGeoPoint;ILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/util/Mercator;->projectGeoPoint(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static projectPoint(III)Lorg/osmdroid/util/GeoPoint;
    .locals 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, p2}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v2

    invoke-static {p0, p2}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public static tile2lat(II)D
    .locals 8

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, p0

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double v0, v6, v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static tile2lon(II)D
    .locals 4

    int-to-double v0, p0

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v2

    return-wide v0
.end method
