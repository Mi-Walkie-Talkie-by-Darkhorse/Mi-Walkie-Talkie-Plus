.class final Lcom/ifengyu/intercom/node/btle/b;
.super Ljava/lang/Object;
.source "BluetoothGattHelper.java"


# static fields
.field private static final g:J

.field private static final h:J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/bluetooth/BluetoothManager;

.field private volatile c:Landroid/bluetooth/BluetoothGatt;

.field private d:Lcom/ifengyu/intercom/node/btle/GattException;

.field private final e:Ljava/lang/Object;

.field private f:I

.field private i:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field private j:Ljava/util/UUID;

.field private k:Z

.field private final l:Landroid/bluetooth/BluetoothGattCallback;

.field private final m:Lcom/ifengyu/intercom/node/btle/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ifengyu/intercom/node/btle/b;->g:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ifengyu/intercom/node/btle/b;->h:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/j;)V
    .locals 2
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

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Z

    new-instance v0, Lcom/ifengyu/intercom/node/btle/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/a;-><init>(Lcom/ifengyu/intercom/node/btle/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->l:Landroid/bluetooth/BluetoothGattCallback;

    invoke-static {p1}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->a:Landroid/content/Context;

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->b:Landroid/bluetooth/BluetoothManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->b:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "Bluetooth is not supported on this device."

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/btle/j;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->m:Lcom/ifengyu/intercom/node/btle/j;

    return-void
.end method

.method static a(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "Service %s is missing characteristic %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    sget-wide v0, Lcom/ifengyu/intercom/node/btle/b;->g:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "BluetoothGattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattOperation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to be complete."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Ljava/util/UUID;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    invoke-virtual {v0, p3, p4}, Ljava/lang/Object;->wait(J)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    sget-object v2, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v2, "Operation %s timed out after %dms."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "BluetoothGattHelper"

    const-string v1, "waitForCompletion: has been interrupted."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v6, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Ljava/util/UUID;

    iput-object v6, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    :goto_0
    return-void

    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    throw v0

    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v6, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Ljava/util/UUID;

    iput-object v6, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    goto :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v6, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Ljava/util/UUID;

    iput-object v6, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    throw v0
.end method

.method private b(Lcom/ifengyu/intercom/node/btle/GattOperation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-wide v2, Lcom/ifengyu/intercom/node/btle/b;->g:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "BluetoothGattHelper"

    const-string v1, "cleanUpAfterDisconnect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->m:Lcom/ifengyu/intercom/node/btle/j;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/btle/j;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    iput-boolean v2, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    iput-boolean v2, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Z

    throw v0
.end method

.method private j()Landroid/bluetooth/BluetoothGatt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "BluetoothGatt not connected"

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    return-object v0
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
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v3, "Cannot start discovering services on device %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0

    :cond_0
    :try_start_3
    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/b;->b(Lcom/ifengyu/intercom/node/btle/GattOperation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/16 v3, 0x17

    const-string v0, "BluetoothGattHelper"

    const-string v1, "requestMTU"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMANUFACTURER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nBRAND:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nMODEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nRELEASE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Mi-4c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI 4S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MI NOTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "m1 metal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput v3, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    :goto_0
    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMtu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    return v0

    :cond_2
    const-string v0, "5.1.1"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BluetoothGattHelper"

    const-string v1, "Android version is 5.1.1,Set mtu size 23"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const/16 v2, 0xa3

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BluetoothGattHelper"

    const-string v2, "Calling requestMtu() return false, so set mtu size 23"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/b;->b(Lcom/ifengyu/intercom/node/btle/GattOperation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v0, "BluetoothGattHelper"

    const-string v2, "waitForCompletion(requestMtu): has been interrupted."

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0

    :cond_5
    iput v3, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    goto :goto_0
.end method

.method a(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an event for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when not connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an event for un unexpected device. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method a(I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnectionPrio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "Error calling requestConnectionPriority()"

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothGattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestConnectionPrio Got exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "BluetoothGattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestConnectionPrio error,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "BluetoothGattHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iput-boolean v3, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Z

    invoke-static {p1}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/b;->l:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v0, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v2, 0x0

    sget-wide v4, Lcom/ifengyu/intercom/node/btle/b;->h:J

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void

    :cond_1
    const-string v0, "device is null!"

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v2, "Cannot connect to device %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0

    :cond_3
    :try_start_4
    const-string v0, "BluetoothGattHelper"

    const-string v2, "Device %s already connected."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method a(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    sparse-switch p2, :sswitch_data_0

    const-string v0, "Unknow error code"

    :goto_0
    new-instance v1, Lcom/ifengyu/intercom/node/btle/GattException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string v0, "BluetoothGattHelper"

    const-string v1, "Connection GATT_SUCCESS."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :sswitch_1
    const-string v0, "BluetoothGattHelper"

    const-string v1, "Connection congested."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    const-string v0, "GATT_FAILURE"

    goto :goto_0

    :sswitch_3
    const-string v0, "GATT_INSUFFICIENT_AUTHENTICATION"

    goto :goto_0

    :sswitch_4
    const-string v0, "GATT_INVALID_ATTRIBUTE_LENGTH"

    goto :goto_0

    :sswitch_5
    const-string v0, "GATT_INVALID_OFFSET"

    goto :goto_0

    :sswitch_6
    const-string v0, "GATT_READ_NOT_PERMITTED"

    goto :goto_0

    :sswitch_7
    const-string v0, "GATT_REQUEST_NOT_SUPPORTED"

    goto :goto_0

    :sswitch_8
    const-string v0, "GATT_WRITE_NOT_PERMITTED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_6
        0x3 -> :sswitch_8
        0x5 -> :sswitch_3
        0x6 -> :sswitch_7
        0x7 -> :sswitch_5
        0xd -> :sswitch_4
        0x8f -> :sswitch_1
        0x101 -> :sswitch_2
    .end sparse-switch
.end method

.method a(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Ljava/util/UUID;

    if-nez v0, :cond_0

    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event for a characteristic for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on device  when not expected a characteristic. Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->j:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event for an unexpected characteristic for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on device  Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
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

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v2, "Cannot set characteristic notification %s on device %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void
.end method

.method declared-synchronized a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeCharacteristic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/k;->a(Z)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v3, "Cannot write characteristic %s on device %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_5
    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void
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

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v3, "Cannot write descriptor %s on device %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    throw v0

    :cond_0
    :try_start_3
    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-void
.end method

.method a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    .locals 2

    const-string v0, "BluetoothGattHelper"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/b;->d:Lcom/ifengyu/intercom/node/btle/GattException;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->g()V

    return-void
.end method

.method a(Lcom/ifengyu/intercom/node/btle/GattOperation;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/GattOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothGattHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received result for an operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/b;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/b;->f:I

    return-void
.end method

.method public b()Z
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    const-string v0, "BluetoothGattHelper"

    const-string v1, "refreshGatt"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const-string v0, "BluetoothGattHelper"

    const-string v1, "mBluetoothGatt was null"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGattHelper"

    const-string v2, "Couldn\'t find refresh method"

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BluetoothGattHelper"

    const-string v2, "Invocation target exception"

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "BluetoothGattHelper"

    const-string v2, "Illegal access exception"

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "BluetoothGattHelper"

    const-string v2, "exception"

    invoke-static {v1, v2, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
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

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->j()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-boolean v2, p0, Lcom/ifengyu/intercom/node/btle/b;->k:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/b;->k()V

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/ifengyu/intercom/node/btle/c;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
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

.method f()Lcom/ifengyu/intercom/node/btle/j;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->m:Lcom/ifengyu/intercom/node/btle/j;

    return-object v0
.end method

.method g()V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method h()Lcom/ifengyu/intercom/node/btle/GattOperation;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-object v0
.end method

.method public i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "BluetoothGattHelper"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattException;

    const-string v1, "BluetoothGattHelper not connected."

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/node/btle/GattException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/b;->b:Landroid/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->c()V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/b;->c:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/btle/b;->a(Lcom/ifengyu/intercom/node/btle/GattOperation;Ljava/util/UUID;J)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/b;->g()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/node/btle/b;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/node/btle/b;->b(Ljava/lang/Exception;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/node/btle/b;->b(Ljava/lang/Exception;)V

    throw v0
.end method
