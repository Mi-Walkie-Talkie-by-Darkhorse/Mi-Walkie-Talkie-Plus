.class Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->hasChVox()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->e(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$6;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
