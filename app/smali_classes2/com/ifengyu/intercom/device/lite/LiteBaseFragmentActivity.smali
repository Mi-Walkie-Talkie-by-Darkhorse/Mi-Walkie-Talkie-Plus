.class public Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "LiteBaseFragmentActivity.java"


# instance fields
.field private i:Lcom/qmuiteam/qmui/widget/dialog/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private synthetic O(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->getState()I

    move-result p1

    sget v0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->STATE_CONNECTED:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->N()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->y()V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->T()V

    :goto_0
    return-void
.end method

.method private synthetic R(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic P(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->O(Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;)V

    return-void
.end method

.method public synthetic S(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->R(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11026c

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f1100c6

    new-instance v2, Lcom/ifengyu/intercom/device/lite/b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/b;-><init>(Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 5
    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 6
    invoke-virtual {v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->i:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object p1

    const-class v0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/a;-><init>(Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;->N()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    return-void
.end method
