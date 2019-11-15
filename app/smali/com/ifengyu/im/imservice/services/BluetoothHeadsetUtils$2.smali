.class Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$2;
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

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$2;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$2;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0, v1}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$2;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$100(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "\nonFinish fail to connect to headset audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$2;->this$0:Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->access$100(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "\nonTick start bluetooth Sco"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
