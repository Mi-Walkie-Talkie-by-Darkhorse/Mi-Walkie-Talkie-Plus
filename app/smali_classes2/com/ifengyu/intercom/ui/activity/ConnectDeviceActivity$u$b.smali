.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v3, v3, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const v1, 0x7f1100aa

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/c;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u$b;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$u;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->o(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
