.class public Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;
.super Lcom/qmuiteam/qmui/alpha/QMUIAlphaFrameLayout;

# interfaces
.implements Lcom/qmuiteam/qmui/layout/IQMUILayout;


# instance fields
.field private b:Lcom/qmuiteam/qmui/layout/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    new-instance v0, Lcom/qmuiteam/qmui/layout/a;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/qmuiteam/qmui/layout/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaFrameLayout;->setChangeAlphaWhenDisable(Z)V

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaFrameLayout;->setChangeAlphaWhenPress(Z)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->b(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->d(I)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;II)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->e(I)V

    return-void
.end method

.method public getHideRadiusSide()I
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->a()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->b()I

    move-result v0

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->c()F

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->d()I

    move-result v0

    return v0
.end method

.method public getShadowElevation()I
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->e()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->f(I)I

    move-result p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/layout/a;->a(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/qmuiteam/qmui/layout/a;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/qmuiteam/qmui/layout/a;->a(II)I

    move-result v1

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->setBorderColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->g(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setBottomDividerAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->h(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setHideRadiusSide(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->i(I)V

    return-void
.end method

.method public setLeftDividerAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->j(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOuterNormalColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->k(I)V

    return-void
.end method

.method public setOutlineExcludePadding(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->a(Z)V

    return-void
.end method

.method public setOutlineInset(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->d(IIII)V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->l(I)V

    return-void
.end method

.method public setRadius(II)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/layout/a;->c(II)V

    return-void
.end method

.method public setRadiusAndShadow(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/a;->a(IIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIF)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->a(IIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIIF)V
    .locals 6

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/layout/a;->a(IIIIF)V

    return-void
.end method

.method public setRightDividerAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->m(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->a(F)V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->n(I)V

    return-void
.end method

.method public setShadowElevation(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->o(I)V

    return-void
.end method

.method public setShowBorderOnlyBeforeL(Z)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->b(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTopDividerAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->p(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setUseThemeGeneralShadowElevation()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->b:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->g()V

    return-void
.end method
