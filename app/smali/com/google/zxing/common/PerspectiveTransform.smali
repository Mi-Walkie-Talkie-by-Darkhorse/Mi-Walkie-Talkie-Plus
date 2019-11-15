.class public final Lcom/google/zxing/common/PerspectiveTransform;
.super Ljava/lang/Object;
.source "PerspectiveTransform.java"


# instance fields
.field private final a11:F

.field private final a12:F

.field private final a13:F

.field private final a21:F

.field private final a22:F

.field private final a23:F

.field private final a31:F

.field private final a32:F

.field private final a33:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iput p4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iput p7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iput p2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iput p5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iput p8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iput p3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    iput p6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    iput p9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    return-void
.end method

.method public static quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 2

    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    invoke-static/range {p8 .. p15}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/zxing/common/PerspectiveTransform;->times(Lcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    return-object v0
.end method

.method public static quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 1

    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/PerspectiveTransform;->buildAdjoint()Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    return-object v0
.end method

.method public static squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 10

    sub-float v0, p0, p2

    add-float/2addr v0, p4

    sub-float v0, v0, p6

    sub-float v1, p1, p3

    add-float/2addr v1, p5

    sub-float v1, v1, p7

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/zxing/common/PerspectiveTransform;

    sub-float v1, p2, p0

    sub-float v2, p4, p2

    sub-float v4, p3, p1

    sub-float v5, p5, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    :goto_0
    return-object v0

    :cond_0
    sub-float v2, p2, p4

    sub-float v3, p6, p4

    sub-float v4, p3, p5

    sub-float v5, p7, p5

    mul-float v6, v2, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float/2addr v5, v0

    mul-float/2addr v3, v1

    sub-float v3, v5, v3

    div-float v7, v3, v6

    mul-float/2addr v1, v2

    mul-float/2addr v0, v4

    sub-float v0, v1, v0

    div-float v8, v0, v6

    new-instance v0, Lcom/google/zxing/common/PerspectiveTransform;

    sub-float v1, p2, p0

    mul-float v2, v7, p2

    add-float/2addr v1, v2

    sub-float v2, p6, p0

    mul-float v3, v8, p6

    add-float/2addr v2, v3

    sub-float v3, p3, p1

    mul-float v4, v7, p3

    add-float/2addr v4, v3

    sub-float v3, p7, p1

    mul-float v5, v8, p7

    add-float/2addr v5, v3

    const/high16 v9, 0x3f800000    # 1.0f

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    goto :goto_0
.end method


# virtual methods
.method buildAdjoint()Lcom/google/zxing/common/PerspectiveTransform;
    .locals 12

    new-instance v0, Lcom/google/zxing/common/PerspectiveTransform;

    iget v1, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v10, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v10, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v11, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method times(Lcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 12

    new-instance v0, Lcom/google/zxing/common/PerspectiveTransform;

    iget v1, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v2, p1, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iget v3, p1, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    iget v3, p1, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v3, p1, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iget v4, p1, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    iget v4, p1, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v4, p1, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iget v5, p1, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    iget v5, p1, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v5, p1, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iget v6, p1, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    iget v6, p1, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v6, p1, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iget v7, p1, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    iget v7, p1, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v7, p1, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iget v8, p1, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    iget v8, p1, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v8, p1, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iget v9, p1, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    iget v9, p1, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v9, p1, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iget v10, p1, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    iget v10, p1, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v10, p1, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iget v11, p1, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    iget v11, p1, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method public transformPoints([F)V
    .locals 17

    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v12, p1, v1

    add-int/lit8 v13, v1, 0x1

    aget v13, p1, v13

    mul-float v14, v5, v12

    mul-float v15, v8, v13

    add-float/2addr v14, v15

    add-float/2addr v14, v11

    mul-float v15, v3, v12

    mul-float v16, v6, v13

    add-float v15, v15, v16

    add-float/2addr v15, v9

    div-float/2addr v15, v14

    aput v15, p1, v1

    add-int/lit8 v15, v1, 0x1

    mul-float/2addr v12, v4

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    add-float/2addr v12, v10

    div-float/2addr v12, v14

    aput v12, p1, v15

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transformPoints([F[F)V
    .locals 7

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    aput v5, p1, v0

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
