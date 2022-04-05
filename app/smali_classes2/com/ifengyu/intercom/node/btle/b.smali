.class final Lcom/ifengyu/intercom/node/btle/b;
.super Ljava/lang/Object;


# static fields
.field private static final l:J

.field private static final m:J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/bluetooth/BluetoothManager;

.field private volatile c:Landroid/bluetooth/BluetoothGatt;

.field private d:Lcom/ifengyu/intercom/node/btle/GattException;

.field private final e:Ljava/lang/Object;

.field private f:I

.field private g:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field private h:Ljava/util/UUID;

.field private i:Z

.field private final j:Landroid/bluetooth/BluetoothGattCallback;

.field private final k:Lcom/ifengyu/intercom/node/btle/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ifengyu/intercom/node/btle/b;->l:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ifengyu/intercom/node/btle/b;->m:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    const/16 v0, 0x17

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Z

    new-instance v0, Lcom/ifengyu/intercom/node/btle/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/a;-><init>(Lcom/ifengyu/intercom/node/btle/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Landroid/bluetooth/BluetoothGattCallback;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->a:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->b:Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/ifengyu/intercom/node/btle/j;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Lcom/ifengyu/intercom/node/btle/j;

    return-void

    :cond_0
    new-instance p1, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string p2, "Bluetooth is not supported on this device."

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p1, "Service %s is missing characteristic %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;Z)V

    throw v0
.end method

.method private a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    sget-wide v0, Lcom/ifengyu/intercom/node/btle/b;->l:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "BluetoothGattHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting for operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to be complete."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/b;->h:Ljava/util/UUID;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    invoke-virtual {p1, p3, p4}, Ljava/lang/Object;->wait(J)V

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    sget-object p2, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    if-nez p1, :cond_0

    monitor-exit v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    throw p1

    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string p2, "Operation %s timed out after %dms."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string p1, "BluetoothGattHelper"

    const-string p2, "waitForCompletion: has been interrupted."

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    sget-object p1, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->h:Ljava/util/UUID;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    return-void

    :goto_1
    sget-object p2, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->h:Ljava/util/UUID;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    throw p1
.end method

.method private b(Lcom/ifengyu/intercom/node/btle/GattOperation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    sget-wide v0, Lcom/ifengyu/intercom/node/btle/b;->l:J

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "BluetoothGattHelper"

    const-string v1, "cleanUpAfterDisconnect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Lcom/ifengyu/intercom/node/btle/j;

    invoke-interface {v2, p1}, Lcom/ifengyu/intercom/node/btle/j;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Z

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private j()Landroid/bluetooth/BluetoothGatt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "BluetoothGatt not connected"

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    throw v0
.end method

.method private k()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/node/btle/b;->b(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    iput-boolean v3, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void

    :cond_0
    :try_start_2
    new-instance v2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v4, "Cannot start discovering services on device %s."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0
.end method


# virtual methods
.method a(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    return-object p1

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an event for un unexpected device. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an event for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " when not connected."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BluetoothGattHelper"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->b:Landroid/bluetooth/BluetoothManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->h()V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_1
    if-eqz v1, :cond_2

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-wide/16 v2, 0x64

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->g()V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/b;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/b;->b(Ljava/lang/Exception;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/b;->b(Ljava/lang/Exception;)V

    throw v1

    :cond_3
    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "BluetoothGattHelper not connected."

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestConnectionPrio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance p1, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v0, "Error calling requestConnectionPriority()"

    invoke-direct {p1, v0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnectionPrio error,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnectionPrio Got exception, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw p1
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "device is null!"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Z

    invoke-static {p1}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->f()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v2, v0, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    sget-object p1, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v0, 0x0

    sget-wide v2, Lcom/ifengyu/intercom/node/btle/b;->m:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v4, "Cannot connect to device %s."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v2, "BluetoothGattHelper"

    const-string v4, "Device %s already connected."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw p1
.end method

.method a(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BluetoothGattHelper"

    if-eqz p2, :cond_8

    const/16 v1, 0xd

    if-eq p2, v1, :cond_7

    const/16 v1, 0x8f

    if-eq p2, v1, :cond_6

    const/16 v0, 0x101

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const-string v0, "Unknow error code"

    goto :goto_0

    :cond_0
    const-string v0, "GATT_INVALID_OFFSET"

    goto :goto_0

    :cond_1
    const-string v0, "GATT_REQUEST_NOT_SUPPORTED"

    goto :goto_0

    :cond_2
    const-string v0, "GATT_INSUFFICIENT_AUTHENTICATION"

    goto :goto_0

    :cond_3
    const-string v0, "GATT_WRITE_NOT_PERMITTED"

    goto :goto_0

    :cond_4
    const-string v0, "GATT_READ_NOT_PERMITTED"

    goto :goto_0

    :cond_5
    const-string v0, "GATT_FAILURE"

    goto :goto_0

    :cond_6
    const-string p1, "Connection congested."

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string v0, "GATT_INVALID_ATTRIBUTE_LENGTH"

    :goto_0
    new-instance v1, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "Connection GATT_SUCCESS."

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method a(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->h:Ljava/util/UUID;

    const-string v1, "BluetoothGattHelper"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event for a characteristic for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on device  when not expected a characteristic. Received: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->h:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received event for an unexpected characteristic for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on device  Expected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v3, "Cannot set characteristic notification %s on device %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw p1
.end method

.method declared-synchronized a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeCharacteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result p2

    invoke-static {p2}, Lcom/ifengyu/intercom/i/o;->a(Z)V

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    new-instance p2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v2, "Cannot write characteristic %s on device %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->h:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void

    :cond_0
    :try_start_2
    new-instance v2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v3, "Cannot write descriptor %s on device %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw p1
.end method

.method a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->g()V

    return-void
.end method

.method a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received result for an operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while expecting "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on device "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothGattHelper"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/b;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method b()Lcom/ifengyu/intercom/node/btle/GattOperation;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-object v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    return-void
.end method

.method c()Lcom/ifengyu/intercom/node/btle/j;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Lcom/ifengyu/intercom/node/btle/j;

    return-object v0
.end method

.method d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->k()V

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0
.end method

.method e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->b:Landroid/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method h()V
    .locals 5

    const-string v0, "BluetoothGattHelper"

    const-string v1, "refreshGatt"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    const-string v1, "mBluetoothGatt was null"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "exception"

    invoke-static {v0, v2, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Illegal access exception"

    invoke-static {v0, v2, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Invocation target exception"

    invoke-static {v0, v2, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "Couldn\'t find refresh method"

    invoke-static {v0, v2, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method i()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BluetoothGattHelper"

    const-string v1, "requestMTU"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMANUFACTURER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nBRAND:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nMODEL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nRELEASE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Mi-4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x17

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MI 4S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MI NOTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "m1 metal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "5.1.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BluetoothGattHelper"

    const-string v2, "Android version is 5.1.1,Set mtu size 23"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    goto :goto_2

    :cond_2
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    const/16 v3, 0xa3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "BluetoothGattHelper"

    const-string v3, "Calling requestMtu() return false, so set mtu size 23"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    sget-object v2, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/node/btle/b;->b(Lcom/ifengyu/intercom/node/btle/GattOperation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v2, "BluetoothGattHelper"

    const-string v3, "waitForCompletion(requestMtu): has been interrupted."

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0

    :cond_4
    iput v1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    goto :goto_2

    :cond_5
    :goto_1
    iput v1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMtu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothGattHelper"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    return v0
.end method
