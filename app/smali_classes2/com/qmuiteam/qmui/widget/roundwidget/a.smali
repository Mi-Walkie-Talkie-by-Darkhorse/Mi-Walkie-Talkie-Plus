.class public Lcom/qmuiteam/qmui/widget/roundwidget/a;
.super Landroid/graphics/drawable/GradientDrawable;
.source "QMUIRoundButtonDrawable.java"


# instance fields
.field private a:Z

.field private b:Landroid/content/res/ColorStateList;

.field private c:I

.field private d:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/qmuiteam/qmui/widget/roundwidget/a;
    .locals 8

    .line 14
    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 15
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_backgroundColor:I

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 16
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_borderColor:I

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 17
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_borderWidth:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 18
    sget v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_isRadiusAdjustBounds:I

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 19
    sget v3, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_radius:I

    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 20
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_radiusTopLeft:I

    invoke-virtual {p0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 21
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_radiusTopRight:I

    invoke-virtual {p0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 22
    sget v6, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_radiusBottomLeft:I

    invoke-virtual {p0, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 23
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIRoundButton_qmui_radiusBottomRight:I

    invoke-virtual {p0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 24
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    new-instance p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/roundwidget/a;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(Landroid/content/res/ColorStateList;)V

    .line 27
    invoke-virtual {p0, v0, p2}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(ILandroid/content/res/ColorStateList;)V

    if-gtz v4, :cond_2

    if-gtz v5, :cond_2

    if-gtz v6, :cond_2

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, v3

    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    int-to-float p2, v4

    aput p2, p1, v1

    const/4 v0, 0x1

    aput p2, p1, v0

    const/4 p2, 0x2

    int-to-float v0, v5

    aput v0, p1, p2

    const/4 p2, 0x3

    aput v0, p1, p2

    const/4 p2, 0x4

    int-to-float v0, v7

    aput v0, p1, p2

    const/4 p2, 0x5

    aput v0, p1, p2

    const/4 p2, 0x6

    int-to-float v0, v6

    aput v0, p1, p2

    const/4 p2, 0x7

    aput v0, p1, p2

    .line 29
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 30
    :goto_1
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(Z)V

    return-object p0
.end method

.method private b()Z
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->c:I

    return v0
.end method

.method public a(ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->c:I

    .line 7
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->d:Landroid/content/res/ColorStateList;

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 11
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_1
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->b:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a:Z

    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->c:I

    invoke-virtual {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->b:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/widget/roundwidget/a;->c:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method