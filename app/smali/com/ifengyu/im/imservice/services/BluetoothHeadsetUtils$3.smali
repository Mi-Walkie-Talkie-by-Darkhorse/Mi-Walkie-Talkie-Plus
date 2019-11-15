.class Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;
.super Ljava/lang/Object;
.source "BluetoothHeadsetUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Profile listener onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$602(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$600(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$002(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->onHeadsetConnected()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$700(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Start count down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$900(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$800(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$900(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$800(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "Profile listener onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->stopBluetooth11()V

    return-void
.end method
