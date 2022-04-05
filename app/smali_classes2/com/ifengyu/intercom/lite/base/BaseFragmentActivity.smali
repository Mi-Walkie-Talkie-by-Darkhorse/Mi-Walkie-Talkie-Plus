.class public abstract Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;
.super Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;


# instance fields
.field private h:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field private i:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

.field private j:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->k:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/event/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/event/b;->a()I

    move-result p1

    sget v0, Lcom/ifengyu/intercom/lite/event/b;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->o()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->q()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->r()V

    :goto_0
    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected m()V
    .locals 0

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->m()V

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/app/Activity;)Z

    return-void
.end method

.method public n()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method protected o()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->j:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->j:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->a(Lcom/qmuiteam/qmui/c/g;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object p1

    const-class v0, Lcom/ifengyu/intercom/lite/event/b;

    new-instance v1, Lcom/ifengyu/intercom/lite/base/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/base/b;-><init>(Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->o()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->q()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->p()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->n()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/lite/utils/j;->b(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected p()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method protected r()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->j:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101e7

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f11009c

    new-instance v2, Lcom/ifengyu/intercom/lite/base/a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/base/a;-><init>(Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->j:Lcom/qmuiteam/qmui/widget/dialog/b;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->j:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->j:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method protected s()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102c8

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/base/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/base/d;-><init>(Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected t()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110285

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
