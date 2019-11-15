.class public final Lmicrosoft/mappoint/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


# static fields
.field private static final EarthRadius:D = 6378137.0

.field private static final MaxLatitude:D = 85.05112878

.field private static final MaxLongitude:D = 180.0

.field private static final MinLatitude:D = -85.05112878

.field private static final MinLongitude:D = -180.0

.field private static mMaxZoomLevel:I

.field protected static mTileSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    sput v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    const/16 v0, 0x16

    sput v0, Lmicrosoft/mappoint/TileSystem;->mMaxZoomLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Clip(DDD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static GroundResolution(DI)D
    .locals 8

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const-wide v2, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v4, 0x40554345b1a57f00L    # 85.05112878

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v6

    const-wide v2, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v0, v2

    invoke-static {p2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    if-nez p5, :cond_0

    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5}, Landroid/graphics/Point;-><init>()V

    :cond_0
    const-wide v2, -0x3faabcba4e5a8100L    # -85.05112878

    const-wide v4, 0x40554345b1a57f00L    # 85.05112878

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v6

    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    move-wide v0, p2

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v6

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v2, v8, v2

    div-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    div-double/2addr v2, v6

    sub-double v6, v4, v2

    invoke-static {p4}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v8

    int-to-double v2, v8

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p5, Landroid/graphics/Point;->x:I

    int-to-double v0, v8

    mul-double/2addr v0, v6

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-int/lit8 v4, v8, -0x1

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p5, Landroid/graphics/Point;->y:I

    return-object p5
.end method

.method public static MapScale(DII)D
    .locals 4

    invoke-static {p0, p1, p2}, Lmicrosoft/mappoint/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    int-to-double v2, p3

    mul-double/2addr v0, v2

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static MapSize(I)I
    .locals 2

    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    if-ge p0, v1, :cond_0

    :goto_0
    shl-int/2addr v0, p0

    return v0

    :cond_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result p0

    goto :goto_0
.end method

.method public static PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 12

    if-nez p3, :cond_0

    new-instance p3, Lorg/osmdroid/util/GeoPoint;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    :cond_0
    invoke-static {p2}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    int-to-double v6, v0

    int-to-double v0, p0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    div-double/2addr v0, v6

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double v8, v0, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    int-to-double v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->Clip(DDD)D

    move-result-wide v0

    div-double/2addr v0, v6

    sub-double v0, v10, v0

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4076800000000000L    # 360.0

    neg-double v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v8

    invoke-virtual {p3, v0, v1}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    invoke-virtual {p3, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-object p3
.end method

.method public static PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    :cond_0
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    div-int v0, p0, v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    div-int v0, p1, v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v3

    move v1, v0

    :goto_0
    if-lez v2, :cond_1

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1

    shl-int/2addr v4, v5

    sub-int v5, v3, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid QuadKey digit sequence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    or-int/2addr v1, v4

    :goto_1
    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_2
    or-int/2addr v0, v4

    goto :goto_1

    :pswitch_3
    or-int/2addr v1, v4

    or-int/2addr v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    :cond_0
    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    mul-int/2addr v0, p0

    iput v0, p2, Landroid/graphics/Point;->x:I

    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    mul-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-lez p2, :cond_2

    const/16 v0, 0x30

    const/4 v2, 0x1

    add-int/lit8 v3, p2, -0x1

    shl-int/2addr v2, v3

    and-int v3, p0, v2

    if-eqz v3, :cond_0

    const/16 v0, 0x31

    int-to-char v0, v0

    :cond_0
    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaximumZoomLevel()I
    .locals 1

    sget v0, Lmicrosoft/mappoint/TileSystem;->mMaxZoomLevel:I

    return v0
.end method

.method public static getTileSize()I
    .locals 1

    sget v0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    return v0
.end method

.method public static setTileSize(I)V
    .locals 4

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmicrosoft/mappoint/TileSystem;->mMaxZoomLevel:I

    sput p0, Lmicrosoft/mappoint/TileSystem;->mTileSize:I

    return-void
.end method
