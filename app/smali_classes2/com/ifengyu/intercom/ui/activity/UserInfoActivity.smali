.class public Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;
.super Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;
.source "UserInfoActivity.java"


# annotations
.annotation runtime Lcom/qmuiteam/qmui/arch/annotation/DefaultFirstFragment;
    value = Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;
.end annotation

.annotation build Lcom/qmuiteam/qmui/arch/annotation/FirstFragments;
    value = {
        Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static N(Landroid/content/Context;Lcom/shanlitech/et/model/User;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_user_model"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "key_from_where"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    const-class p1, Lcom/ifengyu/intercom/ui/activity/UserInfoActivity;

    const-class p2, Lcom/ifengyu/intercom/ui/fragment/UserInfoFragment;

    invoke-static {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;->u(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
