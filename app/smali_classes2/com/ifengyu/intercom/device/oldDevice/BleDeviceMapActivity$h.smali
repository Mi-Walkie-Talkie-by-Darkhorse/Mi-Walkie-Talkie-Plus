.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;
.super Ljava/lang/Object;
.source "BleDeviceMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->receiveSealParamResponse(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->U0()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->G(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->hasCh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getChVox()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$h;->b:Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->I(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Z)Z

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/v;->a()Lcom/ifengyu/intercom/p/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/p/v;->g()V

    :cond_0
    return-void
.end method
