.class public Lcom/ifengyu/library/widget/view/QMUILoadingView;
.super Landroid/view/View;
.source "QMUILoadingView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/ifengyu/library/R$attr;->QMUILoadingStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c:I

    new-instance v0, Lcom/ifengyu/library/widget/view/QMUILoadingView$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView$1;-><init>(Lcom/ifengyu/library/widget/view/QMUILoadingView;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/library/R$styleable;->QMUILoadingView:[I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUILoadingView_qmui_loading_view_size:I

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    sget v1, Lcom/ifengyu/library/R$styleable;->QMUILoadingView_qmui_loading_view_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/QMUILoadingView;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c:I

    return p1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v7, v0, 0xc

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v8, v0, 0x6

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    int-to-float v2, v7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v0, p2

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0xc

    if-ge v6, v0, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    add-int/lit8 v3, v6, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v4, v8

    iget-object v5, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v7, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0xb
    .end array-data
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c:I

    mul-int/lit8 v1, v1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a(Landroid/graphics/Canvas;I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b()V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->requestLayout()V

    return-void
.end method
