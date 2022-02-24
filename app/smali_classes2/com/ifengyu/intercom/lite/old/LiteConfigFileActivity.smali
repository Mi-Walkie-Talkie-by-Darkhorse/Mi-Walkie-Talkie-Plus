.class public Lcom/ifengyu/intercom/lite/old/LiteConfigFileActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;
.source "LiteConfigFileActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ifengyu/intercom/lite/old/LiteConfigFileActivity;

    const-class v1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    const v0, 0x7f0c0022

    return v0
.end method

.method protected m()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;->m()V

    .line 2
    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/app/Activity;)Z

    return-void
.end method
