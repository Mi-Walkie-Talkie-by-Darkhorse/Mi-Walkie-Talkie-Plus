.class Lno/nordicsemi/android/ble/BleManagerHandler$b;
.super Landroid/content/BroadcastReceiver;
.source "BleManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/ble/BleManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lno/nordicsemi/android/ble/BleManagerHandler;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/BleManagerHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->e(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/a;->e(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic c(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->g(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic d(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/a;->g(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic e(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->d(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic f(Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/x2/a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/a;->d(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private synthetic g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->k(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 2
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v1, 0x2

    const-string v2, "Discovering services..."

    invoke-static {v0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v1, 0x3

    const-string v2, "gatt.discoverServices()"

    invoke-static {v0, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->n(Lno/nordicsemi/android/ble/BleManagerHandler;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method


# virtual methods
.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lno/nordicsemi/android/ble/BleManagerHandler$b;->g()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 3
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 4
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->R(Lno/nordicsemi/android/ble/BleManagerHandler;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->R(Lno/nordicsemi/android/ble/BleManagerHandler;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Broadcast] Action received: android.bluetooth.device.action.BOND_STATE_CHANGED, bond state changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0}, Lno/nordicsemi/android/ble/y2/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v1, v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 9
    :pswitch_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v0, "Device bonded"

    invoke-static {p2, v1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 10
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/e;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/e;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 11
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/d;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/d;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->g(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$d;)V

    .line 12
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    iget-object p2, p2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->d:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p2, v0, :cond_1

    .line 13
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 14
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->W(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;

    goto/16 :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->h(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->j(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 16
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance p2, Lno/nordicsemi/android/ble/f;

    invoke-direct {p2, p0}, Lno/nordicsemi/android/ble/f;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler$b;)V

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->post(Ljava/lang/Runnable;)V

    return-void

    .line 17
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_3

    .line 18
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)V

    goto/16 :goto_0

    :cond_3
    return-void

    .line 20
    :pswitch_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/i;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/i;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 21
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/h;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/h;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->g(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$d;)V

    return-void

    :pswitch_2
    const/16 v0, 0xb

    if-ne p2, v0, :cond_4

    .line 22
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/j;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/j;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 23
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/g;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/g;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->g(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$d;)V

    .line 24
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x5

    const-string v1, "Bonding failed"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 25
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 26
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    const/4 v0, -0x4

    invoke-virtual {p2, p1, v0}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 27
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->W(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    if-ne p2, v0, :cond_6

    .line 28
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    iget-object p2, p2, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v0, Lno/nordicsemi/android/ble/Request$Type;->f:Lno/nordicsemi/android/ble/Request$Type;

    if-ne p2, v0, :cond_5

    .line 29
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v0, "Bond information removed"

    invoke-static {p2, v1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 30
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 31
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->W(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;

    .line 32
    :cond_5
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->f0()V

    .line 33
    :cond_6
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$b;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
