.class public Lcom/amap/api/maps/model/HeatmapTileProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

.field public static final DEFAULT_OPACITY:D = 0.6

.field public static final DEFAULT_RADIUS:I = 0xc

.field private static final a:[I

.field private static final b:[F


# instance fields
.field private c:Lcom/amap/api/maps/model/a;

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/amap/api/col/l3/du;

.field private f:I

.field private g:Lcom/amap/api/maps/model/Gradient;

.field private h:[I

.field private i:[D

.field private j:D

.field private k:[D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x66

    const/16 v4, 0xe1

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0xff

    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    sput-object v1, Lcom/amap/api/maps/model/HeatmapTileProvider;->a:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->b:[F

    new-instance v2, Lcom/amap/api/maps/model/Gradient;

    invoke-direct {v2, v1, v0}, Lcom/amap/api/maps/model/Gradient;-><init>([I[F)V

    sput-object v2, Lcom/amap/api/maps/model/HeatmapTileProvider;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->a(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->d:Ljava/util/Collection;

    invoke-static {p1}, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->b(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->f:I

    invoke-static {p1}, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->c(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)Lcom/amap/api/maps/model/Gradient;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->g:Lcom/amap/api/maps/model/Gradient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Gradient;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->DEFAULT_GRADIENT:Lcom/amap/api/maps/model/Gradient;

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->g:Lcom/amap/api/maps/model/Gradient;

    :cond_1
    invoke-static {p1}, Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;->d(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->j:D

    iget p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->f:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/amap/api/maps/model/HeatmapTileProvider;->a(ID)[D

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->i:[D

    iget-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->g:Lcom/amap/api/maps/model/Gradient;

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->g:Lcom/amap/api/maps/model/Gradient;

    iget-wide v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->j:D

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/maps/model/Gradient;->generateColorMap(D)[I

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->h:[I

    iget-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->d:Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/amap/api/maps/model/HeatmapTileProvider;->b(Ljava/util/Collection;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/maps/model/HeatmapTileProvider;-><init>(Lcom/amap/api/maps/model/HeatmapTileProvider$Builder;)V

    return-void
.end method

.method private static a([[D[ID)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    div-double v3, v3, p2

    array-length v12, v0

    mul-int v5, v12, v12

    new-array v6, v5, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v12, :cond_3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_2

    aget-object v9, v0, v8

    aget-wide v10, v9, v7

    mul-int v9, v7, v12

    add-int/2addr v9, v8

    mul-double v13, v10, v3

    double-to-int v13, v13

    const-wide/16 v14, 0x0

    cmpl-double v16, v10, v14

    if-eqz v16, :cond_1

    array-length v10, v1

    if-ge v13, v10, :cond_0

    aget v10, v1, v13

    aput v10, v6, v9

    goto :goto_2

    :cond_0
    aput v2, v6, v9

    goto :goto_2

    :cond_1
    aput v5, v6, v9

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move v8, v12

    move v11, v12

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    new-instance v2, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-direct {v2, v1}, Lcom/amap/api/maps/model/WeightedLatLng;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(I)[D
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0x15

    new-array v2, v1, [D

    const/4 v4, 0x5

    :goto_0
    const/16 v5, 0xb

    if-ge v4, v5, :cond_6

    iget-object v5, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->d:Ljava/util/Collection;

    iget-object v6, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->e:Lcom/amap/api/col/l3/du;

    const-wide/high16 v7, 0x4094000000000000L    # 1280.0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    int-to-double v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v7

    double-to-int v7, v9

    iget-wide v8, v6, Lcom/amap/api/col/l3/du;->a:D

    iget-wide v10, v6, Lcom/amap/api/col/l3/du;->c:D

    iget-wide v12, v6, Lcom/amap/api/col/l3/du;->b:D

    iget-wide v14, v6, Lcom/amap/api/col/l3/du;->d:D

    sub-double/2addr v10, v8

    sub-double/2addr v14, v12

    cmpl-double v6, v10, v14

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    move-wide v10, v14

    :goto_1
    mul-int/lit8 v6, p1, 0x2

    div-int/2addr v7, v6

    int-to-double v6, v7

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v14

    double-to-int v6, v6

    int-to-double v6, v6

    div-double/2addr v6, v10

    new-instance v10, La/b/d;

    invoke-direct {v10}, La/b/d;-><init>()V

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v16, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-virtual {v11}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    move/from16 v18, v4

    iget-wide v3, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-virtual {v11}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget-wide v14, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr v3, v8

    mul-double v3, v3, v6

    double-to-int v1, v3

    sub-double/2addr v14, v12

    mul-double v14, v14, v6

    double-to-int v3, v14

    int-to-long v14, v1

    invoke-virtual {v10, v14, v15}, La/b/d;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/d;

    if-nez v1, :cond_1

    new-instance v1, La/b/d;

    invoke-direct {v1}, La/b/d;-><init>()V

    invoke-virtual {v10, v14, v15, v1}, La/b/d;->c(JLjava/lang/Object;)V

    :cond_1
    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, La/b/d;->a(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    const-wide/16 v19, 0x0

    if-nez v14, :cond_2

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    :cond_2
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-wide/from16 v21, v6

    move-object v7, v5

    iget-wide v5, v11, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    add-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, La/b/d;->c(JLjava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v1, v3, v16

    if-lez v1, :cond_3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    :cond_3
    move-object v5, v7

    move/from16 v4, v18

    move-wide/from16 v6, v21

    const/16 v1, 0x15

    goto :goto_2

    :cond_4
    move/from16 v18, v4

    aput-wide v16, v2, v18

    move/from16 v3, v18

    const/4 v1, 0x5

    if-ne v3, v1, :cond_5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_5

    aget-wide v5, v2, v3

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v3, 0x1

    const/16 v1, 0x15

    goto/16 :goto_0

    :cond_6
    :goto_4
    if-ge v5, v1, :cond_7

    const/16 v3, 0xa

    aget-wide v3, v2, v3

    aput-wide v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    return-object v2
.end method

.method private static a(ID)[D
    .locals 7

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    neg-int v1, p0

    :goto_0
    if-gt v1, p0, :cond_0

    add-int v2, v1, p0

    neg-int v3, v1

    mul-int v3, v3, v1

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v5, v5, p1

    mul-double v5, v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a([[D[D)[[D
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, D

    array-length v3, v1

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    array-length v4, v0

    mul-int/lit8 v5, v3, 0x2

    sub-int v5, v4, v5

    add-int v6, v3, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v4, v9, v7

    const/4 v10, 0x0

    aput v4, v9, v10

    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    const/4 v11, 0x0

    :goto_0
    const-wide/16 v12, 0x0

    if-ge v11, v4, :cond_4

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_3

    aget-object v15, v0, v11

    aget-wide v16, v15, v14

    cmpl-double v15, v16, v12

    if-eqz v15, :cond_2

    add-int v15, v11, v3

    if-ge v6, v15, :cond_0

    move v15, v6

    :cond_0
    add-int/2addr v15, v7

    sub-int v12, v11, v3

    if-le v3, v12, :cond_1

    move v13, v3

    goto :goto_2

    :cond_1
    move v13, v12

    :goto_2
    if-ge v13, v15, :cond_2

    aget-object v20, v9, v13

    aget-wide v21, v20, v14

    sub-int v23, v13, v12

    aget-wide v23, v1, v23

    mul-double v23, v23, v16

    add-double v21, v21, v23

    aput-wide v21, v20, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v12, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    new-array v0, v8, [I

    aput v5, v0, v7

    aput v5, v0, v10

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v3

    :goto_3
    add-int/lit8 v5, v6, 0x1

    if-ge v2, v5, :cond_9

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    aget-object v8, v9, v2

    aget-wide v11, v8, v5

    const-wide/16 v13, 0x0

    cmpl-double v8, v11, v13

    if-eqz v8, :cond_7

    add-int v8, v5, v3

    if-ge v6, v8, :cond_5

    move v8, v6

    :cond_5
    add-int/2addr v8, v7

    sub-int v15, v5, v3

    if-le v3, v15, :cond_6

    move/from16 v16, v3

    goto :goto_5

    :cond_6
    move/from16 v16, v15

    :goto_5
    move/from16 v7, v16

    :goto_6
    if-ge v7, v8, :cond_7

    sub-int v16, v2, v3

    aget-object v16, v0, v16

    sub-int v18, v7, v3

    aget-wide v19, v16, v18

    sub-int v21, v7, v15

    aget-wide v21, v1, v21

    mul-double v21, v21, v11

    add-double v19, v19, v21

    aput-wide v19, v16, v18

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v13, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method private b(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/WeightedLatLng;

    iget-object v2, v1, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, 0x4055400000000000L    # 85.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    iget-object v2, v1, Lcom/amap/api/maps/model/WeightedLatLng;->latLng:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, -0x3faac00000000000L    # -85.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->d:Ljava/util/Collection;

    invoke-static {v0}, Lcom/amap/api/maps/model/HeatmapTileProvider;->c(Ljava/util/Collection;)Lcom/amap/api/col/l3/du;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->e:Lcom/amap/api/col/l3/du;

    new-instance v0, Lcom/amap/api/maps/model/a;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/a;-><init>(Lcom/amap/api/col/l3/du;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->c:Lcom/amap/api/maps/model/a;

    iget-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->d:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/WeightedLatLng;

    iget-object v1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->c:Lcom/amap/api/maps/model/a;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/a;->a(Lcom/amap/api/maps/model/WeightedLatLng;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->f:I

    invoke-direct {p0, p1}, Lcom/amap/api/maps/model/HeatmapTileProvider;->a(I)[D

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/model/HeatmapTileProvider;->k:[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static c(Ljava/util/Collection;)Lcom/amap/api/col/l3/du;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amap/api/maps/model/WeightedLatLng;",
            ">;)",
            "Lcom/amap/api/col/l3/du;"
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    iget-wide v2, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-virtual {v1}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    iget-wide v4, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-virtual {v1}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v6

    iget-wide v6, v6, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v1}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    iget-wide v2, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-virtual {v1}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    cmpg-double v1, v2, v11

    if-gez v1, :cond_1

    move-wide v11, v2

    :cond_1
    cmpl-double v1, v2, v13

    if-lez v1, :cond_2

    move-wide v13, v2

    :cond_2
    cmpg-double v1, v4, v15

    if-gez v1, :cond_3

    move-wide v15, v4

    :cond_3
    cmpl-double v1, v4, v17

    if-lez v1, :cond_0

    move-wide/from16 v17, v4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/amap/api/col/l3/du;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/amap/api/col/l3/du;-><init>(DDDD)V

    return-object v0
.end method


# virtual methods
.method public getTile(III)Lcom/amap/api/maps/model/Tile;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v4, v8, v4

    iget v10, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->f:I

    int-to-double v11, v10

    mul-double v11, v11, v4

    const-wide/high16 v13, 0x4070000000000000L    # 256.0

    div-double/2addr v11, v13

    mul-double v6, v6, v11

    add-double/2addr v6, v4

    const/4 v13, 0x2

    mul-int/lit8 v10, v10, 0x2

    const/16 v14, 0x100

    add-int/2addr v10, v14

    int-to-double v13, v10

    div-double/2addr v6, v13

    int-to-double v13, v1

    mul-double v13, v13, v4

    sub-double/2addr v13, v11

    const/4 v10, 0x1

    add-int/2addr v1, v10

    int-to-double v8, v1

    mul-double v8, v8, v4

    add-double v18, v8, v11

    int-to-double v8, v2

    mul-double v8, v8, v4

    sub-double/2addr v8, v11

    add-int/lit8 v1, v2, 0x1

    int-to-double v1, v1

    mul-double v1, v1, v4

    add-double/2addr v1, v11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v20, 0x0

    cmpg-double v5, v13, v20

    if-gez v5, :cond_0

    new-instance v4, Lcom/amap/api/col/l3/du;

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double v21, v13, v15

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    move-object/from16 v20, v4

    move-wide/from16 v25, v8

    move-wide/from16 v27, v1

    invoke-direct/range {v20 .. v28}, Lcom/amap/api/col/l3/du;-><init>(DDDD)V

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    iget-object v5, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->c:Lcom/amap/api/maps/model/a;

    invoke-virtual {v5, v4}, Lcom/amap/api/maps/model/a;->a(Lcom/amap/api/col/l3/du;)Ljava/util/Collection;

    move-result-object v4

    :goto_0
    move-wide/from16 v24, v15

    goto :goto_1

    :cond_0
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v18, v15

    if-lez v5, :cond_1

    new-instance v4, Lcom/amap/api/col/l3/du;

    const-wide/16 v21, 0x0

    sub-double v23, v18, v15

    move-object/from16 v20, v4

    move-wide/from16 v25, v8

    move-wide/from16 v27, v1

    invoke-direct/range {v20 .. v28}, Lcom/amap/api/col/l3/du;-><init>(DDDD)V

    iget-object v5, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->c:Lcom/amap/api/maps/model/a;

    invoke-virtual {v5, v4}, Lcom/amap/api/maps/model/a;->a(Lcom/amap/api/col/l3/du;)Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-wide/from16 v24, v20

    :goto_1
    new-instance v5, Lcom/amap/api/col/l3/du;

    move-object v15, v5

    move-wide/from16 v16, v13

    move-wide/from16 v20, v8

    move-wide/from16 v22, v1

    invoke-direct/range {v15 .. v23}, Lcom/amap/api/col/l3/du;-><init>(DDDD)V

    new-instance v1, Lcom/amap/api/col/l3/du;

    iget-object v2, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->e:Lcom/amap/api/col/l3/du;

    move-object/from16 p1, v4

    iget-wide v3, v2, Lcom/amap/api/col/l3/du;->a:D

    sub-double v27, v3, v11

    iget-wide v3, v2, Lcom/amap/api/col/l3/du;->c:D

    add-double v29, v3, v11

    iget-wide v3, v2, Lcom/amap/api/col/l3/du;->b:D

    sub-double v31, v3, v11

    iget-wide v2, v2, Lcom/amap/api/col/l3/du;->d:D

    add-double v33, v2, v11

    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v34}, Lcom/amap/api/col/l3/du;-><init>(DDDD)V

    invoke-virtual {v5, v1}, Lcom/amap/api/col/l3/du;->a(Lcom/amap/api/col/l3/du;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    return-object v1

    :cond_2
    iget-object v1, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->c:Lcom/amap/api/maps/model/a;

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/a;->a(Lcom/amap/api/col/l3/du;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/amap/api/maps/model/TileProvider;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    return-object v1

    :cond_3
    iget v2, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->f:I

    mul-int/lit8 v3, v2, 0x2

    const/16 v4, 0x100

    add-int/2addr v3, v4

    const/4 v5, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    new-array v4, v5, [I

    aput v2, v4, v10

    const/4 v2, 0x0

    aput v3, v4, v2

    const-class v2, D

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    iget-wide v10, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    sub-double/2addr v10, v13

    div-double/2addr v10, v6

    double-to-int v5, v10

    iget-wide v10, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr v10, v8

    div-double/2addr v10, v6

    double-to-int v4, v10

    aget-object v5, v2, v5

    aget-wide v10, v5, v4

    move-object/from16 p2, v1

    iget-wide v0, v3, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    add-double/2addr v10, v0

    aput-wide v10, v5, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto :goto_2

    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/WeightedLatLng;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/WeightedLatLng;->getPoint()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    iget-wide v4, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double v4, v4, v24

    sub-double/2addr v4, v13

    div-double/2addr v4, v6

    double-to-int v4, v4

    iget-wide v10, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    sub-double/2addr v10, v8

    div-double/2addr v10, v6

    double-to-int v3, v10

    aget-object v4, v2, v4

    aget-wide v10, v4, v3

    move-object/from16 p1, v0

    iget-wide v0, v1, Lcom/amap/api/maps/model/WeightedLatLng;->intensity:D

    add-double/2addr v10, v0

    aput-wide v10, v4, v3

    move-object/from16 v0, p1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->i:[D

    invoke-static {v2, v1}, Lcom/amap/api/maps/model/HeatmapTileProvider;->a([[D[D)[[D

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->h:[I

    iget-object v3, v0, Lcom/amap/api/maps/model/HeatmapTileProvider;->k:[D

    aget-wide v4, v3, p3

    invoke-static {v1, v2, v4, v5}, Lcom/amap/api/maps/model/HeatmapTileProvider;->a([[D[ID)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2, v2, v1}, Lcom/amap/api/maps/model/Tile;->obtain(II[B)Lcom/amap/api/maps/model/Tile;

    move-result-object v1

    return-object v1
.end method

.method public getTileHeight()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method
