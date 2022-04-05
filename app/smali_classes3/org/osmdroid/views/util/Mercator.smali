.class public Lorg/osmdroid/views/util/Mercator;
.super Ljava/lang/Object;

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
    .locals 3

    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    double-to-int p2, p2

    invoke-static {p2, p8}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide p2

    double-to-int p4, p4

    invoke-static {p4, p8}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide p4

    double-to-int p6, p6

    invoke-static {p6, p8}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide p6

    double-to-int p0, p0

    invoke-static {p0, p8}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v1

    move-object p0, v0

    move-wide p1, p2

    move-wide p3, p4

    move-wide p5, p6

    move-wide p7, v1

    invoke-direct/range {p0 .. p8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method

.method public static getBoundingBoxFromPointInMapTile(Landroid/graphics/Point;I)Lorg/osmdroid/util/BoundingBox;
    .locals 10

    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v1

    iget v0, p0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v3

    iget v0, p0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v5

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-static {p0, p1}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v9
.end method

.method public static projectGeoPoint(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p5, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p5, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p2, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double/2addr p2, v0

    const/4 v0, 0x1

    shl-int p4, v0, p4

    int-to-double v0, p4

    mul-double p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p5, Landroid/graphics/Point;->x:I

    const-wide p2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double p0, v2, p0

    add-double/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, p2

    sub-double/2addr v2, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, p0

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p5, Landroid/graphics/Point;->y:I

    return-object p5
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

    move-result-object p0

    return-object p0
.end method

.method public static projectPoint(III)Lorg/osmdroid/util/GeoPoint;
    .locals 3

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, p2}, Lorg/osmdroid/views/util/Mercator;->tile2lat(II)D

    move-result-wide v1

    invoke-static {p0, p2}, Lorg/osmdroid/views/util/Mercator;->tile2lon(II)D

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public static tile2lat(II)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v0, v0, v2

    const/4 p0, 0x1

    shl-int/2addr p0, p1

    int-to-double p0, p0

    div-double/2addr v0, p0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    neg-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static tile2lon(II)D
    .locals 2

    int-to-double v0, p0

    const/4 p0, 0x1

    shl-int/2addr p0, p1

    int-to-double p0, p0

    div-double/2addr v0, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    mul-double v0, v0, p0

    const-wide p0, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, p0

    return-wide v0
.end method
