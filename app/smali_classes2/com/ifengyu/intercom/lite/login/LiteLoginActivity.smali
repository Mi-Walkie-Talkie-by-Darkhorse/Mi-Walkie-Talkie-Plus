.class public Lcom/ifengyu/intercom/lite/login/LiteLoginActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;
.source "LiteLoginActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/lite/login/LoginFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/lite/login/LoginFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    const-class v0, Lcom/ifengyu/intercom/lite/login/LiteLoginActivity;

    const-class v1, Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()I
    .locals 1

    const v0, 0x7f090228

    return v0
.end method

.method protected m()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->m()V

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/app/Activity;)Z

    return-void
.end method
