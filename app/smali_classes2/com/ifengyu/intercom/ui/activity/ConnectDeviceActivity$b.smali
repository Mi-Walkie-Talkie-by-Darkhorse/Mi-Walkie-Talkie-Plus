.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "ConnectDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectDeviceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2, v4, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2, v4, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
