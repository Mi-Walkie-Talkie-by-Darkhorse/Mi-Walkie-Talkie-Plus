.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a(Landroid/view/View;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v3

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
