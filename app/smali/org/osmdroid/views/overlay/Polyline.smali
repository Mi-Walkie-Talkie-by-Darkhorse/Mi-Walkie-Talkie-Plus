.class public Lorg/osmdroid/views/overlay/Polyline;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Polyline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polyline$OnClickListener;
    }
.end annotation


# instance fields
.field protected mGeodesic:Z

.field private final mLineBounds:Landroid/graphics/Rect;

.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

.field private mOriginalPoints:[[D

.field protected mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsPrecomputed:I

.field public mRepeatPath:Z

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTempPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mRepeatPath:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->clearPath()V

    const/4 v0, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    return-void
.end method

.method private cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 8

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p3, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v6, p3, Landroid/graphics/Point;->y:I

    iget v7, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v0, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private distance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 8

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p2, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p3, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    iget v6, p3, Landroid/graphics/Point;->y:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    mul-double/2addr v0, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private linePointDist(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Z)D
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->cross(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v2

    div-double v0, v2, v0

    if-eqz p4, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    invoke-direct {p0, p2, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->dot(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    invoke-direct {p0, p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 28

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v6, v4

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    const-wide v8, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v8, v4

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    const-wide v10, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v10, v4

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    const-wide v12, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double/2addr v12, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double v14, v6, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v18, v8, v12

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    mul-double/2addr v14, v4

    sub-double v4, v8, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v4, v4, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v20, v8, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v16, -0x406e20b960000000L    # -0.01745329238474369

    div-double v4, v4, v16

    const-wide/16 v16, 0x0

    cmpg-double v16, v4, v16

    if-gez v16, :cond_0

    const-wide v16, 0x4076800000000000L    # 360.0

    add-double v4, v4, v16

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move/from16 v0, p3

    if-gt v4, v0, :cond_1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-int/lit8 v5, p3, 0x1

    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v16

    mul-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    div-double v18, v18, v20

    mul-double v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    div-double v16, v16, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v24, v24, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v18, v18, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v16, v16, v24

    add-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v18, v18, v24

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v16, v16, v20

    const-wide v20, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v20

    move-wide/from16 v0, v16

    double-to-int v5, v0

    const-wide v16, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v16, v16, v18

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(II)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected addPoint(II)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addPoint(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(II)V

    return-void
.end method

.method protected clearPath()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 13

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x2

    if-lt v7, v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v8

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v0

    invoke-static {v0}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    const/4 v0, 0x0

    mul-int/lit8 v1, v9, 0x2

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v8}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v8, v0, v1}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v11

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v11, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_c

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v8, v0, v1}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v12

    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v1, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v12, Landroid/graphics/Point;->y:I

    iget v2, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v1, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v9, :cond_3

    iget v0, v12, Landroid/graphics/Point;->y:I

    if-lt v0, v10, :cond_6

    const/4 v0, 0x1

    :goto_3
    iget v1, v11, Landroid/graphics/Point;->y:I

    if-lt v1, v10, :cond_7

    const/4 v1, 0x1

    :goto_4
    if-eq v0, v1, :cond_5

    :cond_3
    iget v1, v11, Landroid/graphics/Point;->x:I

    iget v4, v11, Landroid/graphics/Point;->y:I

    iget v0, v12, Landroid/graphics/Point;->x:I

    iget v3, v12, Landroid/graphics/Point;->y:I

    iget v2, v12, Landroid/graphics/Point;->x:I

    iget v5, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v9, :cond_4

    iget v2, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_8

    mul-int/lit8 v2, v9, 0x2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v9, 0x2

    sub-int/2addr v1, v2

    :cond_4
    :goto_5
    iget v2, v12, Landroid/graphics/Point;->y:I

    if-lt v2, v10, :cond_9

    const/4 v2, 0x1

    :goto_6
    iget v5, v11, Landroid/graphics/Point;->y:I

    if-lt v5, v10, :cond_a

    const/4 v5, 0x1

    :goto_7
    if-eq v2, v5, :cond_f

    iget v2, v12, Landroid/graphics/Point;->y:I

    if-lt v2, v10, :cond_b

    mul-int/lit8 v2, v9, 0x2

    sub-int v2, v3, v2

    mul-int/lit8 v3, v9, 0x2

    add-int/2addr v3, v4

    :goto_8
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_5
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v1, v12, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, v12, Landroid/graphics/Point;->x:I

    iput v0, v11, Landroid/graphics/Point;->x:I

    iget v0, v12, Landroid/graphics/Point;->y:I

    iput v0, v11, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    mul-int/lit8 v2, v9, 0x2

    sub-int/2addr v0, v2

    mul-int/lit8 v2, v9, 0x2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    mul-int/lit8 v2, v9, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v9, 0x2

    sub-int v3, v4, v3

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mRepeatPath:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    neg-int v1, v9

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    mul-int/lit8 v1, v9, 0x2

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    :cond_d
    mul-int/lit8 v1, v9, 0x2

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_e

    const/4 v1, 0x0

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    :cond_e
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    neg-int v3, v9

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_f
    move v2, v3

    move v3, v4

    goto/16 :goto_8
.end method

.method protected drawOld(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 11

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x2

    if-lt v7, v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v5, Landroid/graphics/Rect;

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    invoke-static {v5, v0, v5}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 v2, v7, -0x2

    move v4, v2

    move-object v3, v0

    move-object v2, v6

    :goto_1
    if-ltz v4, :cond_6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->union(II)V

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    invoke-static {v5, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v2, v6

    :goto_2
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move-object v3, v0

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v2}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_4
    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v7}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    if-gt v8, v9, :cond_5

    move-object v0, v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v7, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v3, v7, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mLineBounds:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getNumberOfPoints()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v0, v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v1

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/osmdroid/views/overlay/Polyline;->precomputePoints(Lorg/osmdroid/views/Projection;)V

    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    move v0, v1

    move v2, v1

    :goto_0
    iget v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    if-nez v2, :cond_0

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v4, v0, v6}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    :goto_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {v4, v0, v6}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v0, v6, v5, v3}, Lorg/osmdroid/views/overlay/Polyline;->linePointDist(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Z)D

    move-result-wide v6

    cmpg-double v0, v6, p2

    if-gtz v0, :cond_1

    move v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint1:Landroid/graphics/Point;

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lorg/osmdroid/views/overlay/Polyline;->mTempPoint2:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1

    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->onDestroy()V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3, p2}, Lorg/osmdroid/views/overlay/Polyline;->isCloseTo(Lorg/osmdroid/util/GeoPoint;DLorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    if-nez v1, :cond_0

    invoke-virtual {p0, p0, p2, v0}, Lorg/osmdroid/views/overlay/Polyline;->onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    invoke-interface {v1, p0, p2, v0}, Lorg/osmdroid/views/overlay/Polyline$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected precomputePoints(Lorg/osmdroid/views/Projection;)V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    iget v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPoints:Ljava/util/ArrayList;

    iget v2, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3, v0}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPointsPrecomputed:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->clearPath()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x2

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v1, v3

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOriginalPoints:[[D

    aget-object v1, v1, v2

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v1, v5

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/Polyline;->mGeodesic:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v1, v2, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, v0}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v5

    const v6, 0x186a0

    div-int/2addr v5, v6

    invoke-virtual {p0, v1, v0, v5}, Lorg/osmdroid/views/overlay/Polyline;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Polyline;->addPoint(Lorg/osmdroid/util/GeoPoint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/Polyline;->setEnabled(Z)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0, p0, p1, v1, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    goto :goto_0
.end method
