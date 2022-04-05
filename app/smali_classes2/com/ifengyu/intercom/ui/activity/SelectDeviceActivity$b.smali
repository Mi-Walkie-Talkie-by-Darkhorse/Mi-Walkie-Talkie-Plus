.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/lite/dialog/list/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;Landroid/view/View;ILjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    if-eq p3, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const-class p4, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.ifengyu.intercom.action.CONNECT_HELP"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {p3, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->k(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->l(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v()V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->l(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()I

    move-result p2

    const p3, 0x8f03

    if-ne p2, p3, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->l(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->j(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/lite/h/h0;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ifengyu/intercom/lite/h/h0;->d(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v()V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->l(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object p3

    const/4 p4, 0x3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->l(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3, p4, v1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    const-wide/16 v0, 0x2710

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method
