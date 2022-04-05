.class public Lcom/ifengyu/library/widget/view/QMUILoadingView;
.super Landroid/view/View;


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
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c:I

    new-instance v0, Lcom/ifengyu/library/widget/view/QMUILoadingView$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView$a;-><init>(Lcom/ifengyu/library/widget/view/QMUILoadingView;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/library/R$styleable;->QMUILoadingView:[I

    invoke-virtual {v0, p2, v1, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/ifengyu/library/R$styleable;->QMUILoadingView_qmui_loading_view_size:I

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lcom/ifengyu/library/a/m;->a(F)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    sget p2, Lcom/ifengyu/library/R$styleable;->QMUILoadingView_qmui_loading_view_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/QMUILoadingView;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c:I

    return p1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 11

    iget v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v1, v0, 0xc

    div-int/lit8 v0, v0, 0x6

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float p2, p2

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget p2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge p2, v2, :cond_0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    add-int/lit8 p2, p2, 0x1

    int-to-float v4, p2

    mul-float v4, v4, v3

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

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
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

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

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void

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
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->c:I

    mul-int/lit8 v1, v1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a(Landroid/graphics/Canvas;I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b()V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->b:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
