.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;)V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/ifengyu/intercom/i/c0;->c(I)I

    move-result p2

    .line 3
    invoke-static {p3}, Lcom/ifengyu/blelib/f/c;->a([B)Lcom/ifengyu/blelib/f/c;

    move-result-object p3

    .line 4
    invoke-static {p3}, Lcom/ifengyu/intercom/i/y;->b(Lcom/ifengyu/blelib/f/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/ifengyu/blelib/f/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScanRecord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ifengyu/blelib/f/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConnectDeviceActivity"

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p3}, Lcom/ifengyu/intercom/i/y;->a(Lcom/ifengyu/blelib/f/c;)I

    move-result p3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discover device-->name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", deviceType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$s;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$v;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {v5, v0, v1, p3, p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    invoke-static {v2, v3, p2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
