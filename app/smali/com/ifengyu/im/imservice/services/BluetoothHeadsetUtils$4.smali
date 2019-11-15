.class Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHeadsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "BluetoothHeadsetUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$002(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v6}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$700(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onHeadsetConnected()V

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Start count down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$200(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v5}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$700(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$002(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onHeadsetDisconnected()V

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Headset disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "BluetoothHeadsetUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    if-ne v1, v0, :cond_5

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "\nHeadset audio connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v6}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$402(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$200(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v5}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$700(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onScoAudioConnected()V

    goto :goto_0

    :cond_5
    if-ne v1, v7, :cond_0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v5}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$402(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$600(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$000(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onScoAudioDisconnected()V

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Headset audio disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
