.class public Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "QMUIRadiusImageView2.java"

# interfaces
.implements Lcom/qmuiteam/qmui/layout/IQMUILayout;


# instance fields
.field private a:Lcom/qmuiteam/qmui/layout/a;

.field private b:Lcom/qmuiteam/qmui/alpha/a;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Landroid/graphics/ColorFilter;

.field private l:Landroid/graphics/ColorFilter;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->j:Z

    .line 5
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->m:Z

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->c:Z

    .line 9
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->j:Z

    .line 11
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->m:Z

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->c:Z

    .line 15
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->j:Z

    .line 17
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->m:Z

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/layout/a;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/qmuiteam/qmui/layout/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setChangeAlphaWhenPress(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setChangeAlphaWhenDisable(Z)V

    .line 4
    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_border_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->e:I

    .line 6
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_border_color:I

    const p3, -0x777778

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->f:I

    .line 7
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_selected_border_width:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->g:I

    .line 8
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_selected_border_color:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->f:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->h:I

    .line 9
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_selected_mask_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->i:I

    if-eqz p2, :cond_0

    .line 10
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->i:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->l:Landroid/graphics/ColorFilter;

    .line 11
    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_is_touch_select_mode_enabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->j:Z

    .line 12
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_is_circle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->c:Z

    if-nez p2, :cond_1

    .line 13
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setRadius(I)V

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->b:Lcom/qmuiteam/qmui/alpha/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/alpha/a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/alpha/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->b:Lcom/qmuiteam/qmui/alpha/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->b:Lcom/qmuiteam/qmui/alpha/a;

    return-object v0
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->b(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->d(I)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;II)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->e(I)V

    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->f:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->e:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getRadius()I

    move-result v0

    return v0
.end method

.method public getHideRadiusSide()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->a()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->b()I

    move-result v0

    return v0
.end method

.method public getSelectedBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->h:I

    return v0
.end method

.method public getSelectedBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->g:I

    return v0
.end method

.method public getSelectedMaskColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->i:I

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->c()F

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->d()I

    move-result v0

    return v0
.end method

.method public getShadowElevation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->e()I

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->f(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/layout/a;->a(I)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/qmuiteam/qmui/layout/a;->b(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/qmuiteam/qmui/layout/a;->a(II)I

    move-result v1

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    .line 6
    :cond_0
    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->c:Z

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 10
    div-int/lit8 v0, p2, 0x2

    if-eq p1, p2, :cond_2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 12
    div-int/lit8 v0, p1, 0x2

    const/high16 p2, 0x40000000    # 2.0f

    .line 13
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 14
    invoke-super {p0, p1, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setRadius(I)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->m:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setSelected(Z)V

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->j:Z

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setSelected(Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setSelected(Z)V

    .line 9
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->m:Z

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->f:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->f:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->setBorderColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->e:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->g(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBottomDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->h(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setChangeAlphaWhenDisable(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/a;->a(Z)V

    return-void
.end method

.method public setChangeAlphaWhenPress(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/a;->b(Z)V

    return-void
.end method

.method public setCircle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->c:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->c:Z

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
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->k:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->k:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setRadius(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/alpha/a;->a(Landroid/view/View;Z)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public setHideRadiusSide(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->i(I)V

    return-void
.end method

.method public setLeftDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->j(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setOuterNormalColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->k(I)V

    return-void
.end method

.method public setOutlineExcludePadding(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->a(Z)V

    return-void
.end method

.method public setOutlineInset(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->d(IIII)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Lcom/qmuiteam/qmui/alpha/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/alpha/a;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->l(I)V

    return-void
.end method

.method public setRadius(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/layout/a;->c(II)V

    return-void
.end method

.method public setRadiusAndShadow(IIF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/a;->a(IIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->a(IIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIIF)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

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

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->m(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->m:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eq v0, p1, :cond_4

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->l:Landroid/graphics/ColorFilter;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->k:Landroid/graphics/ColorFilter;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 7
    :goto_0
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->g:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->e:I

    .line 8
    :goto_1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->h:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->f:I

    .line 9
    :goto_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/layout/a;->g(I)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/layout/a;->setBorderColor(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setSelectedBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->h:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->h:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->setBorderColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->g:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->g(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->l:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->l:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

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
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->i:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->i:I

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->i:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->l:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->l:Landroid/graphics/ColorFilter;

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->d:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    :cond_1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->i:I

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->a(F)V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->n(I)V

    return-void
.end method

.method public setShadowElevation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->o(I)V

    return-void
.end method

.method public setShowBorderOnlyBeforeL(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->b(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setTopDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/a;->p(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setTouchSelectModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->j:Z

    return-void
.end method

.method public setUseThemeGeneralShadowElevation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->a:Lcom/qmuiteam/qmui/layout/a;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/a;->g()V

    return-void
.end method
