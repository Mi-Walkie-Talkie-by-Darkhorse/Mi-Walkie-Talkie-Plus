.class public abstract Lcom/ifengyu/intercom/lite/c/a/a;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/lite/c/a/a;",
        ">",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(III)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    const v0, 0x7f0600cd

    invoke-static {p1, v0}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    return-void
.end method


# virtual methods
.method protected a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;)V
    .locals 3

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/d;->f(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setMinWidth(I)V

    return-void
.end method

.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f120364

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V

    return-void
.end method
