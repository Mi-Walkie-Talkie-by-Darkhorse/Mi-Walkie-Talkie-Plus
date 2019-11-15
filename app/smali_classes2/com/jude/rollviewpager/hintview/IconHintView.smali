.class public Lcom/jude/rollviewpager/hintview/IconHintView;
.super Lcom/jude/rollviewpager/hintview/ShapeHintView;
.source "IconHintView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/jude/rollviewpager/hintview/IconHintView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, p2

    int-to-float v6, v3

    div-float/2addr v2, v6

    int-to-float v6, p3

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/IconHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->c:I

    iget v2, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jude/rollviewpager/hintview/IconHintView;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/jude/rollviewpager/hintview/IconHintView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->c:I

    iget v2, p0, Lcom/jude/rollviewpager/hintview/IconHintView;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jude/rollviewpager/hintview/IconHintView;->a(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method
