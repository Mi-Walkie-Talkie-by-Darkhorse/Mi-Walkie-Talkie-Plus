.class public Landroidx/appcompat/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->a:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ContentFrameLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/TypedValue;

.field private b:Landroid/util/TypedValue;

.field private c:Landroid/util/TypedValue;

.field private d:Landroid/util/TypedValue;

.field private e:Landroid/util/TypedValue;

.field private f:Landroid/util/TypedValue;

.field private final g:Landroid/graphics/Rect;

.field private h:Landroidx/appcompat/widget/ContentFrameLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->a:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/ContentFrameLayout$a;->a()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/ContentFrameLayout$a;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/high16 v8, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_4

    if-eqz v1, :cond_1

    .line 5
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v10, p0, Landroidx/appcompat/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    :goto_1
    if-eqz v10, :cond_4

    .line 6
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_4

    if-ne v11, v7, :cond_2

    .line 7
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    :goto_2
    float-to-int v10, v10

    goto :goto_3

    :cond_2
    if-ne v11, v6, :cond_3

    .line 8
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-lez v10, :cond_4

    .line 9
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v10, v12

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 11
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 12
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-ne v5, v8, :cond_8

    if-eqz v1, :cond_5

    .line 13
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    goto :goto_5

    :cond_5
    iget-object v5, p0, Landroidx/appcompat/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    :goto_5
    if-eqz v5, :cond_8

    .line 14
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_8

    if-ne v11, v7, :cond_6

    .line 15
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    :goto_6
    float-to-int v5, v5

    goto :goto_7

    :cond_6
    if-ne v11, v6, :cond_7

    .line 16
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_7
    if-lez v5, :cond_8

    .line 17
    iget-object v11, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    sub-int/2addr v5, v12

    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 19
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 20
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 21
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 23
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    if-nez v10, :cond_d

    if-ne v2, v8, :cond_d

    if-eqz v1, :cond_9

    .line 24
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    goto :goto_8

    :cond_9
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->a:Landroid/util/TypedValue;

    :goto_8
    if-eqz v1, :cond_d

    .line 25
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-eqz v2, :cond_d

    if-ne v2, v7, :cond_a

    .line 26
    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    :goto_9
    float-to-int v0, v0

    goto :goto_a

    :cond_a
    if-ne v2, v6, :cond_b

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_a
    if-lez v0, :cond_c

    .line 28
    iget-object v1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    :cond_c
    if-ge p1, v0, :cond_d

    .line 29
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_b

    :cond_d
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    .line 30
    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method

.method public setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ContentFrameLayout;->h:Landroidx/appcompat/widget/ContentFrameLayout$a;

    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->a:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->W(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
