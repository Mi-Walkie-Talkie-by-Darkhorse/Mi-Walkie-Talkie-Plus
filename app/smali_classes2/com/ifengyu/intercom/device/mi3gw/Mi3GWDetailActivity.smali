.class public Lcom/ifengyu/intercom/device/mi3gw/Mi3GWDetailActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "Mi3GWDetailActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static N(Landroid/content/Context;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->s()Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->r(Lcom/ifengyu/intercom/models/DeviceModel;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    const-class v0, Lcom/ifengyu/intercom/device/mi3gw/Mi3GWDetailActivity;

    const-class v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    invoke-static {p0, v0, v1, p1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->u(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
