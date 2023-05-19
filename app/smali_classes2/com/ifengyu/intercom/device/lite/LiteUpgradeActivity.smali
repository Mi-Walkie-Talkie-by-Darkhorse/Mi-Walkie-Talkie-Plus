.class public Lcom/ifengyu/intercom/device/lite/LiteUpgradeActivity;
.super Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;
.source "LiteUpgradeActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/LiteBaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ifengyu/intercom/device/lite/LiteUpgradeActivity;

    const-class v1, Lcom/ifengyu/intercom/device/lite/fragment/FirmwareUpgradeFragment;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->t(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected w()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;->w()V

    .line 2
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->m(Landroid/app/Activity;)Z

    return-void
.end method
