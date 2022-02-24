.class public final Lmicrosoft/mappoint/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


# static fields
.field private static final EarthRadius:D = 6378137.0

.field private static final MaxLatitude:D = 85.05112878

.field private static final MaxLongitude:D = 180.0

.field private static final MinLatitude:D = -85.05112878

.field private static final MinLongitude:D = -180.0

.field private static mMaxZoomLevel:I = 0x16

.field protected static mTileSize:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Clip(DDD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static GroundResolution(DI)D
    .locals 6

    const-wide v2, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v4, 0x40554345b1a57f00L    # 85.05112878

    move-wide v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double p0, p0, v2

    mul-double p0, p0, v0

    const-wide v0, 0x415854a640000000L    # 6378137.0

    mul-double p0, p0, v0

    .line 3
    invoke-static {p2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result p2

    int-to-double v0, p2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 14

    if-nez p5, :cond_0

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    :goto_0
    const-wide v3, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v5, 0x40554345b1a57f00L    # 85.05112878

    move-wide v1, p0

    .line 2
    invoke-static/range {v1 .. v6}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v1

    const-wide v5, -0x3f99800000000000L    # -180.0

    const-wide v7, 0x4066800000000000L    # 180.0

    move-wide/from16 v3, p2

    .line 3
    invoke-static/range {v3 .. v8}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    add-double/2addr v3, v5

    const-wide v7, 0x4076800000000000L    # 360.0

    div-double/2addr v3, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v7

    div-double/2addr v1, v5

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double v7, v1, v5

    sub-double/2addr v5, v1

    div-double/2addr v7, v5

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v1, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double v1, v5, v1

    .line 6
    invoke-static/range {p4 .. p4}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v7

    int-to-double v8, v7

    mul-double v3, v3, v8

    add-double/2addr v3, v5

    const-wide/16 v10, 0x0

    add-int/lit8 v7, v7, -0x1

    int-to-double v12, v7

    move-wide p0, v3

    move-wide/from16 p2, v10

    move-wide/from16 p4, v12

    .line 7
    invoke-static/range {p0 .. p5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    mul-double v1, v1, v8

    add-double/2addr v1, v5

    const-wide/16 v3, 0x0

    move-wide p0, v1

    move-wide/from16 p2, v3

    .line 8
    invoke-static/range {p0 .. p5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public static MapScale(DII)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->GroundResolution(DI)D

    move-result-wide p0

    int-to-double p2, p3

    mul-double p0, p0, p2

    const-wide p2, 0x3f9a027525460aa6L    # 0.0254

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static MapSize(I)I
    .locals 2

    .line 1
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    if-ge p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result p0

    :goto_0
    shl-int p0, v0, p0

    return p0
.end method

.method public static PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 15

    if-nez p3, :cond_0

    .line 1
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    .line 2
    :goto_0
    invoke-static/range {p2 .. p2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v1

    int-to-double v1, v1

    move v3, p0

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v13, v1, v7

    move-wide v7, v13

    .line 3
    invoke-static/range {v3 .. v8}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v3

    div-double/2addr v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    move/from16 v7, p1

    int-to-double v9, v7

    const-wide/16 v11, 0x0

    .line 4
    invoke-static/range {v9 .. v14}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v7

    div-double/2addr v7, v1

    sub-double/2addr v5, v7

    const-wide v1, 0x4056800000000000L    # 90.0

    neg-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v7

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v9, 0x4076800000000000L    # 360.0

    mul-double v5, v5, v9

    div-double/2addr v5, v7

    sub-double/2addr v1, v5

    mul-double v3, v3, v9

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 7
    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-object v0
.end method

.method public static PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 2
    :cond_0
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    div-int/2addr p0, v0

    iput p0, p2, Landroid/graphics/Point;->x:I

    .line 3
    div-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    const/4 v2, 0x0

    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    sub-int v5, v0, v3

    .line 3
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid QuadKey digit sequence."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    or-int/2addr v1, v4

    :pswitch_1
    or-int/2addr v2, v4

    goto :goto_1

    :pswitch_2
    or-int/2addr v1, v4

    :goto_1
    :pswitch_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 2
    :cond_0
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    mul-int p0, p0, v0

    iput p0, p2, Landroid/graphics/Point;->x:I

    mul-int p1, p1, v0

    .line 3
    iput p1, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-lez p2, :cond_2

    const/16 v1, 0x30

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int v4, p0, v2

    if-eqz v4, :cond_0

    const/16 v1, 0x31

    int-to-char v1, v1

    :cond_0
    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    add-int/2addr v1, v3

    int-to-char v1, v1

    .line 2
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaximumZoomLevel()I
    .locals 1

    .line 1
    sget v0, Lmicrosoft/mappoint/TileSystem;->mMaxZoomLevel:I

    return v0
.end method

.method public static getTileSize()I
    .locals 1

    .line 1
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    return v0
.end method

.method public static setTileSize(I)V
    .locals 4

    int-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0x1

    .line 2
    sput v0, Lmicrosoft/mappoint/TileSystem;->mMaxZoomLevel:I

    .line 3
    sput p0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    return-void
.end method
