.class public Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;
.super Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;
.source "QMUIWebViewContainer.java"


# instance fields
.field private d:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->c:Lcom/qmuiteam/qmui/util/o;

    invoke-virtual {p1, p0, v0}, Lcom/qmuiteam/qmui/util/o;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->a(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    .line 9
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->f()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->g()I

    move-result v0

    .line 11
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v2

    .line 12
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->e()I

    move-result p1

    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p1, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 14
    check-cast p1, Landroid/view/WindowInsets;

    .line 15
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 18
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->h(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 21
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->c(Landroid/view/View;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 22
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->e(Landroid/view/View;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 23
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->c:Lcom/qmuiteam/qmui/util/o;

    invoke-virtual {p1, p0, v3}, Lcom/qmuiteam/qmui/util/o;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 25
    iget p1, v3, Landroid/graphics/Rect;->left:I

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 p1, 0x1

    return p1

    .line 26
    :cond_3
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getWebViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public setCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;)V
    .locals 0

    return-void
.end method

.method public setNeedDispatchSafeAreaInset(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->d:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setNeedDispatchSafeAreaInset(Z)V

    :cond_0
    return-void
.end method
