.class public Lcom/ifengyu/intercom/ui/login/SetupPasswordActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "SetupPasswordActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/login/SetupPasswordActivity;

    const-class v1, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->t(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public N0()I
    .locals 1

    const v0, 0x7f090298

    return v0
.end method
