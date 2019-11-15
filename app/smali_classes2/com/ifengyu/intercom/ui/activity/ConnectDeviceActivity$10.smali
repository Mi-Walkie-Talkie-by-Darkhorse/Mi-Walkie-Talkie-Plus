.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;->b:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->hasActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;->b:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/MiTalkiApp;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;->getActivate()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/ifengyu/intercom/MiTalkiApp;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$10;->b:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->y(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
