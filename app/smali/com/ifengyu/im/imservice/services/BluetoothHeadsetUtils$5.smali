.class Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$5;
.super Landroid/os/CountDownTimer;
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
.method constructor <init>(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$5;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$5;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "\nonFinish fail to connect to headset audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$5;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$600(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$5;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$000(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "onTick startVoiceRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
