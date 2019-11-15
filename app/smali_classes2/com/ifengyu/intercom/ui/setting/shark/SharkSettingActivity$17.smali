.class Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;
.super Ljava/lang/Object;
.source "SharkSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->hasChTxPower()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasShareLoc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v2, 0x7f0901f0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17$1;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;)V

    invoke-static {v0, v4, v5}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->b(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->d(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;->b:Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity;->e(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17$2;-><init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkSettingActivity$17;)V

    invoke-static {v0, v4, v5}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
