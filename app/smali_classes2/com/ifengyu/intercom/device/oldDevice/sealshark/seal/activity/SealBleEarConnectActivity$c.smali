.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$c;
.super Ljava/util/TimerTask;
.source "SealBleEarConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBleEarConnectActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
