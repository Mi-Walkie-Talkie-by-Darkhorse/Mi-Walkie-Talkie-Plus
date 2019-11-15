.class public Lcom/yalantis/ucrop/view/TransformImageView;
.super Landroid/widget/ImageView;
.source "TransformImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/view/TransformImageView$a;
    }
.end annotation


# instance fields
.field protected final a:[F

.field protected final b:[F

.field protected c:Landroid/graphics/Matrix;

.field protected d:I

.field protected e:I

.field protected f:Lcom/yalantis/ucrop/view/TransformImageView$a;

.field protected g:Z

.field protected h:Z

.field private final i:[F

.field private j:[F

.field private k:[F

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/yalantis/ucrop/model/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->a:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->i:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    iput-boolean v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->g:Z

    iput-boolean v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Z

    iput v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/yalantis/ucrop/view/TransformImageView;Lcom/yalantis/ucrop/model/b;)Lcom/yalantis/ucrop/model/b;
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->o:Lcom/yalantis/ucrop/model/b;

    return-object p1
.end method

.method static synthetic a(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->a:[F

    iget-object v2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->j:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->b:[F

    iget-object v2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->k:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method

.method static synthetic b(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->n:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;)F
    .locals 6
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x9L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->i:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->i:[F

    aget v0, v0, p2

    return v0
.end method

.method public a(FF)V
    .locals 2

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Matrix;)F
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Landroid/graphics/Matrix;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    return v0
.end method

.method protected b()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

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

    const-string v2, "TransformImageView"

    const-string v3, "Image size: [%d:%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    float-to-int v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    float-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v2}, Lcom/yalantis/ucrop/c/g;->a(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->j:[F

    invoke-static {v2}, Lcom/yalantis/ucrop/c/g;->b(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->k:[F

    iput-boolean v8, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    invoke-interface {v0}, Lcom/yalantis/ucrop/view/TransformImageView$a;->a()V

    goto :goto_0
.end method

.method public c(FFF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Landroid/graphics/Matrix;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView$a;->b(F)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public d(FFF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/view/TransformImageView;->b(Landroid/graphics/Matrix;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/view/TransformImageView$a;->a(F)V

    :cond_0
    return-void
.end method

.method public getCurrentAngle()F
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->b(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getCurrentScale()F
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getExifInfo()Lcom/yalantis/ucrop/model/b;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->o:Lcom/yalantis/ucrop/model/b;

    return-object v0
.end method

.method public getImageInputPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getImageOutputPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBitmapSize()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yalantis/ucrop/c/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:I

    :cond_0
    iget v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:I

    return v0
.end method

.method public getViewBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/yalantis/ucrop/c/d;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/c/d;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/c/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v2, v0

    iput v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->d:I

    sub-int v0, v3, v1

    iput v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->e:I

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->b()V

    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/yalantis/ucrop/c/d;

    invoke-direct {v0, p1}, Lcom/yalantis/ucrop/c/d;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->a()V

    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getMaxBitmapSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/TransformImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lcom/yalantis/ucrop/view/TransformImageView$1;

    invoke-direct {v5, p0}, Lcom/yalantis/ucrop/view/TransformImageView$1;-><init>(Lcom/yalantis/ucrop/view/TransformImageView;)V

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/yalantis/ucrop/c/a;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;IILcom/yalantis/ucrop/a/b;)V

    return-void
.end method

.method public setMaxBitmapSize(I)V
    .locals 0

    iput p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->l:I

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "TransformImageView"

    const-string v1, "Invalid ScaleType. Only ScaleType.MATRIX can be used"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView;->f:Lcom/yalantis/ucrop/view/TransformImageView$a;

    return-void
.end method
