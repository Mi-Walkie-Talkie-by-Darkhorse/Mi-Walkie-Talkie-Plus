.class public Lcom/ifengyu/intercom/node/btle/a;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleGattCallback.java"


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
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v2, v0, p2}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;I)V

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v2, v0, p4}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    const-string v0, "BleGattCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->g()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    const-string v0, "BleGattCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicChanged: uuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->f()Lcom/ifengyu/intercom/node/btle/j;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ifengyu/intercom/node/btle/j;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3

    const-string v0, "BleGattCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicRead: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->h:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3

    const-string v0, "BleGattCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->f()Lcom/ifengyu/intercom/node/btle/j;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/ifengyu/intercom/node/btle/j;->a(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "BleGattCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionStateChange. Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->e()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    packed-switch p3, :pswitch_data_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected connection state on device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    if-nez p3, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/node/btle/b;->a(Ljava/lang/Exception;)V

    :cond_0
    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/node/btle/b;->h()Lcom/ifengyu/intercom/node/btle/GattOperation;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v4, v0}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    move-object v0, v1

    move v1, v2

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/b;->f()Lcom/ifengyu/intercom/node/btle/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/node/btle/j;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void

    :pswitch_0
    :try_start_2
    const-string v0, "BleGattCallback"

    const-string v4, "onConnectionStateChange: disconnected."

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->g()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/node/btle/b;->a(Ljava/lang/Exception;)V

    :goto_1
    move-object v0, v1

    move v1, v2

    goto :goto_0

    :pswitch_1
    const-string v0, "BleGattCallback"

    const-string v4, "onConnectionStateChange: connected."

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    sget-object v4, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->g()V
    :try_end_2
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_2
    :try_start_4
    const-string v0, "BleGattCallback"

    const-string v4, "onConnectionStateChange: connecting."

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    sget-object v4, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    goto :goto_1

    :pswitch_3
    const-string v0, "BleGattCallback"

    const-string v4, "onConnectionStateChange: disconnecting."

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    sget-object v4, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V
    :try_end_4
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "We don\'t support reading a characteristic"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    const-string v0, "BleGattCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDescriptorWrite callback. Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    const-string v0, "BleGattCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtuChanged to MTU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/a;->a:Lcom/ifengyu/intercom/node/btle/b;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/node/btle/b;->b(I)V

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, p1, p3, v0}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "We don\'t support reading a characteristic"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/node/btle/a;->a(Landroid/bluetooth/BluetoothGatt;ILcom/ifengyu/intercom/node/btle/GattOperation;)V

    return-void
.end method
