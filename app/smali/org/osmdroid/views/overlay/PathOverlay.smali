.class public Lorg/osmdroid/views/overlay/PathOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "PathOverlay.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mLineBounds:Landroid/graphics/Rect;

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

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTempPoint2:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint1:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint2:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/PathOverlay;->clearPath()V

    return-void
.end method

.method public constructor <init>(IFLandroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/PathOverlay;->addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V

    return-void
.end method

.method public addGreatCircle(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)V
    .locals 30

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v8, v6, v8

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, v6, v10

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double v12, v6, v12

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v14

    const-wide v14, 0x4066800000000000L    # 180.0

    div-double v14, v6, v14

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v16, v8, v12

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    sub-double v20, v10, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    mul-double v16, v16, v6

    sub-double v6, v10, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v6, v6, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v22, v10, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v18, -0x406e20b95dad62c7L    # -0.017453292519943295

    div-double v6, v6, v18

    const-wide/16 v18, 0x0

    cmpg-double v18, v6, v18

    if-gez v18, :cond_0

    const-wide v18, 0x4076800000000000L    # 360.0

    add-double v6, v6, v18

    :cond_0
    const/4 v6, 0x0

    add-int/lit8 v7, p3, 0x1

    :goto_0
    if-ge v6, v7, :cond_1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    int-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, v18

    mul-double v20, v20, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    div-double v20, v20, v22

    mul-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    div-double v18, v18, v22

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v20

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v24, v24, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v24, v24, v20

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v26, v26, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v20, v20, v26

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v18, v18, v26

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v20, v20, v26

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    const-wide v22, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double v18, v18, v22

    const-wide v22, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(DD)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public addPoint(DD)V
    .locals 5

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    double-to-int v2, p1

    double-to-int v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPoint(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 4

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(DD)V

    return-void
.end method

.method public addPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addPoints([Lorg/osmdroid/api/IGeoPoint;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearPath()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 11

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x2

    if-lt v7, v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    :goto_1
    iget v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    if-ge v0, v7, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    iget v2, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    goto :goto_1

    :cond_2
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

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 v2, v7, -0x2

    move v4, v2

    move-object v3, v0

    move-object v2, v6

    :goto_2
    if-ltz v4, :cond_6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v7, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->union(II)V

    iget-object v7, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    invoke-static {v5, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v2, v6

    :goto_3
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move-object v3, v0

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v1, v3, v2}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v7, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_4
    iget-object v7, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint2:Landroid/graphics/Point;

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

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v7, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget v3, v7, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, v0, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getNumberOfPoints()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    return-void
.end method
