.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SimpleFastPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;
    }
.end annotation


# instance fields
.field private clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

.field private curX:F

.field private curY:F

.field private grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

.field private gridBool:[[Z

.field private gridHei:I

.field private gridWid:I

.field private final mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private final mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

.field private mSelectedPoint:Ljava/lang/Integer;

.field private final mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

.field private numLabels:I

.field private offsetX:F

.field private offsetY:F

.field private prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private prevNumPointers:I

.field private startX:F

.field private startY:F

.field private viewHei:I

.field private viewWid:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;)V
    .locals 1

    invoke-static {}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->getDefaultStyle()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v10, v3

    move-object v6, v4

    move-object v4, v2

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/api/IGeoPoint;

    if-eqz v2, :cond_0

    if-eqz v6, :cond_1

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v3, v12, v14

    if-lez v3, :cond_2

    :cond_1
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpg-double v3, v12, v14

    if-gez v3, :cond_a

    :cond_3
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v3, v10, v12

    if-lez v3, :cond_9

    :cond_4
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2
    if-eqz v8, :cond_5

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v4, v10, v12

    if-gez v4, :cond_8

    :cond_5
    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_3
    move-object v8, v2

    move-object v4, v3

    move-object v10, v5

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    :goto_4
    return-void

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    goto :goto_4

    :cond_8
    move-object v2, v8

    goto :goto_3

    :cond_9
    move-object v3, v4

    goto :goto_2

    :cond_a
    move-object v5, v10

    goto :goto_1
.end method

.method private computeGrid(Lorg/osmdroid/views/MapView;)V
    .locals 13

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v12

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_6

    :cond_0
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    iput v11, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    invoke-virtual {v2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v5, v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v6, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v4, v6, :cond_3

    iget v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v5, v6, :cond_3

    if-ltz v4, :cond_3

    if-ltz v5, :cond_3

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v6, v6, v4

    aget-object v6, v6, v5

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v4, v6, v4

    new-instance v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v7}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v7

    if-eqz v7, :cond_5

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v6, p0, v1, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;)V

    aput-object v6, v4, v5

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    array-length v2, v1

    move v0, v11

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v10

    goto :goto_1

    :cond_6
    return-void
.end method

.method private updateGrid(Lorg/osmdroid/views/MapView;)V
    .locals 2

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->MAXIMUM_OPTIMIZATION:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 13

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v10

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$simplefastpoint$SimpleFastPointOverlayOptions$RenderingAlgorithm:[I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-virtual {v10, v0, v9}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v0, v1, :cond_14

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->computeGrid(Lorg/osmdroid/views/MapView;)V

    :cond_4
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->DENSITY_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMaxNShownLabels:I

    if-le v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_8

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    if-lt v0, v1, :cond_8

    :cond_6
    const/4 v0, 0x1

    move v6, v0

    :goto_1
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    sub-float v11, v0, v1

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    sub-float v12, v0, v1

    const/4 v0, 0x0

    move v7, v0

    :goto_2
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v7, v0, :cond_2

    const/4 v0, 0x0

    move v8, v0

    :goto_3
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v8, v0, :cond_a

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v1, v1, v7

    aget-object v1, v1, v8

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_4
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    invoke-static {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v1, v1, v7

    aget-object v1, v1, v8

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v2, v2, v7

    aget-object v2, v2, v8

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v12

    iget v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v1, v0, v1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iget v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    aget-object v0, v0, v7

    aget-object v0, v0, v8

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iget v4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    sub-float/2addr v0, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v4, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->grid:[[Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$LabelledPoint;

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_b

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_e

    :cond_b
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    :cond_c
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_f

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    move v7, v0

    :goto_5
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v8

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/osmdroid/api/IGeoPoint;

    if-eqz v6, :cond_d

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_d

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_d

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_d

    invoke-virtual {v10, v6, v9}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v0, v2, :cond_d

    iget v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v1, v2, :cond_d

    if-ltz v0, :cond_d

    if-ltz v1, :cond_d

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v2, v2, v0

    aget-boolean v2, v2, v1

    if-nez v2, :cond_d

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v0, v2, v0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v0, v1, :cond_10

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_7
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v7, :cond_d

    check-cast v6, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v6}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget v1, v9, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_e
    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_c

    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_5

    :cond_10
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v1, v0, v1

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v2, v0, v2

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v3, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v4, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :pswitch_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_12

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    move v7, v0

    :goto_9
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v8

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/osmdroid/api/IGeoPoint;

    if-eqz v6, :cond_11

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_11

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v8}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_11

    invoke-virtual {v10, v6, v9}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v0, v1, :cond_13

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_b
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v7, :cond_11

    check-cast v6, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v6}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v1, v9, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_12
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_9

    :cond_13
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v1, v0, v1

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v2, v0, v2

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v3, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float/2addr v4, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_14
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    sub-float v1, v0, v1

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    sub-float v2, v0, v2

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    add-float/2addr v3, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v4, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v4, v4, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    add-float/2addr v4, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v5, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getSelectedPoint()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    return-object v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 11

    const/high16 v10, 0x42480000    # 50.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mClickable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    move v1, v3

    :goto_1
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_2

    :cond_4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->setSelectedPoint(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Ljava/lang/Integer;)V

    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    sget-object v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->MAXIMUM_OPTIMIZATION:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    :goto_1
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->computeGrid(Lorg/osmdroid/views/MapView;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevNumPointers:I

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    goto/16 :goto_0

    :pswitch_2
    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startX:F

    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startY:F

    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curX:F

    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->curY:F

    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetX:F

    iput v3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->offsetY:F

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    return-void
.end method

.method public setSelectedPoint(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    goto :goto_0
.end method
