.class Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;
.super Ljava/lang/Object;
.source "SealSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/b/aa;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity$1;->b:Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/seal/SealSettingActivity;I)I

    goto :goto_0
.end method
