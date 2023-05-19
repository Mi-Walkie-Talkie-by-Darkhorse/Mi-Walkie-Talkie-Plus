.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;->receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasResult()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;->F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;I)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;I)I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity$d;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;->J(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealSettingActivity;)Lcom/ifengyu/intercom/i/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/i/x0;->n1()V

    return-void
.end method
