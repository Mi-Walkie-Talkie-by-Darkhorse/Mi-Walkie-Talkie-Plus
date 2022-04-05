.class public Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;
.super Landroid/view/View;


# instance fields
.field private a:Z

.field private b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Bitmap;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a:Z

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 4

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->c:I

    neg-int v2, v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->d:I

    div-int/2addr v2, v3

    mul-int v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/R$styleable;->WaterRippleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->d:I

    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->e:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->f:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->h:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->i:I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->f:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->f:Landroid/graphics/Paint;

    mul-int/lit16 v6, v4, 0xff

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->c:I

    div-int/2addr v6, v7

    rsub-int v6, v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->h:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->i:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    int-to-float v4, v7

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b:[I

    array-length v1, v0

    if-ge p1, v1, :cond_3

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x3

    aput v1, v0, p1

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->c:I

    if-le v1, v3, :cond_2

    aput v2, v0, p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b(Landroid/graphics/Canvas;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->d:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->e:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->h:I

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->i:I

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->h:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->h:I

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->c:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a()V

    return-void
.end method
