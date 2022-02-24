.class public Lcom/ifengyu/intercom/lite/base/BaseActivity;
.super Lcom/qmuiteam/qmui/arch/QMUIActivity;
.source "BaseActivity.java"


# instance fields
.field private l:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected s()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->s()V

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/app/Activity;)Z

    return-void
.end method

.method protected v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseActivity;->l:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseActivity;->l:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method

.method protected w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseActivity;->l:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110285

    .line 3
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseActivity;->l:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseActivity;->l:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/BaseActivity;->l:Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
