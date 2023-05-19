.class public Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "QMUIRadiusImageView.java"


# static fields
.field private static final x:Landroid/graphics/Bitmap$Config;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/ColorFilter;

.field private n:Landroid/graphics/ColorFilter;

.field private o:Landroid/graphics/BitmapShader;

.field private p:Z

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Matrix;

.field private u:I

.field private v:I

.field private w:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->x:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIRadiusImageViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUIRadiusImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    .line 6
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->i:Z

    .line 8
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->p:Z

    .line 9
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->r:Landroid/graphics/RectF;

    .line 11
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->t:Landroid/graphics/Matrix;

    .line 15
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_border_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->d:I

    .line 18
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_border_color:I

    const p3, -0x777778

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->e:I

    .line 19
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_selected_border_width:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->d:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->f:I

    .line 20
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_selected_border_color:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->g:I

    .line 21
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_selected_mask_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->h:I

    if-eqz p2, :cond_0

    .line 22
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->h:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    .line 23
    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_is_touch_select_mode_enabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->i:Z

    .line 24
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_is_circle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    if-nez p2, :cond_1

    .line 25
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_is_oval:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    .line 26
    :cond_1
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    if-nez p2, :cond_2

    .line 27
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView_qmui_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->j:I

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_6

    .line 3
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_5

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMinimumHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v5

    if-gtz v6, :cond_3

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 7
    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 8
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    float-to-int v5, v0

    float-to-int v6, v3

    const/4 v8, 0x0

    move v3, v1

    .line 10
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    :goto_0
    return-object v1

    .line 11
    :cond_6
    :try_start_0
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_7

    .line 12
    sget-object v2, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->x:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x2

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 13
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->x:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 15
    :goto_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private k(Landroid/graphics/Canvas;I)V
    .locals 5

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->m:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v0

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v0, p2

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 8
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 10
    :cond_2
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->j:I

    int-to-float v1, p2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private l(Landroid/graphics/Canvas;I)V
    .locals 5

    if-gtz p2, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v0, v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->g:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->e:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 8
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 9
    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 10
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 11
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 13
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->j:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->p:Z

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->t:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->n(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    :goto_0
    return-void
.end method

.method private n(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 8
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    .line 4
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, p2, :cond_1

    .line 7
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v4

    .line 8
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    .line 9
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 11
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr p2, v0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float v0, v0

    .line 12
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    add-float/2addr v2, v1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v0, v0

    .line 13
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 14
    invoke-virtual {p3, p1, v3, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 15
    :cond_1
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, p2, :cond_2

    .line 16
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 17
    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 18
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    mul-float v0, v0, p2

    .line 19
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    neg-float v0, v0

    div-float/2addr v0, v4

    mul-float p2, p2, v1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    neg-float p2, p2

    div-float/2addr p2, v4

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 20
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p1, p1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float p2, p2

    invoke-virtual {p3, v3, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 21
    :cond_2
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v2, p2, :cond_4

    .line 22
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float v2, p2

    div-float/2addr v2, v0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v5, v3

    div-float/2addr v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v6

    if-ltz v7, :cond_3

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v4

    int-to-float v2, v3

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    .line 23
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    add-float/2addr v0, p2

    add-float/2addr v1, v2

    .line 24
    invoke-virtual {p3, p2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 25
    :cond_3
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 26
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    mul-float v0, v0, p2

    mul-float v1, v1, p2

    .line 27
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v4

    .line 28
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    .line 29
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    add-float/2addr v0, p2

    add-float/2addr v1, v2

    .line 30
    invoke-virtual {p3, p2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 31
    :cond_4
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v2, p2, :cond_5

    .line 32
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 34
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p1, p1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float p2, p2

    invoke-virtual {p3, v3, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 35
    :cond_5
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 36
    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 37
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    mul-float v0, v0, p2

    mul-float v1, v1, p2

    .line 38
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v2, p2, :cond_6

    .line 39
    invoke-virtual {p3, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 40
    :cond_6
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v2, p2, :cond_7

    .line 41
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v4

    .line 42
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    .line 43
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    add-float/2addr v0, p2

    add-float/2addr v1, v2

    .line 44
    invoke-virtual {p3, p2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 45
    :cond_7
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p2

    sub-float/2addr p2, v0

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 46
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p2, p1

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float v2, v0

    sub-float/2addr v2, v1

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {p3, p2, v2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->e:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->d:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->j:I

    return v0
.end method

.method public getSelectedBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->g:I

    return v0
.end method

.method public getSelectedBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->f:I

    return v0
.end method

.method public getSelectedMaskColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->h:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    return v0
.end method

.method protected o(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    int-to-float p1, p1

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v0, :cond_6

    if-gtz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->f:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->d:I

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->s:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    if-nez v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    if-ne v3, v0, :cond_3

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->w:Landroid/widget/ImageView$ScaleType;

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->p:Z

    if-eqz v3, :cond_4

    .line 6
    :cond_3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->u:I

    .line 7
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->v:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->w:Landroid/widget/ImageView$ScaleType;

    .line 9
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->m()V

    .line 10
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k(Landroid/graphics/Canvas;I)V

    .line 11
    invoke-direct {p0, p1, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l(Landroid/graphics/Canvas;I)V

    return-void

    .line 12
    :cond_5
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->l(Landroid/graphics/Canvas;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_0

    if-ne v1, v4, :cond_0

    .line 5
    invoke-virtual {p0, v2, v3}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    .line 6
    :cond_0
    iget-boolean v5, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    if-eqz v5, :cond_4

    if-ne v0, v4, :cond_1

    .line 7
    invoke-virtual {p0, v2, v2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    .line 8
    invoke-virtual {p0, v3, v3}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->s:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 12
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 14
    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    .line 15
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->setSelected(Z)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->i:Z

    if-nez v0, :cond_1

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->setSelected(Z)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->setSelected(Z)V

    .line 9
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u4e0d\u652f\u6301adjustViewBounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->m:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->m:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->j:I

    .line 3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->setupBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->setupBitmap()V

    return-void
.end method

.method public setOval(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->c:Z

    const/4 v0, 0x1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->b:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->g:I

    .line 3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->f:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->f:I

    .line 3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSelectedMaskColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->h:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->h:I

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->h:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->a:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    :cond_1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->h:I

    return-void
.end method

.method public setTouchSelectModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->i:Z

    return-void
.end method

.method public setupBitmap()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->s:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->p:Z

    .line 7
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->s:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    .line 8
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
