.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;
.super Ljava/lang/Object;
.source "SealMoreSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_6

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->K(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->L(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;I)I

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;I)I

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f110322

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->l(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    const v1, 0x7f110420

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->o(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->e()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->u()V

    goto :goto_0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;I)I

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity;

    const v1, 0x7f1102ef

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->u(I)V

    .line 25
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealMoreSettingActivity$g;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_0
    return-void
.end method
