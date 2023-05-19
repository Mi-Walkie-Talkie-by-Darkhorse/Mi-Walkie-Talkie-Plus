.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;ILcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;I)V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 2
    invoke-static {p3, v1}, Lcom/ifengyu/blelib/e/c;->e([BLjava/lang/String;)Lcom/ifengyu/blelib/e/c;

    move-result-object p3

    .line 3
    invoke-static {p3}, Lcom/ifengyu/intercom/p/w;->b(Lcom/ifengyu/blelib/e/c;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p3}, Lcom/ifengyu/intercom/p/w;->a(Lcom/ifengyu/blelib/e/c;)I

    move-result v1

    .line 5
    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;->b:I

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p3}, Lcom/ifengyu/blelib/e/c;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/ifengyu/blelib/e/c;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScanRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "ConnectDeviceActivity"

    invoke-static {v3, p3}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discover device-->name: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", address: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", deviceType: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$c;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$e;

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/ifengyu/intercom/p/b0;->l(I)I

    move-result p2

    const/4 v4, 0x0

    new-instance v5, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {v5, v0, v2, v1, p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    invoke-static {p3, v3, p2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
