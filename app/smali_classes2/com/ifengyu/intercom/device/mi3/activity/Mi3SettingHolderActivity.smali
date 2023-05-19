.class public Lcom/ifengyu/intercom/device/mi3/activity/Mi3SettingHolderActivity;
.super Lcom/ifengyu/intercom/device/mi3/activity/Mi3BaseFragmentActivity;
.source "Mi3SettingHolderActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/l/b/c/u1;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/l/b/c/u1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3/activity/Mi3BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static U(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "device_mac_address"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-class p1, Lcom/ifengyu/intercom/device/mi3/activity/Mi3SettingHolderActivity;

    const-class v1, Lcom/ifengyu/intercom/l/b/c/u1;

    invoke-static {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->u(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
