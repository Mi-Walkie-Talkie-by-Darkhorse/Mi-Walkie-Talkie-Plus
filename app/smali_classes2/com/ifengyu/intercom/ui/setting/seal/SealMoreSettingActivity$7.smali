.class Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;
.super Ljava/lang/Object;
.source "SealMoreSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->k()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->k()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v2, 0x7f09018c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    const v1, 0x7f090248

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->k()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v2, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->d(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->e(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$7;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
