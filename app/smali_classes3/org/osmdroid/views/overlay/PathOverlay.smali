.class public Lorg/osmdroid/views/overlay/PathOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;


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
            "Ljava/util/ArrayList<",
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
    .locals 1

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

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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
    .locals 25

    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v3

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v5

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    mul-double v7, v7, v3

    div-double/2addr v7, v5

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    mul-double v9, v9, v3

    div-double/2addr v9, v5

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    mul-double v11, v11, v3

    div-double/2addr v11, v5

    sub-double v3, v1, v9

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    sub-double v15, v7, v11

    div-double v17, v15, v5

    move-wide/from16 p1, v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v13, v13, v11

    add-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    mul-double v3, v3, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v17, v17, v15

    sub-double v13, v13, v17

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    const-wide v13, -0x406e20b95dad62c7L    # -0.017453292519943295

    div-double/2addr v11, v13

    const-wide/16 v13, 0x0

    cmpg-double v15, v11, v13

    const/4 v11, 0x0

    add-int/lit8 v12, v0, 0x1

    :goto_0
    if-ge v11, v12, :cond_0

    int-to-double v13, v0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double v13, v15, v13

    int-to-double v5, v11

    mul-double v13, v13, v5

    sub-double/2addr v15, v13

    mul-double v15, v15, v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    div-double/2addr v5, v15

    mul-double v13, v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    div-double/2addr v13, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v15, v15, v19

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    move-wide/from16 v21, v3

    add-double v3, v15, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v15, v15, v19

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v19, v19, v23

    move-wide/from16 v23, v7

    add-double v7, v15, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v5, v5, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    add-double/2addr v5, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v7, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v5, v7

    div-double/2addr v3, v7

    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v6, v3, v4}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(DD)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v3, v21

    move-wide/from16 v7, v23

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v7, p0

    return-void
.end method

.method public addPoint(DD)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    double-to-int p1, p1

    double-to-int p2, p3

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs addPoints([Lorg/osmdroid/api/IGeoPoint;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    add-int/lit8 v1, v1, 0x1

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
    .locals 10

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    :goto_0
    iget v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    const/4 v7, 0x1

    if-ge v1, p3, :cond_2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v2, v3, v1}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    add-int/2addr v1, v7

    iput v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPointsPrecomputed:I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v8

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v9, Landroid/graphics/Point;->x:I

    iget v4, v9, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    move-object v3, v0

    :goto_1
    if-ltz p3, :cond_6

    iget-object v4, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Rect;->union(II)V

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    invoke-static {v2, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v3, v0

    :goto_2
    move-object v1, v4

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {p2, v1, v3}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_4
    iget-object v5, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mTempPoint2:Landroid/graphics/Point;

    invoke-virtual {p2, v4, v5}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v6, v8

    if-gt v6, v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v8, v5, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, v5, Landroid/graphics/Point;->x:I

    iput v1, v3, Landroid/graphics/Point;->x:I

    iget v1, v5, Landroid/graphics/Point;->y:I

    iput v1, v3, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mLineBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v5, v6, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :goto_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
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
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/PathOverlay;->mPaint:Landroid/graphics/Paint;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pPaint argument cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
