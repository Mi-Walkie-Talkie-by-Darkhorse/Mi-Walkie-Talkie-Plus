.class public Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "QMUIRadiusImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLOR_DRAWABLE_DIMEN:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x777778


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCornerRadius:I

.field private mHeight:I

.field private mIsCircle:Z

.field private mIsOval:Z

.field private mIsSelected:Z

.field private mIsTouchSelectModeEnabled:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mNeedResetShader:Z

.field private mRectF:Landroid/graphics/RectF;

.field private mSelectedBorderColor:I

.field private mSelectedBorderWidth:I

.field private mSelectedColorFilter:Landroid/graphics/ColorFilter;

.field private mSelectedMaskColor:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/ifengyu/library/R$attr;->QMUIRadiusImageViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/ifengyu/library/R$attr;->QMUIRadiusImageViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    iput-boolean v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    iput-boolean v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    iput-boolean v5, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsTouchSelectModeEnabled:Z

    iput-boolean v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mNeedResetShader:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_border_width:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderWidth:I

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_border_color:I

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderColor:I

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_selected_border_width:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderWidth:I

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_selected_border_color:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderColor:I

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_selected_mask_color:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedColorFilter:Landroid/graphics/ColorFilter;

    :cond_0
    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_is_touch_select_mode_enabled:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsTouchSelectModeEnabled:Z

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_is_circle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    if-nez v1, :cond_1

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_is_oval:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    :cond_1
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    if-nez v1, :cond_2

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUIRadiusImageView_qmui_corner_radius:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v5, v3, v6

    if-eqz v5, :cond_2

    cmpl-float v5, v4, v6

    if-nez v5, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getMinimumWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getMinimumHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    cmpl-float v6, v2, v7

    if-gtz v6, :cond_4

    cmpl-float v6, v5, v7

    if-lez v6, :cond_0

    :cond_4
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    float-to-int v3, v3

    float-to-int v4, v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    :try_start_0
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    const/4 v3, 0x2

    sget-object v4, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private updateBitmapShader()V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mNeedResetShader:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v0, v2

    iget v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mWidth:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    neg-float v0, v0

    div-float/2addr v0, v5

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderWidth:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    return v0
.end method

.method public getSelectedBorderColor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderColor:I

    return v0
.end method

.method public getSelectedBorderWidth()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderWidth:I

    return v0
.end method

.method public getSelectedMaskColor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    return v0
.end method

.method public isCircle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    return v0
.end method

.method public isOval()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    return v0
.end method

.method public isTouchSelectModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsTouchSelectModeEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mWidth:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mHeight:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mNeedResetShader:Z

    if-eqz v0, :cond_3

    :cond_2
    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mWidth:I

    iput v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mHeight:I

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->updateBitmapShader()V

    :cond_3
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderColor:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedColorFilter:Landroid/graphics/ColorFilter;

    :goto_2
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderWidth:I

    :goto_3
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-boolean v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    int-to-float v4, v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-lez v0, :cond_0

    int-to-float v0, v1

    int-to-float v2, v1

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderColor:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderWidth:I

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    iput v3, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    iput v3, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iput v1, v4, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    int-to-float v2, v2

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v7, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getMeasuredHeight()I

    move-result v4

    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    iget-object v6, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    if-eq v2, v7, :cond_2

    if-nez v2, :cond_5

    :cond_2
    move v2, v1

    :goto_1
    if-eq v5, v7, :cond_3

    if-nez v5, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v6, v1

    int-to-float v7, v4

    div-float/2addr v7, v5

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    cmpl-float v0, v6, v8

    if-ltz v0, :cond_6

    cmpl-float v0, v7, v8

    if-ltz v0, :cond_6

    float-to-int v0, v1

    float-to-int v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    cmpl-float v0, v6, v8

    if-ltz v0, :cond_7

    mul-float v0, v5, v7

    float-to-int v0, v0

    invoke-virtual {p0, v0, v4}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_7
    cmpl-float v0, v7, v8

    if-ltz v0, :cond_8

    mul-float v0, v5, v6

    float-to-int v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_8
    cmpg-float v0, v6, v7

    if-gez v0, :cond_9

    mul-float v0, v5, v6

    float-to-int v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_9
    mul-float v0, v1, v7

    float-to-int v0, v0

    invoke-virtual {p0, v0, v4}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_a
    if-eqz v2, :cond_b

    mul-float v0, v1, v7

    float-to-int v0, v0

    invoke-virtual {p0, v0, v4}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_b
    if-eqz v0, :cond_0

    mul-float v0, v5, v6

    float-to-int v0, v0

    invoke-virtual {p0, v3, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setSelected(Z)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsTouchSelectModeEnabled:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setSelected(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setSelected(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0d\u652f\u6301adjustViewBounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderColor:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBorderWidth:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCircle(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mCornerRadius:I

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setupBitmap()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->setupBitmap()V

    return-void
.end method

.method public setOval(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsCircle:Z

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    if-ne v1, p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsOval:Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0d\u652f\u6301ScaleType %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderColor:I

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedBorderWidth(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedBorderWidth:I

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedColorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedColorFilter:Landroid/graphics/ColorFilter;

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    goto :goto_0
.end method

.method public setSelectedMaskColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsSelected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    :cond_0
    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedMaskColor:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mSelectedColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0
.end method

.method public setTouchSelectModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mIsTouchSelectModeEnabled:Z

    return-void
.end method

.method public setupBitmap()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mNeedResetShader:Z

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUIRadiusImageView;->invalidate()V

    goto :goto_0
.end method
