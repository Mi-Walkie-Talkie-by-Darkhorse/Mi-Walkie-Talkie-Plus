.class public Lcom/ifengyu/intercom/node/btle/a;
.super Landroid/bluetooth/BluetoothGattCallback;


# instance fields
.field private final a:Lcom/ifengyu/intercom/node/btle/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/btle/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->e()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v1, p1, p2}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;I)V

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p2, p1, p4}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    const-string p1, "BleGattCallback"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notify operation "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " complete"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->g()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCharacteristicChanged: uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleGattCallback"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->c()Lcom/ifengyu/intercom/node/btle/j;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ifengyu/intercom/node/btle/j;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCharacteristicRead: status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleGattCallback"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCharacteristicWrite: status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleGattCallback"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->c()Lcom/ifengyu/intercom/node/btle/j;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/ifengyu/intercom/node/btle/j;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange. Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleGattCallback"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->e()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v3, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    const-string p1, "BleGattCallback"

    const-string p2, "onConnectionStateChange: disconnecting."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    sget-object p2, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    goto/16 :goto_0

    :cond_0
    new-instance v3, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected connection state on device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p1, "BleGattCallback"

    const-string p2, "onConnectionStateChange: connected."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    sget-object p2, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->g()V

    goto :goto_0

    :cond_2
    const-string p1, "BleGattCallback"

    const-string p2, "onConnectionStateChange: connecting."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    sget-object p2, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    goto :goto_0

    :cond_3
    const-string p1, "BleGattCallback"

    const-string p2, "onConnectionStateChange: disconnected."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->g()V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1, v2}, Lcom/ifengyu/intercom/node/btle/b;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    if-nez p3, :cond_4

    :try_start_1
    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Ljava/lang/Exception;)V

    :cond_4
    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/btle/b;->b()Lcom/ifengyu/intercom/node/btle/GattOperation;

    move-result-object p2

    sget-object p3, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    if-eq p2, p3, :cond_5

    iget-object p2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/b;->c()Lcom/ifengyu/intercom/node/btle/j;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/ifengyu/intercom/node/btle/j;->a(Ljava/lang/Exception;)V

    :cond_6
    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "We don\'t support reading a characteristic"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDescriptorWrite callback. Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleGattCallback"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->h:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMtuChanged to MTU: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleGattCallback"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/node/btle/b;->b(I)V

    :cond_0
    sget-object p2, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, p1, p3, p2}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "We don\'t support reading a characteristic"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;)V

    return-void
.end method
