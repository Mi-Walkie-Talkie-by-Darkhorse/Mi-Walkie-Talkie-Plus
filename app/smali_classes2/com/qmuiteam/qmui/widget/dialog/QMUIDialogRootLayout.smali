.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

.field private b:Landroid/widget/FrameLayout$LayoutParams;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:F

.field private i:Z

.field private j:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout$a;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->g:Z

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->h:F

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->i:Z

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->k:I

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    if-nez p3, :cond_0

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p3, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->b:Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_min_width:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->c:I

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_max_width:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->d:I

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_inset_hor:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->e:I

    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_inset_ver:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->k:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDialogView()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    iget p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p4

    iget p5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/n;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/n;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->k:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->b:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v4, -0x80000000

    const/4 v5, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v2, :cond_3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->d:I

    iget v7, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->e:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr p1, v7

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->c:I

    if-gt p1, v2, :cond_4

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->b:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v2, v5, :cond_5

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_5
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->b:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez v2, :cond_6

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_4

    :cond_6
    if-lez v0, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-boolean v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->i:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->i:Z

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->j:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout$a;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout$a;->call()V

    :cond_7
    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v3

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_3

    :cond_8
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->i:Z

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qmuiteam/qmui/util/d;->e(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->h:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->b:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v1, v5, :cond_9

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_4

    :cond_9
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->c:I

    if-ge p1, v1, :cond_a

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    :cond_a
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->a:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p2, v0

    add-int/2addr p2, v3

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCheckKeyboardOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->g:Z

    return-void
.end method

.method public setInsetHor(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->e:I

    return-void
.end method

.method public setInsetVer(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->f:I

    return-void
.end method

.method public setMaxPercent(F)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->h:F

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->d:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->c:I

    return-void
.end method

.method public setOverlayOccurInMeasureCallback(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->j:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout$a;

    return-void
.end method
