.class public Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;
.super Landroid/widget/ImageView;
.source "CirclrImageView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    sget-object v0, Lcom/ifengyu/intercom/R$styleable;->CirclrImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    const v1, -0x9c4701

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->c:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Paint;IZ)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    :goto_0
    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-gtz p2, :cond_1

    move p2, v0

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v0, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v0, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v9, v0, 0x2

    add-int/2addr v1, v9

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-direct {v6, v7, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v2, v3, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz p3, :cond_2

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    invoke-virtual {v5, p0, v6, v0, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private a(I)Landroid/graphics/Paint;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->getHeight()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->getWidth()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    invoke-static {v0, v2, v5, v5}, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Paint;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    if-eqz v0, :cond_0

    div-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->b:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method
