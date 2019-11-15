.class Landroid/support/transition/f;
.super Landroid/support/transition/y;
.source "ChangeBoundsPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# static fields
.field private static final w:[Ljava/lang/String;

.field private static x:Landroid/support/transition/k;


# instance fields
.field a:[I

.field b:Z

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/transition/f;->w:[Ljava/lang/String;

    new-instance v0, Landroid/support/transition/k;

    invoke-direct {v0}, Landroid/support/transition/k;-><init>()V

    sput-object v0, Landroid/support/transition/f;->x:Landroid/support/transition/k;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/transition/y;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/f;->a:[I

    iput-boolean v1, p0, Landroid/support/transition/f;->b:Z

    iput-boolean v1, p0, Landroid/support/transition/f;->c:Z

    return-void
.end method

.method private c(Landroid/support/transition/ae;)V
    .locals 7

    iget-object v0, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    iget-object v1, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v1, "android:changeBounds:parent"

    iget-object v2, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/transition/ae;->b:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/f;->a:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    iget-object v2, p0, Landroid/support/transition/f;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowY"

    iget-object v2, p0, Landroid/support/transition/f;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 17

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const-string v4, "android:changeBounds:parent"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/transition/ae;->b:Landroid/view/View;

    if-eq v2, v3, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    if-ne v2, v3, :cond_10

    :cond_4
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/transition/f;->c:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_1e

    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v9, v5

    sub-int v14, v11, v7

    sub-int v15, v10, v6

    sub-int v16, v12, v8

    const/4 v2, 0x0

    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    if-eqz v16, :cond_9

    if-eq v5, v6, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eq v7, v8, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    if-eq v9, v10, :cond_8

    add-int/lit8 v2, v2, 0x1

    :cond_8
    if-eq v11, v12, :cond_9

    add-int/lit8 v2, v2, 0x1

    :cond_9
    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/transition/f;->b:Z

    if-nez v3, :cond_11

    new-array v13, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    if-eq v5, v6, :cond_a

    invoke-virtual {v4, v5}, Landroid/view/View;->setLeft(I)V

    :cond_a
    if-eq v7, v8, :cond_b

    invoke-virtual {v4, v7}, Landroid/view/View;->setTop(I)V

    :cond_b
    if-eq v9, v10, :cond_c

    invoke-virtual {v4, v9}, Landroid/view/View;->setRight(I)V

    :cond_c
    if-eq v11, v12, :cond_d

    invoke-virtual {v4, v11}, Landroid/view/View;->setBottom(I)V

    :cond_d
    if-eq v5, v6, :cond_24

    const/4 v2, 0x1

    const-string v14, "left"

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v5, v15, v16

    const/4 v5, 0x1

    aput v6, v15, v5

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v13, v3

    :goto_2
    if-eq v7, v8, :cond_23

    add-int/lit8 v3, v2, 0x1

    const-string v5, "top"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v14, 0x0

    aput v7, v6, v14

    const/4 v7, 0x1

    aput v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v13, v2

    :goto_3
    if-eq v9, v10, :cond_22

    add-int/lit8 v2, v3, 0x1

    const-string v5, "right"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v9, v6, v7

    const/4 v7, 0x1

    aput v10, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v13, v3

    :goto_4
    if-eq v11, v12, :cond_e

    add-int/lit8 v3, v2, 0x1

    const-string v3, "bottom"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v12, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v13, v2

    :cond_e
    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v2, Landroid/support/transition/f$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/transition/f$1;-><init>(Landroid/support/transition/f;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/transition/f;->a(Landroid/support/transition/y$b;)Landroid/support/transition/y;

    :cond_f
    move-object v2, v3

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_11
    if-eq v13, v15, :cond_12

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v4, v2}, Landroid/view/View;->setRight(I)V

    :cond_12
    move/from16 v0, v16

    if-eq v14, v0, :cond_13

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v4, v2}, Landroid/view/View;->setBottom(I)V

    :cond_13
    if-eq v5, v6, :cond_14

    sub-int v2, v5, v6

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_14
    if-eq v7, v8, :cond_15

    sub-int v2, v7, v8

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_15
    sub-int v2, v6, v5

    int-to-float v5, v2

    sub-int v2, v8, v7

    int-to-float v6, v2

    sub-int v7, v15, v13

    sub-int v8, v16, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_16

    const/4 v2, 0x1

    :cond_16
    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_17

    add-int/lit8 v2, v2, 0x1

    :cond_17
    if-nez v7, :cond_18

    if-eqz v8, :cond_19

    :cond_18
    add-int/lit8 v2, v2, 0x1

    :cond_19
    new-array v9, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    const-string v5, "translationX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v5, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v9, v3

    :goto_5
    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_1a

    add-int/lit8 v3, v2, 0x1

    const-string v3, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v10

    aput v10, v5, v6

    const/4 v6, 0x1

    const/4 v10, 0x0

    aput v10, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v9, v2

    :cond_1a
    if-nez v7, :cond_1b

    if-eqz v8, :cond_1c

    :cond_1b
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v3, v5, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1c
    invoke-static {v4, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v2, Landroid/support/transition/f$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/transition/f$2;-><init>(Landroid/support/transition/f;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/transition/f;->a(Landroid/support/transition/y$b;)Landroid/support/transition/y;

    :cond_1d
    new-instance v2, Landroid/support/transition/f$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/transition/f$3;-><init>(Landroid/support/transition/f;)V

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v3

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowY"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v6, "android:changeBounds:windowX"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/ae;->a:Ljava/util/Map;

    const-string v7, "android:changeBounds:windowY"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v6, :cond_1f

    if-eq v5, v2, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/transition/f;->a:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static/range {p1 .. p1}, Landroid/support/transition/ah;->d(Landroid/view/View;)Landroid/support/transition/ah;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/support/transition/ah;->a(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/transition/f;->a:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int v9, v3, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/transition/f;->a:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int v10, v5, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/transition/f;->a:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v3, v11

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/transition/f;->a:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v5, v11

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v5, v11

    invoke-direct {v7, v9, v10, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/transition/f;->a:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    sub-int v5, v6, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/transition/f;->a:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int v9, v2, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/transition/f;->a:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v6, v10

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/transition/f;->a:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v2, v10

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v2, v10

    invoke-direct {v3, v5, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v2, "bounds"

    sget-object v5, Landroid/support/transition/f;->x:Landroid/support/transition/k;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v8, v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/transition/f$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v8, v4}, Landroid/support/transition/f$4;-><init>(Landroid/support/transition/f;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_21
    move v2, v3

    goto/16 :goto_5

    :cond_22
    move v2, v3

    goto/16 :goto_4

    :cond_23
    move v3, v2

    goto/16 :goto_3

    :cond_24
    move v2, v3

    goto/16 :goto_2
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/f;->c(Landroid/support/transition/ae;)V

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/transition/f;->w:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/transition/f;->c(Landroid/support/transition/ae;)V

    return-void
.end method
