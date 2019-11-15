.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->receiveParamResponse(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;->SHARK_PARAM_UPDATE_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam$SHARK_DEV_UERR;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$5;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
