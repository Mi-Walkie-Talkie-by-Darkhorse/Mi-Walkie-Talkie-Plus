.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "ConnectDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/a",
        "<",
        "Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    const-string v0, "ConnectDeviceActivity"

    const-string v1, "scanBleActivity == null"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setRssi(I)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c()V

    goto :goto_0

    :cond_2
    const-string v2, "ConnectDeviceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan the new device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setList(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setRssi(I)V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->u(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c()V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->v(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DUK-AL20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_3
    invoke-static {p2, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    invoke-static {p2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p2, v3}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->h(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    return-void
.end method
