.class public Lcom/ifengyu/intercom/lite/LiteChannelActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;
.source "LiteChannelActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    const-class p1, Lcom/ifengyu/intercom/lite/LiteChannelActivity;

    const-class v1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    invoke-static {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    const v0, 0x7f0c0030

    return v0
.end method
