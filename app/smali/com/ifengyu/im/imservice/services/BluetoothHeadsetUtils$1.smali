.class Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;
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

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$002(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$000(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x408

    if-eq v0, v1, :cond_0

    const/16 v1, 0x404

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$100(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v3}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$300(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onHeadsetConnected()V

    :cond_1
    const-string v0, "BluetoothHeadsetUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v2}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$000(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Headset disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$200(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v2}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$300(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$100(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onHeadsetDisconnected()V

    goto :goto_0

    :cond_5
    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v3}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$402(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$500(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v2}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$502(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onHeadsetConnected()V

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$200(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v2}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$300(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onScoAudioConnected()V

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Sco connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-nez v0, :cond_2

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Sco disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$500(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v2}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$402(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$100(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onScoAudioDisconnected()V

    goto/16 :goto_0
.end method
