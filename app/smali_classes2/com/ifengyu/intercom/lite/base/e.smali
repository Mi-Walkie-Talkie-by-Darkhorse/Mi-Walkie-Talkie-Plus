.class public abstract Lcom/ifengyu/intercom/lite/base/e;
.super Lcom/qmuiteam/qmui/arch/b;


# instance fields
.field protected y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/base/e;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;II)I
    .locals 0

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    const/16 p2, 0x8

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected a(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/ifengyu/intercom/lite/base/c;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/lite/base/c;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected b(I)V
    .locals 3

    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/ifengyu/intercom/lite/base/c;

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/lite/base/c;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected b(Landroid/content/Context;II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/e;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/base/e;->y:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method protected x()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->q()V

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->s()V

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->t()V

    :cond_0
    return-void
.end method
