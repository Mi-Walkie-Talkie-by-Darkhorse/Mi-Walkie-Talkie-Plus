.class public Lcom/ifengyu/intercom/ui/login/LoginActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "LoginActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/ui/login/LoginFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/ui/login/LoginFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static N(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/login/LoginActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/login/LoginFragment;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->t(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public N0()I
    .locals 1

    const v0, 0x7f090297

    return v0
.end method

.method protected w()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->w()V

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    return-void
.end method
