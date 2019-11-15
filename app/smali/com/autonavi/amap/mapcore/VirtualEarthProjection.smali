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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Clip(DDD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static LatLongToPixels(DDI)Landroid/graphics/Point;
    .locals 14

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    const-wide v2, -0x3faabcba4e5ab7faL    # -85.0511287798

    const-wide v4, 0x40554345b1a54806L    # 85.0511287798

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v8, v0, v2

    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    move-wide/from16 v0, p2

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v2, v8, v2

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x414854a600000000L    # 3189068.0

    mul-double v8, v4, v2

    const-wide/16 v2, 0x100

    shl-long v10, v2, p4

    const-wide v2, 0x41831bf8457c1093L    # 4.007501668557849E7

    long-to-double v4, v10

    div-double v12, v2, v4

    const-wide v2, 0x41731bf8457c1093L    # 2.0037508342789244E7

    add-double/2addr v0, v2

    div-double/2addr v0, v12

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sub-long v4, v10, v4

    long-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->x:I

    const-wide v0, 0x41731bf8457c1093L    # 2.0037508342789244E7

    sub-double/2addr v0, v8

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v12

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sub-long v4, v10, v4

    long-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->y:I

    return-object v6
.end method

.method public static LatLongToPixels(III)Landroid/graphics/Point;
    .locals 6

    const-wide v4, 0x414b774000000000L    # 3600000.0

    int-to-double v0, p1

    div-double/2addr v0, v4

    int-to-double v2, p0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3, p2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;
    .locals 12

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    const-wide v2, 0x41831bf8457c1093L    # 4.007501668557849E7

    const/4 v1, 0x1

    shl-int v1, v1, p4

    mul-int/lit16 v1, v1, 0x100

    int-to-double v4, v1

    div-double/2addr v2, v4

    long-to-double v4, p0

    mul-double/2addr v4, v2

    const-wide v6, 0x41731bf8457c1093L    # 2.0037508342789244E7

    sub-double/2addr v4, v6

    const-wide v6, 0x41731bf8457c1093L    # 2.0037508342789244E7

    long-to-double v8, p2

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    neg-double v2, v2

    const-wide v10, 0x415854a640000000L    # 6378137.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v6

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    const-wide v2, 0x415854a640000000L    # 6378137.0

    div-double v2, v4, v2

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    iput-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    return-object v0
.end method
