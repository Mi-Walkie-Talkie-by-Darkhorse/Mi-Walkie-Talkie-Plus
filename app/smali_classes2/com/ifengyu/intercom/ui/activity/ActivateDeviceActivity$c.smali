.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->receiveParamResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->q:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
