.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    const-wide/16 v2, 0x1f4

    const/4 v4, -0x1

    if-ne v0, v1, :cond_5

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;)I

    move-result v0

    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;I)I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    const v1, 0x7f1103b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;)V

    invoke-static {v0, v2, v3}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;I)I

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;I)I

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChTxPower()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->l:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;I)I

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity;

    const v1, 0x7f1102ef

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    .line 20
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkSettingActivity$s;)V

    invoke-static {v0, v2, v3}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_0
    return-void
.end method
