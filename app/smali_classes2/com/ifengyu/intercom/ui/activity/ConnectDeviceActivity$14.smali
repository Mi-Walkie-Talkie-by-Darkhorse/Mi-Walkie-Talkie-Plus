.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->g(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/a/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/ifengyu/intercom/node/a/d;->b(Ljava/lang/String;Z)V

    :cond_0
    const-string v1, "ConnectDeviceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clicked device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v3

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/ui/adapter/a;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/ui/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/adapter/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$14;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
