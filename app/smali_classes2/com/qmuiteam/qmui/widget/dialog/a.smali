.class public Lcom/qmuiteam/qmui/widget/dialog/a;
.super Landroidx/appcompat/app/d;


# instance fields
.field a:Z

.field private b:Lcom/qmuiteam/qmui/c/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/d;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->a:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->b:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->supportRequestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/c/g;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->b:Lcom/qmuiteam/qmui/c/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/c/g;->b(Landroid/app/Dialog;)V

    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->b:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->b:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->b:Lcom/qmuiteam/qmui/c/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/c/g;->a(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->b:Lcom/qmuiteam/qmui/c/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/c/g;->b(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->a:Z

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/a;->a:Z

    :cond_0
    return-void
.end method
