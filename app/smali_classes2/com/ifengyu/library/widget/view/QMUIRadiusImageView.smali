.class public Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "QMUIRadiusImageView.java"


# static fields
.field private static final v:Landroid/graphics/Bitmap$Config;


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

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Matrix;

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->v:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/ifengyu/library/R$attr;->QMUIRadiusImageViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/ifengyu/library/R$attr;->QMUIRadiusImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->b:Z

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->i:Z

    .line 8
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->p:Z

    .line 9
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->s:Landroid/graphics/Matrix;

    .line 14
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    sget-object v2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 16
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_border_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->d:I

    .line 17
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_border_color:I

    const p3, -0x777778

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->e:I

    .line 18
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_selected_border_width:I

    iget p3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->d:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->f:I

    .line 19
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_selected_border_color:I

    iget p3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->g:I

    .line 20
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_selected_mask_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->h:I

    if-eqz p2, :cond_0

    .line 21
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->h:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    .line 22
    :cond_0
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_is_touch_select_mode_enabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->i:Z

    .line 23
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_is_circle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    if-nez p2, :cond_1

    .line 24
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_is_oval:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->b:Z

    .line 25
    :cond_1
    iget-boolean p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->b:Z

    if-nez p2, :cond_2

    .line 26
    sget p2, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->j:I

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->p:Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->t:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 7
    iget v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->u:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->s:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 10
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->s:Landroid/graphics/Matrix;

    mul-float v0, v0, v2

    iget v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->t:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    neg-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    mul-float v2, v2, v1

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->u:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    neg-float v1, v2

    div-float/2addr v1, v4

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    :goto_0
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

    if-eqz v2, :cond_5

    .line 3
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_4

    cmpl-float v4, v3, v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
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

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    return-object v2

    .line 6
    :cond_3
    :goto_0
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 7
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    float-to-int v5, v0

    float-to-int v6, v3

    const/4 v8, 0x0

    move v3, v1

    .line 9
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    return-object v1

    .line 10
    :cond_5
    :try_start_0
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_6

    .line 11
    sget-object v2, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->v:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x2

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->v:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 13
    :goto_2
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->e:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->d:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->j:I

    return v0
.end method

.method public getSelectedBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->g:I

    return v0
.end method

.method public getSelectedBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->f:I

    return v0
.end method

.method public getSelectedMaskColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->h:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v0, :cond_8

    if-lez v1, :cond_8

    .line 2
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->t:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->u:I

    if-ne v2, v1, :cond_1

    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->p:Z

    if-eqz v2, :cond_2

    .line 4
    :cond_1
    iput v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->t:I

    .line 5
    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->u:I

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->e()V

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->g:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->e:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->m:Landroid/graphics/ColorFilter;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->f:I

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->d:I

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    .line 11
    iget-boolean v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 13
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-lez v2, :cond_8

    sub-float v1, v0, v4

    .line 14
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 15
    :cond_6
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 16
    iput v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 17
    iput v0, v3, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    sub-float/2addr v0, v4

    .line 18
    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 19
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->b:Z

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-lez v2, :cond_8

    .line 21
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 22
    :cond_7
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->j:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v2, :cond_8

    .line 23
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->q:Landroid/graphics/RectF;

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->j:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto/16 :goto_2

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 9
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eq p2, v4, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 10
    :cond_5
    iget-object p2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v4, p2

    int-to-float v5, v1

    div-float/2addr v5, v3

    if-eqz p1, :cond_a

    if-eqz v2, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v2, v4, p1

    if-ltz v2, :cond_6

    cmpl-float v6, v5, p1

    if-ltz v6, :cond_6

    float-to-int p1, p2

    float-to-int p2, v3

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_6
    if-ltz v2, :cond_7

    mul-float v3, v3, v5

    float-to-int p1, v3

    .line 12
    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_7
    cmpl-float p1, v5, p1

    if-ltz p1, :cond_8

    mul-float v3, v3, v4

    float-to-int p1, v3

    .line 13
    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_8
    cmpg-float p1, v4, v5

    if-gez p1, :cond_9

    mul-float v3, v3, v4

    float-to-int p1, v3

    .line 14
    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_9
    mul-float p2, p2, v5

    float-to-int p1, p2

    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    mul-float p2, p2, v5

    float-to-int p1, p2

    .line 16
    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_b
    if-eqz v2, :cond_c

    mul-float v3, v3, v4

    float-to-int p1, v3

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_c
    :goto_2
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
    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setSelected(Z)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->i:Z

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
    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setSelected(Z)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setSelected(Z)V

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
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->e:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

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
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->m:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->m:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->j:I

    .line 3
    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->b:Z

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
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setupBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setupBitmap()V

    return-void
.end method

.method public setOval(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->c:Z

    const/4 v0, 0x1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->b:Z

    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->b:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\u4e0d\u652f\u6301ScaleType %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

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
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->g:I

    .line 3
    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->f:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->f:I

    .line 3
    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

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
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->h:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->h:I

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->h:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->n:Landroid/graphics/ColorFilter;

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->a:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    :cond_1
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->h:I

    return-void
.end method

.method public setTouchSelectModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->i:Z

    return-void
.end method

.method public setupBitmap()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->p:Z

    .line 7
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->r:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    .line 8
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->k:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->o:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
