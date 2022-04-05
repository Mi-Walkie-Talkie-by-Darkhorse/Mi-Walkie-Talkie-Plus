.class Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)I

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

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->e(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->d(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->stopTransIfBusyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->pwSaveModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v2, 0x7f11028c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v1, 0x7f110375

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;->voicePromptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity;

    const v1, 0x7f110260

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealMoreSettingActivity$g;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_0
    return-void
.end method
