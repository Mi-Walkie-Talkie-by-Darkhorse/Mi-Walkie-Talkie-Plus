.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideActivity;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;
.source "BluetoothGuideActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f040020

    return v0
.end method

.method protected getContentViewId()I
    .locals 1

    const v0, 0x7f1000b0

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->newInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideActivity;->getContentViewId()I

    move-result v2

    const-class v3, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
