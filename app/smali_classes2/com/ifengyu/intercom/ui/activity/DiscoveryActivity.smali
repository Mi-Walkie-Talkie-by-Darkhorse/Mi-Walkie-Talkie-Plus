.class public Lcom/ifengyu/intercom/ui/activity/DiscoveryActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "DiscoveryActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;
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
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-class v1, Lcom/ifengyu/intercom/ui/activity/DiscoveryActivity;

    const-class v2, Lcom/ifengyu/intercom/ui/fragment/DiscoveryFragment;

    invoke-static {p0, v1, v2, v0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->u(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method