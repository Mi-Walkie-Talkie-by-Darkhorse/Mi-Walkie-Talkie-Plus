.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;
.super Lcom/ifengyu/intercom/ui/baseui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/b<",
        "Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 4

    const-string v0, "ConnectDeviceActivity"

    if-nez p2, :cond_0

    const-string p1, "scanBleActivity == null"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    instance-of p1, p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->w(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, v2}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p2, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->b(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;)V

    :cond_1
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->s(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    invoke-static {p2, v2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z

    goto/16 :goto_0

    :pswitch_3
    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)Z

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DUK-AL20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->r(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/bluetooth/le/BluetoothLeScanner;)Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_2
    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->q(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    goto/16 :goto_0

    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setRssi(I)V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x()V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan the new device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setList(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;->setRssi(I)V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->c(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->p(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->x()V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V

    return-void
.end method
