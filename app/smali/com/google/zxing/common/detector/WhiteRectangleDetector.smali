.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    div-int/lit8 v0, p2, 0x2

    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 12

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v0, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v7, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v7, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    invoke-direct {v10, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v7, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v4, v9

    invoke-direct {v8, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v7

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    invoke-direct {v4, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    goto :goto_0
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    :goto_0
    if-gt p1, p2, :cond_3

    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-gt p1, p2, :cond_3

    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 7

    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    sub-float v0, p3, p1

    int-to-float v2, v1

    div-float v2, v0, v2

    sub-float v0, p4, p2

    int-to-float v3, v1

    div-float v3, v0, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v5, p2

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget v7, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v5, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    move v0, v3

    move v12, v1

    :goto_0
    if-eqz v12, :cond_1e

    move v12, v1

    move v13, v11

    move v11, v3

    :cond_0
    :goto_1
    if-nez v12, :cond_1

    if-nez v13, :cond_3

    :cond_1
    iget v12, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v6, v12, :cond_3

    invoke-direct {p0, v5, v4, v6, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v12

    if-eqz v12, :cond_2

    add-int/lit8 v6, v6, 0x1

    move v13, v1

    move v11, v1

    goto :goto_1

    :cond_2
    if-nez v13, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget v12, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v6, v12, :cond_4

    move v3, v1

    move v8, v6

    move v9, v7

    move v6, v4

    move v7, v5

    :goto_2
    if-nez v3, :cond_1d

    if-eqz v0, :cond_1d

    sub-int v10, v8, v9

    move v0, v1

    move-object v5, v2

    :goto_3
    if-nez v5, :cond_15

    if-ge v0, v10, :cond_15

    int-to-float v3, v9

    sub-int v4, v6, v0

    int-to-float v4, v4

    add-int v5, v9, v0

    int-to-float v5, v5

    int-to-float v11, v6

    invoke-direct {p0, v3, v4, v5, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    move-object v5, v3

    goto :goto_3

    :cond_4
    move v12, v10

    move v10, v11

    move v11, v1

    :cond_5
    :goto_4
    if-nez v11, :cond_6

    if-nez v12, :cond_8

    :cond_6
    iget v11, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v4, v11, :cond_8

    invoke-direct {p0, v7, v6, v4, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v4, v4, 0x1

    move v12, v1

    move v10, v1

    goto :goto_4

    :cond_7
    if-nez v12, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget v11, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v4, v11, :cond_9

    move v3, v1

    move v8, v6

    move v9, v7

    move v6, v4

    move v7, v5

    goto :goto_2

    :cond_9
    move v11, v9

    move v9, v10

    move v10, v1

    :cond_a
    :goto_5
    if-nez v10, :cond_b

    if-nez v11, :cond_d

    :cond_b
    if-ltz v7, :cond_d

    invoke-direct {p0, v5, v4, v7, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v10

    if-eqz v10, :cond_c

    add-int/lit8 v7, v7, -0x1

    move v11, v1

    move v9, v1

    goto :goto_5

    :cond_c
    if-nez v11, :cond_a

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_d
    if-gez v7, :cond_e

    move v3, v1

    move v8, v6

    move v9, v7

    move v6, v4

    move v7, v5

    goto :goto_2

    :cond_e
    move v10, v9

    move v9, v8

    move v8, v1

    :cond_f
    :goto_6
    if-nez v8, :cond_10

    if-nez v9, :cond_12

    :cond_10
    if-ltz v5, :cond_12

    invoke-direct {p0, v7, v6, v5, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v8

    if-eqz v8, :cond_11

    add-int/lit8 v5, v5, -0x1

    move v9, v1

    move v10, v1

    goto :goto_6

    :cond_11
    if-nez v9, :cond_f

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_12
    if-gez v5, :cond_13

    move v3, v1

    move v8, v6

    move v9, v7

    move v6, v4

    move v7, v5

    goto/16 :goto_2

    :cond_13
    if-eqz v10, :cond_14

    move v0, v1

    :cond_14
    move v8, v9

    move v9, v11

    move v11, v13

    move v14, v12

    move v12, v10

    move v10, v14

    goto/16 :goto_0

    :cond_15
    if-nez v5, :cond_16

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    move v0, v1

    move-object v4, v2

    :goto_7
    if-nez v4, :cond_17

    if-ge v0, v10, :cond_17

    int-to-float v3, v9

    add-int v4, v7, v0

    int-to-float v4, v4

    add-int v11, v9, v0

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v3, v4, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    move-object v4, v3

    goto :goto_7

    :cond_17
    if-nez v4, :cond_18

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    move v0, v1

    move-object v3, v2

    :goto_8
    if-nez v3, :cond_19

    if-ge v0, v10, :cond_19

    int-to-float v3, v8

    add-int v9, v7, v0

    int-to-float v9, v9

    sub-int v11, v8, v0

    int-to-float v11, v11

    int-to-float v12, v7

    invoke-direct {p0, v3, v9, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    if-nez v3, :cond_1a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1a
    move-object v0, v2

    :goto_9
    if-nez v0, :cond_1b

    if-ge v1, v10, :cond_1b

    int-to-float v0, v8

    sub-int v2, v6, v1

    int-to-float v2, v2

    sub-int v7, v8, v1

    int-to-float v7, v7

    int-to-float v9, v6

    invoke-direct {p0, v0, v2, v7, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    if-nez v0, :cond_1c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-direct {p0, v0, v5, v3, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1e
    move v8, v6

    move v9, v7

    move v6, v4

    move v7, v5

    goto/16 :goto_2
.end method
