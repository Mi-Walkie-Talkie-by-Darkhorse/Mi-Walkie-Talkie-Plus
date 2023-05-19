.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->R(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/event/StateUpdateEvent;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;Lcom/ifengyu/intercom/event/StateUpdateEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;I)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/event/StateUpdateEvent;->isHasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    :goto_0
    sget v0, Lcom/ifengyu/intercom/p/d0;->a:I

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->g0(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity$a;->a:Lcom/ifengyu/intercom/event/StateUpdateEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinSettingActivity;->h0(Lcom/ifengyu/intercom/event/StateUpdateEvent;)V

    :goto_1
    return-void
.end method
