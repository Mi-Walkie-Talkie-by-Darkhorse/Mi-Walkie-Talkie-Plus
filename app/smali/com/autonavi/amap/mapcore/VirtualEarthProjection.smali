.class public Lcom/autonavi/amap/mapcore/VirtualEarthProjection;
.super Ljava/lang/Object;
.source "VirtualEarthProjection.java"


# static fields
.field public static final EarthCircumferenceInMeters:D = 4.007501668557849E7

.field public static final EarthRadiusInMeters:I = 0x615299

.field public static final MAXZOOMLEVEL:I = 0x14

.field public static final MaxLatitude:D = 85.0511287798

.field public static final MaxLongitude:D = 180.0

.field public static final MinLatitude:D = -85.0511287798

.field public static final MinLongitude:D = -180.0

.field public static final PixelsPerTile:I = 0x100

.field public static final TileSplitLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Clip(DDD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static LatLongToPixels(DDI)Landroid/graphics/Point;
    .locals 21

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-wide v3, -0x3faabcba4e5ab7faL    # -85.0511287798

    const-wide v5, 0x40554345b1a54806L    # 85.0511287798

    move-wide/from16 v1, p0

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v5

    const-wide v9, -0x3f99800000000000L    # -180.0

    const-wide v11, 0x4066800000000000L    # 180.0

    move-wide/from16 v7, p2

    .line 4
    invoke-static/range {v7 .. v12}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v7

    mul-double v7, v7, v3

    div-double/2addr v7, v5

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide v3, 0x415854a640000000L    # 6378137.0

    mul-double v7, v7, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double v5, v1, v3

    sub-double/2addr v3, v1

    div-double/2addr v5, v3

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide v3, 0x414854a600000000L    # 3189068.0

    mul-double v1, v1, v3

    const-wide/16 v3, 0x100

    shl-long v3, v3, p4

    long-to-double v5, v3

    const-wide v9, 0x41831bf8457c1093L    # 4.007501668557849E7

    div-double/2addr v9, v5

    const-wide v5, 0x41731bf8457c1093L    # 2.0037508342789244E7

    add-double/2addr v7, v5

    div-double/2addr v7, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double v13, v7, v11

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    long-to-double v3, v3

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v3

    .line 7
    invoke-static/range {v13 .. v18}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v0, Landroid/graphics/Point;->x:I

    sub-double/2addr v5, v1

    double-to-long v1, v5

    long-to-double v1, v1

    div-double/2addr v1, v9

    add-double v15, v1, v11

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v3

    .line 8
    invoke-static/range {v15 .. v20}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public static LatLongToPixels(III)Landroid/graphics/Point;
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    int-to-double p0, p0

    div-double/2addr p0, v2

    .line 1
    invoke-static {v0, v1, p0, p1, p2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 5

    .line 1
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    const/4 v1, 0x1

    shl-int p4, v1, p4

    mul-int/lit16 p4, p4, 0x100

    int-to-double v1, p4

    const-wide v3, 0x41831bf8457c1093L    # 4.007501668557849E7

    div-double/2addr v3, v1

    long-to-double p0, p0

    mul-double p0, p0, v3

    const-wide v1, 0x41731bf8457c1093L    # 2.0037508342789244E7

    sub-double/2addr p0, v1

    long-to-double p2, p2

    mul-double p2, p2, v3

    sub-double/2addr v1, p2

    neg-double p2, v1

    const-wide v1, 0x415854a640000000L    # 6378137.0

    div-double/2addr p2, v1

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double p2, p2, v3

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v3, p2

    iput-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const-wide p2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v3, v3, p2

    .line 3
    iput-wide v3, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    div-double/2addr p0, v1

    .line 4
    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    mul-double p0, p0, p2

    .line 5
    iput-wide p0, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    return-object v0
.end method
