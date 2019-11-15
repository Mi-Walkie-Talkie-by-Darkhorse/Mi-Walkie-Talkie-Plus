.class public Lcom/yalantis/ucrop/view/CropImageView;
.super Lcom/yalantis/ucrop/view/TransformImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/CropImageView$b;,
        Lcom/yalantis/ucrop/view/CropImageView$a;
    }
.end annotation


# instance fields
.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/Matrix;

.field private k:F

.field private l:F

.field private m:Lcom/yalantis/ucrop/a/c;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/Runnable;

.field private p:F

.field private q:F

.field private r:I

.field private s:I

.field private t:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->l:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->o:Ljava/lang/Runnable;

    iput v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:I

    iput v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:I

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->t:J

    return-void
.end method

.method static synthetic a(Lcom/yalantis/ucrop/view/CropImageView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method private b(FF)V
    .locals 3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, p2

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:F

    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:F

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->l:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->p:F

    return-void
.end method

.method private c(FF)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, p1

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v3, p1, v2

    sub-float/2addr v0, v3

    div-float/2addr v0, v4

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    mul-float v3, p2, v2

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private e()[F
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->a:[F

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->a:[F

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/yalantis/ucrop/c/g;->a(Landroid/graphics/RectF;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static {v0}, Lcom/yalantis/ucrop/c/g;->b([F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v2}, Lcom/yalantis/ucrop/c/g;->b([F)Landroid/graphics/RectF;

    move-result-object v5

    iget v0, v4, Landroid/graphics/RectF;->left:F

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, v4, Landroid/graphics/RectF;->top:F

    iget v3, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroid/graphics/RectF;->right:F

    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    cmpl-float v7, v0, v1

    if-lez v7, :cond_1

    :goto_0
    aput v0, v5, v6

    const/4 v6, 0x1

    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    aput v0, v5, v6

    const/4 v2, 0x2

    cmpg-float v0, v3, v1

    if-gez v0, :cond_3

    move v0, v3

    :goto_2
    aput v0, v5, v2

    const/4 v0, 0x3

    cmpg-float v2, v4, v1

    if-gez v2, :cond_0

    move v1, v4

    :cond_0
    aput v1, v5, v0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v5

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->b(FF)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->a(FFF)V

    return-void
.end method

.method public a(FFF)V
    .locals 1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;->c(FFF)V

    :cond_0
    return-void
.end method

.method protected a(FFFJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v4

    sub-float v5, p1, v4

    new-instance v0, Lcom/yalantis/ucrop/view/CropImageView$b;

    move-object v1, p0

    move-wide v2, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/yalantis/ucrop/view/CropImageView$b;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFF)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_x:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_aspect_ratio_y:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    cmpl-float v2, v1, v3

    if-nez v2, :cond_1

    :cond_0
    iput v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    :goto_0
    return-void

    :cond_1
    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap$CompressFormat;ILcom/yalantis/ucrop/a/a;)V
    .locals 10
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yalantis/ucrop/a/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->a()V

    invoke-virtual {p0, v9}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    new-instance v8, Lcom/yalantis/ucrop/model/c;

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->a:[F

    invoke-static {v1}, Lcom/yalantis/ucrop/c/g;->b([F)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/yalantis/ucrop/model/c;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    new-instance v0, Lcom/yalantis/ucrop/model/a;

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:I

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getImageInputPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getImageOutputPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getExifInfo()Lcom/yalantis/ucrop/model/b;

    move-result-object v7

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/yalantis/ucrop/model/a;-><init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lcom/yalantis/ucrop/model/b;)V

    new-instance v1, Lcom/yalantis/ucrop/b/a;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v4, v8

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/yalantis/ucrop/b/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/c;Lcom/yalantis/ucrop/model/a;Lcom/yalantis/ucrop/a/a;)V

    new-array v0, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/b/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a([F)Z
    .locals 3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/yalantis/ucrop/c/g;->a(Landroid/graphics/RectF;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-static {v0}, Lcom/yalantis/ucrop/c/g;->b([F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v1}, Lcom/yalantis/ucrop/c/g;->b([F)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->b()V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_2

    div-float v2, v1, v0

    iput v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    :cond_2
    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->e:I

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->d:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    int-to-float v5, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->e:I

    int-to-float v3, v3

    invoke-virtual {v4, v5, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->b(FF)V

    invoke-direct {p0, v1, v0}, Lcom/yalantis/ucrop/view/CropImageView;->c(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->m:Lcom/yalantis/ucrop/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->m:Lcom/yalantis/ucrop/a/c;

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/a/c;->a(F)V

    :cond_3
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView$a;->b(F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView$a;->a(F)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/yalantis/ucrop/view/CropImageView;->e:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    int-to-float v5, v3

    iget v6, p0, Lcom/yalantis/ucrop/view/CropImageView;->d:I

    int-to-float v6, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v7, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1
.end method

.method public b(F)V
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->b(FFF)V

    return-void
.end method

.method public b(FFF)V
    .locals 1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    div-float v0, p1, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/yalantis/ucrop/view/CropImageView;->c(FFF)V

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->d(FFF)V

    return-void
.end method

.method public c(FFF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->c(FFF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->c(FFF)V

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->a:[F

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->a([F)Z

    move-result v0

    return v0
.end method

.method public getCropBoundsChangeListener()Lcom/yalantis/ucrop/a/c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->m:Lcom/yalantis/ucrop/a/c;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->p:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->q:F

    return v0
.end method

.method public getTargetAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    return v0
.end method

.method public setCropBoundsChangeListener(Lcom/yalantis/ucrop/a/c;)V
    .locals 0
    .param p1    # Lcom/yalantis/ucrop/a/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->m:Lcom/yalantis/ucrop/a/c;

    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/CropImageView;->f()V

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method public setImageToWrapCropBounds()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds(Z)V

    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
    .locals 12

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->b:[F

    aget v4, v0, v3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->b:[F

    aget v5, v0, v11

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentScale()F

    move-result v8

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v6, v0, v4

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v7, v0, v5

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->a:[F

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->a:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->a([F)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/CropImageView;->e()[F

    move-result-object v0

    aget v1, v0, v3

    const/4 v2, 0x2

    aget v2, v0, v2

    add-float/2addr v1, v2

    neg-float v6, v1

    aget v1, v0, v11

    const/4 v2, 0x3

    aget v0, v0, v2

    add-float/2addr v0, v1

    neg-float v7, v0

    :goto_0
    if-eqz p1, :cond_2

    new-instance v0, Lcom/yalantis/ucrop/view/CropImageView$a;

    iget-wide v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->t:J

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/yalantis/ucrop/view/CropImageView$a;-><init>(Lcom/yalantis/ucrop/view/CropImageView;JFFFFFFZ)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/CropImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getCurrentAngle()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->a:[F

    invoke-static {v1}, Lcom/yalantis/ucrop/c/g;->a([F)[F

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    aget v3, v1, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    aget v1, v1, v11

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v8

    sub-float v9, v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/yalantis/ucrop/view/CropImageView;->a(FF)V

    if-nez v10, :cond_0

    add-float v0, v8, v9

    iget-object v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/CropImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yalantis/ucrop/view/CropImageView;->b(FFF)V

    goto :goto_1
.end method

.method public setImageToWrapCropBoundsAnimDuration(J)V
    .locals 3
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->t:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxResultImageSizeX(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->r:I

    return-void
.end method

.method public setMaxResultImageSizeY(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0xaL
        .end annotation
    .end param

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->s:I

    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->l:F

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    :goto_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->m:Lcom/yalantis/ucrop/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/CropImageView;->m:Lcom/yalantis/ucrop/a/c;

    iget v1, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/a/c;->a(F)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/yalantis/ucrop/view/CropImageView;->k:F

    goto :goto_1
.end method
