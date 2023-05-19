.class Lno/nordicsemi/android/ble/BleManagerHandler$3;
.super Landroid/bluetooth/BluetoothGattCallback;
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
    iput-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic c(Landroid/bluetooth/BluetoothGatt;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->f(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic d(Landroid/bluetooth/BluetoothGatt;Lno/nordicsemi/android/ble/x2/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x2/b;->f(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private synthetic e(ILandroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->w(Lno/nordicsemi/android/ble/BleManagerHandler;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->o(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->h(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->j(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->k(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 5
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x2

    const-string v1, "Discovering services..."

    invoke-static {p1, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x3

    const-string v1, "gatt.discoverServices()"

    invoke-static {p1, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_1
    return-void
.end method

.method private synthetic g(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->E(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/c2;)Z

    return-void
.end method

.method private synthetic i(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->E(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/c2;)Z

    return-void
.end method

.method static synthetic k(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on connection state change"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic l(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic m(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Phone has lost bonding information"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic n(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on PHY read"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic o(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on PHY update"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic p(Landroid/bluetooth/BluetoothGatt;ILno/nordicsemi/android/ble/x1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "Error on RSSI read"

    invoke-interface {p2, p0, v0, p1}, Lno/nordicsemi/android/ble/x1;->m(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic q(Landroid/bluetooth/BluetoothGatt;ZLno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lno/nordicsemi/android/ble/x1;->l(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static synthetic r(Landroid/bluetooth/BluetoothGatt;Lno/nordicsemi/android/ble/x1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lno/nordicsemi/android/ble/x1;->j(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method


# virtual methods
.method public synthetic f(ILandroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler$3;->e(ILandroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public synthetic h(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler$3;->g(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public synthetic j(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/BleManagerHandler$3;->i(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->P(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-gt p2, v0, :cond_0

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v0, "Service Changed indication received"

    invoke-static {p2, v4, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 5
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->f(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->W1()V

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->R1()V

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->t(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Deque;->clear()V

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->H(Lno/nordicsemi/android/ble/BleManagerHandler;Ljava/util/Deque;)Ljava/util/Deque;

    .line 10
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->k(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 11
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v0, "Discovering Services..."

    invoke-static {p2, v2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 12
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x3

    const-string v1, "gatt.discoverServices()"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_0
    return-void

    .line 14
    :cond_1
    sget-object v1, Lno/nordicsemi/android/ble/w1;->h:Ljava/util/UUID;

    .line 15
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v7

    if-eqz v7, :cond_2

    .line 17
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v7

    array-length v7, v7

    if-ne v7, v2, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    aget-byte v1, v1, v6

    if-ne v1, v5, :cond_3

    :cond_2
    const/4 v6, 0x1

    .line 18
    :cond_3
    invoke-static {v0}, Lno/nordicsemi/android/ble/y2/a;->c([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", value: "

    if-eqz v6, :cond_4

    .line 19
    iget-object v6, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification received from "

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
    invoke-static {v6, v4, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 22
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {v1, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->M1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    .line 23
    :cond_4
    iget-object v6, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Indication received from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v6, v4, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 26
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {v1, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->L1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 27
    :goto_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/s2;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->S(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/s2;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lno/nordicsemi/android/ble/s2;->h(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 29
    :cond_5
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->T(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lno/nordicsemi/android/ble/s2;

    if-eqz v1, :cond_6

    .line 30
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/ble/s2;->f([B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lno/nordicsemi/android/ble/s2;->h(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 32
    :cond_6
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->X(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/v1;

    move-result-object v1

    instance-of v1, v1, Lno/nordicsemi/android/ble/t2;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    .line 33
    invoke-static {v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->X(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/v1;

    move-result-object v1

    iget-object v1, v1, Lno/nordicsemi/android/ble/Request;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne v1, p2, :cond_7

    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    .line 34
    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->X(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/v1;

    move-result-object p2

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/v1;->M()Z

    move-result p2

    if-nez p2, :cond_7

    .line 35
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->X(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/v1;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/t2;

    .line 36
    invoke-virtual {p2, v0}, Lno/nordicsemi/android/ble/t2;->S([B)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lno/nordicsemi/android/ble/t2;->T(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 38
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/t2;->N()Z

    move-result v0

    if-nez v0, :cond_7

    .line 39
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/q2;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 40
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 41
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/v1;->L()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 42
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    .line 43
    :cond_7
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 44
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    :cond_8
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-nez p3, :cond_3

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

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
    invoke-static {v0}, Lno/nordicsemi/android/ble/y2/a;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p3, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->N1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/i2;

    if-eqz p2, :cond_6

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/i2;

    .line 8
    invoke-virtual {p2, v0}, Lno/nordicsemi/android/ble/i2;->N([B)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lno/nordicsemi/android/ble/i2;->O(Landroid/bluetooth/BluetoothDevice;[B)V

    :cond_0
    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/i2;->I()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)V

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/i2;

    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 16
    :cond_5
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 17
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on reading characteristic"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 18
    :cond_6
    :goto_1
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 19
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    return-void

    .line 20
    :cond_7
    :goto_2
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/q;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/q;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

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
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

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
    invoke-static {v0}, Lno/nordicsemi/android/ble/y2/a;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p3, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->O1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/u2;

    if-eqz p2, :cond_5

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/u2;

    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lno/nordicsemi/android/ble/u2;->T(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result p3

    if-nez p3, :cond_0

    .line 9
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->L(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/l2;

    .line 10
    :cond_0
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/u2;->N()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/u2;

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 16
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->L(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/l2;

    .line 17
    :cond_4
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 18
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on writing characteristic"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 19
    :cond_5
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 20
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    return-void

    .line 21
    :cond_6
    :goto_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/r;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/r;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    :cond_7
    return-void
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 18
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-object v4, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

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
    invoke-static/range {p3 .. p3}, Lno/nordicsemi/android/ble/y2/a;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    .line 3
    invoke-static {v4, v7, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    const-string v4, "wait("

    const/16 v5, 0xc

    const/4 v8, 0x4

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v2, :cond_3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_3

    .line 4
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->R(Lno/nordicsemi/android/ble/BleManagerHandler;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "BleManager"

    const-string v3, "Device received notification after disconnection."

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v3, "gatt.close()"

    invoke-static {v2, v7, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Connected to "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v8, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 9
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2, v11}, Lno/nordicsemi/android/ble/BleManagerHandler;->p(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 10
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2, v9, v10}, Lno/nordicsemi/android/ble/BleManagerHandler;->r(Lno/nordicsemi/android/ble/BleManagerHandler;J)J

    .line 11
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2, v13}, Lno/nordicsemi/android/ble/BleManagerHandler;->s(Lno/nordicsemi/android/ble/BleManagerHandler;I)I

    .line 12
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v3, Lno/nordicsemi/android/ble/m;

    invoke-direct {v3, v1}, Lno/nordicsemi/android/ble/m;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 13
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v3, Lno/nordicsemi/android/ble/y;

    invoke-direct {v3, v1}, Lno/nordicsemi/android/ble/y;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->u(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$f;)V

    .line 14
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->j(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 16
    :goto_0
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->v(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/w1;

    move-result-object v2

    invoke-virtual {v2, v11}, Lno/nordicsemi/android/ble/w1;->u(Z)I

    move-result v2

    if-lez v2, :cond_2

    .line 17
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 18
    :cond_2
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->x(Lno/nordicsemi/android/ble/BleManagerHandler;)I

    move-result v3

    .line 19
    iget-object v4, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v5, Lno/nordicsemi/android/ble/w;

    invoke-direct {v5, v0, v3, v1}, Lno/nordicsemi/android/ble/w;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler$3;ILandroid/bluetooth/BluetoothGatt;)V

    int-to-long v1, v2

    invoke-virtual {v4, v5, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    :cond_3
    const-string v13, "): "

    if-nez v3, :cond_15

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 21
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->q(Lno/nordicsemi/android/ble/BleManagerHandler;)J

    move-result-wide v16

    cmp-long v3, v16, v9

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 22
    iget-object v9, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v9}, Lno/nordicsemi/android/ble/BleManagerHandler;->q(Lno/nordicsemi/android/ble/BleManagerHandler;)J

    move-result-wide v9

    const-wide/16 v16, 0x4e20

    add-long v9, v9, v16

    cmp-long v16, v14, v9

    if-lez v16, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 23
    iget-object v10, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v14, 0x5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: (0x"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static/range {p2 .. p2}, Lno/nordicsemi/android/ble/w2/a;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 25
    invoke-static {v10, v14, v8}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    if-nez v9, :cond_8

    .line 26
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    .line 27
    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v3

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/c2;->K()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 28
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v2

    invoke-virtual {v2}, Lno/nordicsemi/android/ble/c2;->O()I

    move-result v2

    if-lez v2, :cond_7

    .line 29
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 30
    :cond_7
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v4, Lno/nordicsemi/android/ble/o;

    invoke-direct {v4, v0, v1}, Lno/nordicsemi/android/ble/o;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler$3;Landroid/bluetooth/BluetoothGatt;)V

    int-to-long v1, v2

    invoke-virtual {v3, v4, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 31
    :cond_8
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v3

    invoke-virtual {v3}, Lno/nordicsemi/android/ble/c2;->S()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->y(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v5, :cond_9

    .line 33
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v3, "autoConnect = false called failed; retrying with autoConnect = true"

    invoke-static {v2, v7, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 34
    iget-object v2, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v3, Lno/nordicsemi/android/ble/x;

    invoke-direct {v3, v0, v1}, Lno/nordicsemi/android/ble/x;-><init>(Lno/nordicsemi/android/ble/BleManagerHandler$3;Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->post(Ljava/lang/Runnable;)V

    return-void

    .line 35
    :cond_9
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3, v11}, Lno/nordicsemi/android/ble/BleManagerHandler;->f(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 36
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->t(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 37
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->H(Lno/nordicsemi/android/ble/BleManagerHandler;Ljava/util/Deque;)Ljava/util/Deque;

    .line 38
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3, v12}, Lno/nordicsemi/android/ble/BleManagerHandler;->A(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 39
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->o(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result v3

    .line 40
    iget-object v5, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->B(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result v5

    .line 41
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v9, :cond_a

    const/16 v8, 0xa

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_b

    const/4 v8, 0x4

    goto :goto_3

    .line 42
    :cond_b
    iget-object v8, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v8, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->D(Lno/nordicsemi/android/ble/BleManagerHandler;I)I

    move-result v8

    .line 43
    :goto_3
    invoke-static {v6, v7, v8}, Lno/nordicsemi/android/ble/BleManagerHandler;->c0(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;I)V

    .line 44
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object v6

    const/4 v7, -0x1

    if-eqz v6, :cond_d

    .line 45
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object v6

    iget-object v6, v6, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v8, Lno/nordicsemi/android/ble/Request$Type;->c:Lno/nordicsemi/android/ble/Request$Type;

    if-eq v6, v8, :cond_d

    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object v6

    iget-object v6, v6, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v8, Lno/nordicsemi/android/ble/Request$Type;->f:Lno/nordicsemi/android/ble/Request$Type;

    if-eq v6, v8, :cond_d

    .line 46
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-nez v2, :cond_c

    const/4 v10, -0x1

    goto :goto_4

    :cond_c
    move v10, v2

    :goto_4
    invoke-virtual {v6, v8, v10}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 47
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->W(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)Lno/nordicsemi/android/ble/Request;

    .line 48
    :cond_d
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->X(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/v1;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 49
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->X(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/v1;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 50
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 51
    :cond_e
    iget-object v6, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v6}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v6

    if-eqz v6, :cond_12

    if-eqz v5, :cond_f

    const/4 v7, -0x2

    goto :goto_5

    :cond_f
    if-nez v2, :cond_10

    goto :goto_5

    :cond_10
    const/16 v5, 0x85

    if-ne v2, v5, :cond_11

    if-eqz v9, :cond_11

    const/4 v7, -0x5

    goto :goto_5

    :cond_11
    move v7, v2

    .line 52
    :goto_5
    iget-object v5, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 53
    iget-object v5, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v5, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->a0(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/c2;)Lno/nordicsemi/android/ble/c2;

    .line 54
    :cond_12
    iget-object v5, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v5, v12}, Lno/nordicsemi/android/ble/BleManagerHandler;->f(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    if-eqz v3, :cond_13

    .line 55
    iget-object v5, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->y(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 56
    iget-object v5, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->E(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Lno/nordicsemi/android/ble/c2;)Z

    goto :goto_6

    .line 57
    :cond_13
    iget-object v4, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v4, v12}, Lno/nordicsemi/android/ble/BleManagerHandler;->z(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 58
    iget-object v4, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v4, v12}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    :goto_6
    if-nez v3, :cond_14

    if-nez v2, :cond_16

    :cond_14
    return-void

    :cond_15
    if-eqz v2, :cond_16

    .line 59
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static/range {p2 .. p2}, Lno/nordicsemi/android/ble/w2/a;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v3, v4, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 62
    :cond_16
    iget-object v3, v0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v4, Lno/nordicsemi/android/ble/l;

    invoke-direct {v4, v1, v2}, Lno/nordicsemi/android/ble/l;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {v3, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    :cond_17
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
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

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
    invoke-static {v0}, Lno/nordicsemi/android/ble/y2/a;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p3, v1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->P1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/i2;

    if-eqz p2, :cond_4

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/i2;

    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lno/nordicsemi/android/ble/i2;->O(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 9
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/i2;->I()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/i2;

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 15
    :cond_3
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 16
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on reading descriptor"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 17
    :cond_4
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 18
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    return-void

    .line 19
    :cond_5
    :goto_1
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/p;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/p;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

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
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

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
    invoke-static {v0}, Lno/nordicsemi/android/ble/y2/a;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 4
    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->N(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string p3, "Service Changed notifications enabled"

    invoke-static {p2, v3, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->O(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothGattDescriptor;)Z

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
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v2, "Indications enabled"

    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v2, "Notifications enabled"

    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v2, "Notifications and indications disabled"

    invoke-static {p3, v3, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 13
    :goto_0
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Q1(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 15
    :cond_5
    :goto_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/u2;

    if-eqz p2, :cond_b

    .line 16
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    check-cast p2, Lno/nordicsemi/android/ble/u2;

    .line 17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lno/nordicsemi/android/ble/u2;->T(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result p3

    if-nez p3, :cond_6

    .line 18
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->L(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/l2;

    .line 19
    :cond_6
    invoke-virtual {p2}, Lno/nordicsemi/android/ble/u2;->N()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 20
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->l(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)V

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/u2;

    if-eqz p2, :cond_a

    .line 24
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 25
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->L(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/l2;

    .line 26
    :cond_a
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 27
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on writing descriptor"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 28
    :cond_b
    :goto_2
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 29
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    return-void

    .line 30
    :cond_c
    :goto_3
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication required ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/t;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/t;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

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
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTU changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->U(Lno/nordicsemi/android/ble/BleManagerHandler;I)I

    .line 3
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p3, p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V1(Landroid/bluetooth/BluetoothGatt;I)V

    .line 4
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    instance-of p3, p3, Lno/nordicsemi/android/ble/f2;

    if-eqz p3, :cond_2

    .line 5
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    check-cast p3, Lno/nordicsemi/android/ble/f2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lno/nordicsemi/android/ble/f2;->M(Landroid/bluetooth/BluetoothDevice;I)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

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
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/f2;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 11
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "Error on mtu request"

    invoke-static {p2, p1, v0, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 13
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->h(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    :cond_3
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
    iget-object p4, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHY read (TX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lno/nordicsemi/android/ble/y2/a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", RX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p3}, Lno/nordicsemi/android/ble/y2/a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p4, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 4
    iget-object p4, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p4}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    instance-of p4, p4, Lno/nordicsemi/android/ble/h2;

    if-eqz p4, :cond_2

    .line 5
    iget-object p4, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p4}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    check-cast p4, Lno/nordicsemi/android/ble/h2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p4, v0, p2, p3}, Lno/nordicsemi/android/ble/h2;->Q(Landroid/bluetooth/BluetoothDevice;II)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHY read failed with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/h2;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 11
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance p3, Lno/nordicsemi/android/ble/v;

    invoke-direct {p3, p1, p4}, Lno/nordicsemi/android/ble/v;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 13
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

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
    iget-object p4, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHY updated (TX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lno/nordicsemi/android/ble/y2/a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", RX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p3}, Lno/nordicsemi/android/ble/y2/a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p4, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 4
    iget-object p4, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p4}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    instance-of p4, p4, Lno/nordicsemi/android/ble/h2;

    if-eqz p4, :cond_2

    .line 5
    iget-object p4, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p4}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p4

    check-cast p4, Lno/nordicsemi/android/ble/h2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p4, v0, p2, p3}, Lno/nordicsemi/android/ble/h2;->Q(Landroid/bluetooth/BluetoothDevice;II)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHY updated failed with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/h2;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 11
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance p3, Lno/nordicsemi/android/ble/n;

    invoke-direct {p3, p1, p4}, Lno/nordicsemi/android/ble/n;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p1

    instance-of p1, p1, Lno/nordicsemi/android/ble/h2;

    if-eqz p1, :cond_4

    .line 13
    :cond_3
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

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
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

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

    invoke-static {p3, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 2
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    instance-of p3, p3, Lno/nordicsemi/android/ble/j2;

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p3}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p3

    check-cast p3, Lno/nordicsemi/android/ble/j2;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lno/nordicsemi/android/ble/j2;->K(Landroid/bluetooth/BluetoothDevice;I)V

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading remote RSSI failed with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    instance-of p2, p2, Lno/nordicsemi/android/ble/j2;

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 8
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->Y(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/v1;)Lno/nordicsemi/android/ble/v1;

    .line 9
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/u;

    invoke-direct {v0, p1, p3}, Lno/nordicsemi/android/ble/u;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 11
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    return-void
.end method

.method public final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object v0

    iget-object v0, v0, Lno/nordicsemi/android/ble/Request;->c:Lno/nordicsemi/android/ble/Request$Type;

    sget-object v1, Lno/nordicsemi/android/ble/Request$Type;->n:Lno/nordicsemi/android/ble/Request$Type;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->M(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x4

    const-string v1, "Reliable Write executed"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x5

    const-string v1, "Reliable Write aborted"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Lno/nordicsemi/android/ble/Request;->E(Landroid/bluetooth/BluetoothDevice;)Z

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->L(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/l2;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, -0x4

    invoke-virtual {p2, p1, v0}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

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
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->V(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/Request;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lno/nordicsemi/android/ble/Request;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 10
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v1, "Error on Execute Reliable Write"

    invoke-static {v0, p1, v1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 11
    :goto_1
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->K(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    .line 12
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    return-void
.end method

.method public final onServiceChanged(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x4

    const-string v1, "Service changed, invalidating services"

    invoke-static {p1, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->f(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 3
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->W1()V

    .line 4
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->R1()V

    .line 5
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->t(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    .line 6
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->H(Lno/nordicsemi/android/ble/BleManagerHandler;Ljava/util/Deque;)Ljava/util/Deque;

    .line 7
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->k(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 8
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->i(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 9
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x2

    const-string v1, "Discovering Services..."

    invoke-static {p1, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x3

    const-string v1, "gatt.discoverServices()"

    invoke-static {p1, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->n(Lno/nordicsemi/android/ble/BleManagerHandler;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 6
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->j(Lno/nordicsemi/android/ble/BleManagerHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->k(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 3
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v2, 0x4

    const-string v3, "Services discovered"

    invoke-static {p2, v2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 4
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v3, 0x1

    invoke-static {p2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->i(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 5
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->V0(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 6
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v2, 0x2

    const-string v4, "Primary service found"

    invoke-static {p2, v2, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 7
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->C(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 8
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->U0(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object v4, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const-string v5, "Secondary service found"

    invoke-static {v4, v2, v5}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 10
    :cond_1
    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v4, Lno/nordicsemi/android/ble/k;

    invoke-direct {v4, p1, p2}, Lno/nordicsemi/android/ble/k;-><init>(Landroid/bluetooth/BluetoothGatt;Z)V

    invoke-static {v2, v4}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 11
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->F(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/y1;

    move-result-object p2

    if-nez p2, :cond_8

    .line 12
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->f(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 13
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p2, p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->q0(Landroid/bluetooth/BluetoothGatt;)Ljava/util/Deque;

    move-result-object v0

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->H(Lno/nordicsemi/android/ble/BleManagerHandler;Ljava/util/Deque;)Ljava/util/Deque;

    .line 14
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 15
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno/nordicsemi/android/ble/Request;

    .line 16
    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {v0, v2}, Lno/nordicsemi/android/ble/Request;->G(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/Request;

    .line 17
    iput-boolean v3, v0, Lno/nordicsemi/android/ble/Request;->n:Z

    goto :goto_0

    .line 18
    :cond_3
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->G(Lno/nordicsemi/android/ble/BleManagerHandler;)Ljava/util/Deque;

    move-result-object p2

    if-nez p2, :cond_4

    .line 19
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->H(Lno/nordicsemi/android/ble/BleManagerHandler;Ljava/util/Deque;)Ljava/util/Deque;

    .line 20
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_5

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_5

    const/16 v0, 0x1b

    if-eq p2, v0, :cond_5

    const/16 v0, 0x1c

    if-ne p2, v0, :cond_6

    .line 21
    :cond_5
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {}, Lno/nordicsemi/android/ble/Request;->u()Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    iget-object v2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    .line 22
    invoke-virtual {v0, v2}, Lno/nordicsemi/android/ble/u2;->U(Lno/nordicsemi/android/ble/k2;)Lno/nordicsemi/android/ble/u2;

    .line 23
    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->l(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/Request;)V

    .line 24
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->f(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    :cond_6
    if-eqz v1, :cond_7

    .line 25
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->v(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/w1;

    move-result-object p2

    invoke-virtual {p2}, Lno/nordicsemi/android/ble/w1;->C()V

    .line 26
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->v(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/w1;

    move-result-object p2

    iget-object p2, p2, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/x1;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    .line 27
    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->v(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/w1;

    move-result-object p2

    iget-object p2, p2, Lno/nordicsemi/android/ble/w1;->d:Lno/nordicsemi/android/ble/x1;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {p2, p1}, Lno/nordicsemi/android/ble/x1;->n(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->v(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/w1;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->m()V

    .line 29
    :cond_7
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->r0()V

    .line 30
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->m(Lno/nordicsemi/android/ble/BleManagerHandler;Z)V

    goto :goto_1

    .line 31
    :cond_8
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1}, Lno/nordicsemi/android/ble/BleManagerHandler;->F(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/y1;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/y1;->a()Landroid/bluetooth/BluetoothGattServer;

    throw v0

    .line 32
    :cond_9
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 v0, 0x5

    const-string v1, "Device is not supported"

    invoke-static {p2, v0, v1}, Lno/nordicsemi/android/ble/BleManagerHandler;->d(Lno/nordicsemi/android/ble/BleManagerHandler;ILjava/lang/String;)V

    .line 33
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2, v3}, Lno/nordicsemi/android/ble/BleManagerHandler;->C(Lno/nordicsemi/android/ble/BleManagerHandler;Z)Z

    .line 34
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    new-instance v0, Lno/nordicsemi/android/ble/s;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/s;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {p2, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->e(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/BleManagerHandler$e;)V

    .line 35
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v2}, Lno/nordicsemi/android/ble/BleManagerHandler;->I(Lno/nordicsemi/android/ble/BleManagerHandler;I)Z

    goto :goto_1

    .line 36
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServicesDiscovered error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BleManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v3, "Error on discovering services"

    invoke-static {v1, v2, v3, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->J(Lno/nordicsemi/android/ble/BleManagerHandler;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 38
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 39
    iget-object p2, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->Z(Lno/nordicsemi/android/ble/BleManagerHandler;)Lno/nordicsemi/android/ble/c2;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, -0x4

    invoke-virtual {p2, p1, v1}, Lno/nordicsemi/android/ble/q2;->B(Landroid/bluetooth/BluetoothDevice;I)V

    .line 40
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    invoke-static {p1, v0}, Lno/nordicsemi/android/ble/BleManagerHandler;->a0(Lno/nordicsemi/android/ble/BleManagerHandler;Lno/nordicsemi/android/ble/c2;)Lno/nordicsemi/android/ble/c2;

    .line 41
    :cond_b
    iget-object p1, p0, Lno/nordicsemi/android/ble/BleManagerHandler$3;->a:Lno/nordicsemi/android/ble/BleManagerHandler;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lno/nordicsemi/android/ble/BleManagerHandler;->I(Lno/nordicsemi/android/ble/BleManagerHandler;I)Z

    :goto_1
    return-void
.end method
