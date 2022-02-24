.class public Lcom/qmuiteam/qmui/widget/QMUINotchConsumeLayout;
.super Landroid/widget/FrameLayout;
.source "QMUINotchConsumeLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUINotchConsumeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUINotchConsumeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->c(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->f(Landroid/view/View;)I

    move-result v1

    .line 3
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->e(Landroid/view/View;)I

    move-result v2

    .line 4
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->b(Landroid/view/View;)I

    move-result v3

    .line 5
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUINotchConsumeLayout;->a()Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUINotchConsumeLayout;->a()Z

    :cond_0
    return-void
.end method
