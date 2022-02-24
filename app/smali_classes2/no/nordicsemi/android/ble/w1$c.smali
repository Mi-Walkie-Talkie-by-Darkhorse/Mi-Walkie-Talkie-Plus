.class Lno/nordicsemi/android/ble/w1$c;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleManagerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/ble/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lno/nordicsemi/android/ble/w1;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/ble/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 12
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothGatt;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->f(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothGatt;Lno/nordicsemi/android/ble/w2/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/w2/b;->f(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothGatt;ZLno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothGatt;Lno/nordicsemi/android/ble/v1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/v1;->i(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic c(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on connection state change"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic d(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic e(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic f(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on PHY read"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic g(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on PHY update"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic h(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/v1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on RSSI read"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/v1;->a(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic a(ILandroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v0}, Lno/nordicsemi/android/ble/w1;->h(Lno/nordicsemi/android/ble/w1;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/w1;->c(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 7
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x2

    const-string v1, "Discovering services..."

    invoke-static {p1, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x3

    const-string v1, "gatt.discoverServices()"

    invoke-static {p1, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_1
    return-void
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2, v5}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->f(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Deque;->clear()V

    .line 5
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Ljava/util/Deque;)Ljava/util/Deque;

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string v0, "Service Changed indication received"

    invoke-static {p2, v4, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string v0, "Discovering Services..."

    invoke-static {p2, v2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x3

    const-string v1, "gatt.discoverServices()"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto/16 :goto_1

    .line 10
    :cond_0
    sget-object v1, Lno/nordicsemi/android/ble/u1;->g:Ljava/util/UUID;

    .line 11
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v7

    if-eqz v7, :cond_1

    .line 13
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v7

    array-length v7, v7

    if-ne v7, v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    aget-byte v1, v1, v6

    if-ne v1, v5, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 14
    :cond_2
    invoke-static {v0}, Lno/nordicsemi/android/ble/x2/a;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", value: "

    if-eqz v6, :cond_3

    .line 15
    iget-object v6, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification received from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v6, v4, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 18
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v1, p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v6, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Indication received from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v6, v4, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 22
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v1, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 23
    :goto_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->s(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/r2;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1, p2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->s(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/r2;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lno/nordicsemi/android/ble/r2;->b(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 25
    :cond_4
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->u(Lno/nordicsemi/android/ble/w1;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lno/nordicsemi/android/ble/r2;

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/r2;->a([B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lno/nordicsemi/android/ble/r2;->b(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 28
    :cond_5
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object v1

    instance-of v1, v1, Lno/nordicsemi/android/ble/s2;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    .line 29
    invoke-static {v1}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object v1

    iget-object v1, v1, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne v1, p2, :cond_6

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    .line 30
    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object p2

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/t1;->j()Z

    move-result p2

    if-nez p2, :cond_6

    .line 31
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/s2;

    .line 32
    invoke-virtual {p2, v0}, Lno/nordicsemi/android/ble/s2;->a([B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lno/nordicsemi/android/ble/s2;->a(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 34
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/s2;->k()Z

    move-result v0

    if-nez v0, :cond_6

    .line 35
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/p2;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 36
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 37
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/t1;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 38
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1, v5}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    .line 39
    :cond_6
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 40
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1, v5}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-nez p3, :cond_3

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Response received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0}, Lno/nordicsemi/android/ble/x2/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p3, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/h2;

    if-eqz p2, :cond_6

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/h2;

    .line 8
    invoke-virtual {p2, v0}, Lno/nordicsemi/android/ble/h2;->a([B)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lno/nordicsemi/android/ble/h2;->b(Landroid/bluetooth/BluetoothDevice;[B)V

    :cond_0
    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/h2;->h()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/Request;)V

    goto :goto_1

    :cond_3
    const-string p2, "BleManager"

    const/4 v0, 0x5

    if-eq p3, v0, :cond_7

    const/16 v1, 0x8

    if-eq p3, v1, :cond_7

    const/16 v1, 0x89

    if-ne p3, v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCharacteristicRead error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/h2;

    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 16
    :cond_5
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 17
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on reading characteristic"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 18
    :cond_6
    :goto_1
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 19
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void

    .line 20
    :cond_7
    :goto_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const-string v0, "Phone has lost bonding information"

    .line 22
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v0, Lno/nordicsemi/android/ble/r;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/r;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    :cond_8
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-nez p3, :cond_2

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data written to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0}, Lno/nordicsemi/android/ble/x2/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p3, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/t2;

    if-eqz p2, :cond_5

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/t2;

    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lno/nordicsemi/android/ble/t2;->b(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result p3

    if-nez p3, :cond_0

    .line 9
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3}, Lno/nordicsemi/android/ble/w1;->r(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/k2;

    .line 10
    :cond_0
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/t2;->i()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/Request;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_2
    const-string p2, "BleManager"

    const/4 v0, 0x5

    if-eq p3, v0, :cond_6

    const/16 v1, 0x8

    if-eq p3, v1, :cond_6

    const/16 v1, 0x89

    if-ne p3, v1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCharacteristicWrite error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/t2;

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 16
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->r(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/k2;

    .line 17
    :cond_4
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 18
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on writing characteristic"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 19
    :cond_5
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 20
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void

    .line 21
    :cond_6
    :goto_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const-string v0, "Phone has lost bonding information"

    .line 23
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v0, Lno/nordicsemi/android/ble/n;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/n;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    :cond_7
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 17
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-object v4, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Callback] Connection state changed with status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and new state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static/range {p3 .. p3}, Lno/nordicsemi/android/ble/x2/a;->f(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    .line 3
    invoke-static {v4, v7, v5}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    const-string v4, "wait("

    const/4 v5, 0x4

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v2, :cond_3

    const/4 v12, 0x2

    if-ne v3, v12, :cond_3

    .line 4
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2}, Lno/nordicsemi/android/ble/w1;->t(Lno/nordicsemi/android/ble/w1;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "BleManager"

    const-string v3, "Device received notification after disconnection."

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string v3, "gatt.close()"

    invoke-static {v2, v7, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connected to "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 9
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2, v10}, Lno/nordicsemi/android/ble/w1;->e(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 10
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2, v8, v9}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;J)J

    .line 11
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2, v12}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;I)I

    .line 12
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v3, Lno/nordicsemi/android/ble/x;

    invoke-direct {v3, v1}, Lno/nordicsemi/android/ble/x;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {v2, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    .line 13
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v3, Lno/nordicsemi/android/ble/s;

    invoke-direct {v3, v1}, Lno/nordicsemi/android/ble/s;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {v2, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$g;)V

    .line 14
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/w1;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 16
    :goto_0
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2}, Lno/nordicsemi/android/ble/w1;->g(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/u1;

    move-result-object v2

    invoke-virtual {v2, v10}, Lno/nordicsemi/android/ble/u1;->a(Z)I

    move-result v2

    if-lez v2, :cond_2

    .line 17
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 18
    :cond_2
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v3}, Lno/nordicsemi/android/ble/w1;->i(Lno/nordicsemi/android/ble/w1;)I

    move-result v3

    .line 19
    iget-object v4, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v5, Lno/nordicsemi/android/ble/v;

    invoke-direct {v5, v0, v3, v1}, Lno/nordicsemi/android/ble/v;-><init>(Lno/nordicsemi/android/ble/w1$c;ILandroid/bluetooth/BluetoothGatt;)V

    int-to-long v1, v2

    invoke-virtual {v4, v5, v1, v2}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    :cond_3
    const-string v12, "): "

    if-nez v3, :cond_14

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 21
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v3}, Lno/nordicsemi/android/ble/w1;->e(Lno/nordicsemi/android/ble/w1;)J

    move-result-wide v15

    cmp-long v3, v15, v8

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 22
    iget-object v8, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v8}, Lno/nordicsemi/android/ble/w1;->e(Lno/nordicsemi/android/ble/w1;)J

    move-result-wide v8

    const-wide/16 v15, 0x4e20

    add-long/2addr v8, v15

    cmp-long v15, v13, v8

    if-lez v15, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 23
    iget-object v9, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: (0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static/range {p2 .. p2}, Lno/nordicsemi/android/ble/v2/a;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 25
    invoke-static {v9, v13, v12}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    if-nez v8, :cond_8

    .line 26
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    .line 27
    invoke-static {v3}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v3}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v3

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/b2;->h()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 28
    iget-object v2, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v2

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/b2;->k()I

    move-result v2

    if-lez v2, :cond_7

    .line 29
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 30
    :cond_7
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v4, Lno/nordicsemi/android/ble/t;

    invoke-direct {v4, v0, v1}, Lno/nordicsemi/android/ble/t;-><init>(Lno/nordicsemi/android/ble/w1$c;Landroid/bluetooth/BluetoothGatt;)V

    int-to-long v1, v2

    invoke-virtual {v3, v4, v1, v2}, Lno/nordicsemi/android/ble/w1;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 31
    :cond_8
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v3, v10}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 32
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v3}, Lno/nordicsemi/android/ble/w1;->f(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 33
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Ljava/util/Deque;)Ljava/util/Deque;

    .line 34
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v3, v11}, Lno/nordicsemi/android/ble/w1;->f(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 35
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v3}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;)Z

    move-result v3

    .line 36
    iget-object v6, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v6}, Lno/nordicsemi/android/ble/w1;->j(Lno/nordicsemi/android/ble/w1;)Z

    move-result v6

    .line 37
    iget-object v7, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    if-eqz v8, :cond_9

    const/16 v5, 0xa

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    .line 38
    invoke-static {v5, v2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/w1;I)I

    move-result v5

    .line 39
    :goto_3
    invoke-static {v7, v9, v5}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;I)V

    .line 40
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v5

    const/4 v7, -0x1

    if-eqz v5, :cond_c

    .line 41
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v5

    iget-object v5, v5, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v9, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-eq v5, v9, :cond_c

    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v5

    iget-object v5, v5, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v9, Lno/nordicsemi/android/ble/Request$Type;->e:Lno/nordicsemi/android/ble/Request$Type;

    if-eq v5, v9, :cond_c

    .line 42
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    if-nez v2, :cond_b

    const/4 v10, -0x1

    goto :goto_4

    :cond_b
    move v10, v2

    :goto_4
    invoke-virtual {v5, v9, v10}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 43
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;

    .line 44
    :cond_c
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 45
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->w(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/t1;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v5, v9, v7}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 46
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 47
    :cond_d
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v5

    if-eqz v5, :cond_11

    if-eqz v6, :cond_e

    const/4 v7, -0x2

    goto :goto_5

    :cond_e
    if-nez v2, :cond_f

    goto :goto_5

    :cond_f
    const/16 v5, 0x85

    if-ne v2, v5, :cond_10

    if-eqz v8, :cond_10

    const/4 v7, -0x5

    goto :goto_5

    :cond_10
    move v7, v2

    .line 48
    :goto_5
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 49
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/b2;)Lno/nordicsemi/android/ble/b2;

    .line 50
    :cond_11
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5, v11}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Z)Z

    if-eqz v3, :cond_12

    .line 51
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->k(Lno/nordicsemi/android/ble/w1;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 52
    iget-object v5, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/b2;)Z

    goto :goto_6

    .line 53
    :cond_12
    iget-object v4, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v4, v11}, Lno/nordicsemi/android/ble/w1;->h(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 54
    iget-object v4, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v4, v11}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    :goto_6
    if-nez v3, :cond_13

    if-nez v2, :cond_15

    :cond_13
    return-void

    :cond_14
    if-eqz v2, :cond_15

    .line 55
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static/range {p2 .. p2}, Lno/nordicsemi/android/ble/v2/a;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v3, v4, v5}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 58
    :cond_15
    iget-object v3, v0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v4, Lno/nordicsemi/android/ble/o;

    invoke-direct {v4, v1, v2}, Lno/nordicsemi/android/ble/o;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {v3, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    :cond_16
    :goto_7
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    if-nez p3, :cond_1

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Response received from descr. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0}, Lno/nordicsemi/android/ble/x2/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p3, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/h2;

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/h2;

    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lno/nordicsemi/android/ble/h2;->b(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 9
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/h2;->h()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/Request;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_1
    const-string p2, "BleManager"

    const/4 v0, 0x5

    if-eq p3, v0, :cond_5

    const/16 v1, 0x8

    if-eq p3, v1, :cond_5

    const/16 v1, 0x89

    if-ne p3, v1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDescriptorRead error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/h2;

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 15
    :cond_3
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 16
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on reading descriptor"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 17
    :cond_4
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 18
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void

    .line 19
    :cond_5
    :goto_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const-string v0, "Phone has lost bonding information"

    .line 21
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v0, Lno/nordicsemi/android/ble/w;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/w;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    :cond_6
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_8

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data written to descr. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v0}, Lno/nordicsemi/android/ble/x2/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 4
    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string p3, "Service Changed notifications enabled"

    invoke-static {p2, v3, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3, p2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v0, :cond_5

    .line 8
    array-length p3, v0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_5

    aget-byte p3, v0, v1

    if-nez p3, :cond_5

    const/4 p3, 0x0

    .line 9
    aget-byte p3, v0, p3

    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string v2, "Indications enabled"

    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string v2, "Notifications enabled"

    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string v2, "Notifications and indications disabled"

    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 13
    :goto_0
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 15
    :cond_5
    :goto_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/t2;

    if-eqz p2, :cond_b

    .line 16
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/t2;

    .line 17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lno/nordicsemi/android/ble/t2;->b(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result p3

    if-nez p3, :cond_6

    .line 18
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3}, Lno/nordicsemi/android/ble/w1;->r(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/k2;

    .line 19
    :cond_6
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/t2;->i()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 20
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/Request;)V

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_2

    :cond_8
    const-string p2, "BleManager"

    const/4 v0, 0x5

    if-eq p3, v0, :cond_c

    const/16 v2, 0x8

    if-eq p3, v2, :cond_c

    const/16 v2, 0x89

    if-ne p3, v2, :cond_9

    goto :goto_3

    .line 22
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDescriptorWrite error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/t2;

    if-eqz p2, :cond_a

    .line 24
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 25
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->r(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/k2;

    .line 26
    :cond_a
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 27
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on writing descriptor"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 28
    :cond_b
    :goto_2
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 29
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1, v1}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void

    .line 30
    :cond_c
    :goto_3
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const-string v0, "Phone has lost bonding information"

    .line 32
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v0, Lno/nordicsemi/android/ble/u;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/u;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    :cond_d
    return-void
.end method

.method public final onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3, p2}, Lno/nordicsemi/android/ble/w1;->c(Lno/nordicsemi/android/ble/w1;I)I

    .line 3
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGatt;I)V

    .line 4
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    instance-of p3, p3, Lno/nordicsemi/android/ble/e2;

    if-eqz p3, :cond_2

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    check-cast p3, Lno/nordicsemi/android/ble/e2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lno/nordicsemi/android/ble/e2;->d(Landroid/bluetooth/BluetoothDevice;I)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMtuChanged error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mtu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BleManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/e2;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 11
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on mtu request"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 13
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void
.end method

.method public final onPhyRead(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    if-nez p4, :cond_0

    .line 1
    iget-object p4, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHY read (TX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lno/nordicsemi/android/ble/x2/a;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", RX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p3}, Lno/nordicsemi/android/ble/x2/a;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p4, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 4
    iget-object p4, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p4}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    instance-of p4, p4, Lno/nordicsemi/android/ble/g2;

    if-eqz p4, :cond_2

    .line 5
    iget-object p4, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p4}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    check-cast p4, Lno/nordicsemi/android/ble/g2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p4, v0, p2, p3}, Lno/nordicsemi/android/ble/g2;->b(Landroid/bluetooth/BluetoothDevice;II)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHY read failed with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/g2;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 11
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance p3, Lno/nordicsemi/android/ble/q;

    invoke-direct {p3, p1, p4}, Lno/nordicsemi/android/ble/q;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 13
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void
.end method

.method public final onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    if-nez p4, :cond_0

    .line 1
    iget-object p4, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHY updated (TX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lno/nordicsemi/android/ble/x2/a;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", RX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p3}, Lno/nordicsemi/android/ble/x2/a;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p4, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 4
    iget-object p4, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p4}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    instance-of p4, p4, Lno/nordicsemi/android/ble/g2;

    if-eqz p4, :cond_2

    .line 5
    iget-object p4, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p4}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    check-cast p4, Lno/nordicsemi/android/ble/g2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p4, v0, p2, p3}, Lno/nordicsemi/android/ble/g2;->b(Landroid/bluetooth/BluetoothDevice;II)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHY updated failed with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/g2;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 11
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance p3, Lno/nordicsemi/android/ble/l;

    invoke-direct {p3, p1, p4}, Lno/nordicsemi/android/ble/l;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p1

    instance-of p1, p1, Lno/nordicsemi/android/ble/g2;

    if-eqz p1, :cond_4

    .line 13
    :cond_3
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    :cond_4
    return-void
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x80L
            to = 0x14L
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote RSSI received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    instance-of p3, p3, Lno/nordicsemi/android/ble/i2;

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p3}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    check-cast p3, Lno/nordicsemi/android/ble/i2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lno/nordicsemi/android/ble/i2;->d(Landroid/bluetooth/BluetoothDevice;I)V

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading remote RSSI failed with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/i2;

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 8
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/t1;)Lno/nordicsemi/android/ble/t1;

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v0, Lno/nordicsemi/android/ble/p;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/p;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 11
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void
.end method

.method public final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v0}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v0

    iget-object v0, v0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->m:Lno/nordicsemi/android/ble/Request$Type;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v1, v3}, Lno/nordicsemi/android/ble/w1;->j(Lno/nordicsemi/android/ble/w1;Z)Z

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x4

    const-string v1, "Reliable Write executed"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x5

    const-string v1, "Reliable Write aborted"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Lno/nordicsemi/android/ble/Request;->d(Landroid/bluetooth/BluetoothDevice;)Z

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->r(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/k2;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, -0x4

    invoke-virtual {p2, p1, v0}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReliableWriteCompleted execute "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v0}, Lno/nordicsemi/android/ble/w1;->v(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/Request;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lno/nordicsemi/android/ble/Request;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v1, "Error on Execute Reliable Write"

    invoke-static {v0, p1, v1, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 11
    :goto_1
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->q(Lno/nordicsemi/android/ble/w1;)Z

    .line 12
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 8
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/w1;->c(Lno/nordicsemi/android/ble/w1;Z)Z

    if-nez p2, :cond_10

    .line 2
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x4

    const-string v2, "Services discovered"

    invoke-static {p2, v0, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 3
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/w1;->c(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 5
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v2, 0x2

    const-string v3, "Primary service found"

    invoke-static {p2, v2, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2, v1}, Lno/nordicsemi/android/ble/w1;->g(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/w1;->b(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    iget-object v3, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const-string v4, "Secondary service found"

    invoke-static {v3, v2, v4}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 9
    :cond_0
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v3, Lno/nordicsemi/android/ble/k;

    invoke-direct {v3, p1, p2}, Lno/nordicsemi/android/ble/k;-><init>(Landroid/bluetooth/BluetoothGatt;Z)V

    invoke-static {v2, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    .line 10
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->l(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/x1;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 11
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->l(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/x1;

    move-result-object p2

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/x1;->a()Landroid/bluetooth/BluetoothGattServer;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 12
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattServer;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 13
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 14
    iget-object v5, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->l(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/x1;

    move-result-object v5

    invoke-virtual {v5, v4}, Lno/nordicsemi/android/ble/x1;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 15
    iget-object v5, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->m(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_3

    .line 16
    iget-object v5, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5, v6}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Ljava/util/Map;)Ljava/util/Map;

    .line 17
    :cond_3
    iget-object v5, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v5}, Lno/nordicsemi/android/ble/w1;->m(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 19
    iget-object v6, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v6}, Lno/nordicsemi/android/ble/w1;->l(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/x1;

    move-result-object v6

    invoke-virtual {v6, v5}, Lno/nordicsemi/android/ble/x1;->a(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 20
    iget-object v6, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v6}, Lno/nordicsemi/android/ble/w1;->n(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_6

    .line 21
    iget-object v6, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/w1;Ljava/util/Map;)Ljava/util/Map;

    .line 22
    :cond_6
    iget-object v6, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v6}, Lno/nordicsemi/android/ble/w1;->n(Lno/nordicsemi/android/ble/w1;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_7
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {v2, p2}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGattServer;)V

    .line 24
    :cond_8
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->i(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 25
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 26
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/w1;->a(Landroid/bluetooth/BluetoothGatt;)Ljava/util/Deque;

    move-result-object v2

    invoke-static {p2, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Ljava/util/Deque;)Ljava/util/Deque;

    .line 27
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->o(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;

    move-result-object p2

    if-eqz p2, :cond_9

    const/4 p2, 0x1

    goto :goto_1

    :cond_9
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_a

    .line 28
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2}, Lno/nordicsemi/android/ble/w1;->o(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lno/nordicsemi/android/ble/Request;

    .line 29
    iput-boolean v0, v3, Lno/nordicsemi/android/ble/Request;->m:Z

    goto :goto_2

    .line 30
    :cond_a
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {v2}, Lno/nordicsemi/android/ble/w1;->o(Lno/nordicsemi/android/ble/w1;)Ljava/util/Deque;

    move-result-object v2

    if-nez v2, :cond_b

    .line 31
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v3, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    invoke-static {v2, v3}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Ljava/util/Deque;)Ljava/util/Deque;

    .line 32
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_c

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_c

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_d

    .line 33
    :cond_c
    iget-object v2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {}, Lno/nordicsemi/android/ble/Request;->f()Lno/nordicsemi/android/ble/t2;

    move-result-object v3

    iget-object v4, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    .line 34
    invoke-virtual {v3, v4}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/j2;)Lno/nordicsemi/android/ble/t2;

    .line 35
    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/w1;->b(Lno/nordicsemi/android/ble/Request;)V

    :cond_d
    if-eqz p2, :cond_e

    .line 36
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->g(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/u1;

    move-result-object p2

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/u1;->j()V

    .line 37
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->g(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/u1;

    move-result-object p2

    iget-object p2, p2, Lno/nordicsemi/android/ble/u1;->c:Lno/nordicsemi/android/ble/v1;

    if-eqz p2, :cond_e

    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    .line 38
    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->g(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/u1;

    move-result-object p2

    iget-object p2, p2, Lno/nordicsemi/android/ble/u1;->c:Lno/nordicsemi/android/ble/v1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {p2, p1}, Lno/nordicsemi/android/ble/v1;->k(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 39
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->g(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/u1;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/u1;->d()V

    .line 40
    :cond_e
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->f()V

    .line 41
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1, v1}, Lno/nordicsemi/android/ble/w1;->i(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 42
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/w1;->d(Lno/nordicsemi/android/ble/w1;Z)V

    goto :goto_3

    .line 43
    :cond_f
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 v1, 0x5

    const-string v2, "Device is not supported"

    invoke-static {p2, v1, v2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;ILjava/lang/String;)V

    .line 44
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->g(Lno/nordicsemi/android/ble/w1;Z)Z

    .line 45
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    new-instance v0, Lno/nordicsemi/android/ble/m;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/m;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/w1$f;)V

    .line 46
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->p(Lno/nordicsemi/android/ble/w1;)Z

    goto :goto_3

    .line 47
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServicesDiscovered error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const-string v2, "Error on discovering services"

    invoke-static {v0, v1, v2, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 49
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 50
    iget-object p2, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p2}, Lno/nordicsemi/android/ble/w1;->x(Lno/nordicsemi/android/ble/w1;)Lno/nordicsemi/android/ble/b2;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, -0x4

    invoke-virtual {p2, p1, v0}, Lno/nordicsemi/android/ble/p2;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 51
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/w1;->a(Lno/nordicsemi/android/ble/w1;Lno/nordicsemi/android/ble/b2;)Lno/nordicsemi/android/ble/b2;

    .line 52
    :cond_11
    iget-object p1, p0, Lno/nordicsemi/android/ble/w1$c;->a:Lno/nordicsemi/android/ble/w1;

    invoke-static {p1}, Lno/nordicsemi/android/ble/w1;->p(Lno/nordicsemi/android/ble/w1;)Z

    :goto_3
    return-void
.end method
