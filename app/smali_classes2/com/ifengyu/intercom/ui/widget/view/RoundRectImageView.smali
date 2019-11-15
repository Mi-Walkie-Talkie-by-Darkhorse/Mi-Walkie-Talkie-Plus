.class public Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "RoundRectImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/ImageView$ScaleType;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->a(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->c:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->d:I

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->j:Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->e:Landroid/widget/ImageView$ScaleType;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->i:Landroid/graphics/Paint;

    return-void
.end method

.method private a(I)I
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getShapeBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->b:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->d:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->a:I

    int-to-float v3, v3

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->a:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->f:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->h:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->j:Landroid/graphics/Xfermode;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->getShapeBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->g:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->g:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_3
    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundRectImageView;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
