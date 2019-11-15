.class public Lorg/osmdroid/util/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# static fields
.field public static final DEG2RAD:D = 0.017453292519943295

.field public static final RAD2DEG:D = 57.29577951308232


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Max4(DDDD)D
    .locals 4

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static Min4(DDDD)D
    .locals 4

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 28

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct/range {p4 .. p4}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    move/from16 v0, p3

    float-to-double v4, v0

    const-wide v6, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, p1

    int-to-double v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, p2

    int-to-double v8, v4

    move/from16 v0, p1

    int-to-double v4, v0

    mul-double v10, v6, v20

    sub-double/2addr v4, v10

    mul-double v10, v8, v18

    add-double/2addr v4, v10

    move/from16 v0, p2

    int-to-double v10, v0

    mul-double v6, v6, v18

    sub-double v6, v10, v6

    mul-double v8, v8, v20

    sub-double v12, v6, v8

    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int v6, v6, p1

    int-to-double v8, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, p2

    int-to-double v10, v6

    move/from16 v0, p1

    int-to-double v6, v0

    mul-double v14, v8, v20

    sub-double/2addr v6, v14

    mul-double v14, v10, v18

    add-double/2addr v6, v14

    move/from16 v0, p2

    int-to-double v14, v0

    mul-double v8, v8, v18

    sub-double v8, v14, v8

    mul-double v10, v10, v20

    sub-double v14, v8, v10

    move-object/from16 v0, p0

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v8, p1

    int-to-double v10, v8

    move-object/from16 v0, p0

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, p2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    move/from16 v0, p1

    int-to-double v8, v0

    mul-double v22, v10, v20

    sub-double v8, v8, v22

    mul-double v22, v16, v18

    add-double v8, v8, v22

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v10, v10, v18

    sub-double v10, v22, v10

    mul-double v16, v16, v20

    sub-double v16, v10, v16

    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/Rect;->right:I

    sub-int v10, v10, p1

    int-to-double v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v10, p2

    int-to-double v0, v10

    move-wide/from16 v24, v0

    move/from16 v0, p1

    int-to-double v10, v0

    mul-double v26, v22, v20

    sub-double v10, v10, v26

    mul-double v26, v24, v18

    add-double v10, v10, v26

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v18, v18, v22

    sub-double v18, v26, v18

    mul-double v20, v20, v24

    sub-double v18, v18, v20

    invoke-static/range {v4 .. v11}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v12 .. v19}, Lorg/osmdroid/util/GeometryMath;->Min4(DDDD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v4 .. v11}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static/range {v12 .. v19}, Lorg/osmdroid/util/GeometryMath;->Max4(DDDD)D

    move-result-wide v6

    double-to-int v5, v6

    move-object/from16 v0, p4

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-object p4
.end method

.method public static final getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0, v1, p2, p3}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
