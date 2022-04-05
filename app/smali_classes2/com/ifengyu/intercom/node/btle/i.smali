.class public Lcom/ifengyu/intercom/node/btle/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

.field private c:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:I

.field private final h:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/i;->e:I

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/i;->f:Z

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/i;->g:I

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/i;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/btle/i;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    new-instance p1, Lcom/ifengyu/intercom/node/btle/g;

    const-string p2, "DataTransport"

    const-string p3, "DataSender"

    const/16 v0, 0xa

    invoke-direct {p1, p2, p3, v0}, Lcom/ifengyu/intercom/node/btle/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/btle/i;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->d([B)V

    return-void
.end method

.method private a(IIII)[B
    .locals 3

    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x4

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    const/4 v1, 0x0

    const/4 v2, -0x2

    aput-byte v2, p1, v1

    const/4 v1, 0x1

    aput-byte v1, p1, v1

    int-to-long v1, p2

    const/4 p2, 0x2

    invoke-static {p1, v1, v2, p2, p2}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    int-to-long v1, p3

    invoke-static {p1, v1, v2, v0, p2}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    int-to-long p3, p4

    const/4 v0, 0x6

    invoke-static {p1, p3, p4, v0, p2}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    return-object p1
.end method

.method private b([B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->d([B)I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/TransMode;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCmdId: trans mode ordinal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DataSender"

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/TransMode;->b(I)Lcom/ifengyu/intercom/node/transport/TransMode;

    move-result-object v0

    sget-object v3, Lcom/ifengyu/intercom/node/transport/TransMode;->a:Lcom/ifengyu/intercom/node/transport/TransMode;

    if-ne v0, v3, :cond_0

    const/16 v1, 0x2719

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/ifengyu/intercom/node/transport/TransMode;->b:Lcom/ifengyu/intercom/node/transport/TransMode;

    if-ne v0, v3, :cond_1

    const/16 v1, 0x2718

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Trans mode, ordinal="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/InterruptedException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Invalid Trans mode, ordinal=%s."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method private b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "enter lame duck mode too long, restart connection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z

    return v0
.end method

.method private b([BIZ)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "addPacketHeader: data="

    const-string v1, "DataSender"

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/ifengyu/intercom/node/btle/i;->g:I

    const/4 v2, 0x1

    const/16 v3, 0x100

    if-ltz p3, :cond_0

    if-ge p3, v3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/ifengyu/intercom/i/o;->a(Z)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->b([B)I

    move-result p3

    const/16 v4, 0x8

    add-int/2addr p2, v4

    const/4 v5, 0x4

    sub-int/2addr p2, v5

    array-length v6, p1

    iget v7, p0, Lcom/ifengyu/intercom/node/btle/i;->g:I

    invoke-direct {p0, v6, p2, p3, v7}, Lcom/ifengyu/intercom/node/btle/i;->a(IIII)[B

    move-result-object v6

    array-length v7, p1

    sub-int/2addr v7, v5

    invoke-static {p1, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPacketHeader: data[cmdId="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",seqId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/ifengyu/intercom/node/btle/i;->g:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",len="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v6

    invoke-static {v6, p2}, Lcom/ifengyu/intercom/node/transport/b;->a([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p1, p0, Lcom/ifengyu/intercom/node/btle/i;->g:I

    add-int/2addr p1, v2

    rem-int/2addr p1, v3

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/i;->g:I

    return-object v6

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p1

    invoke-static {p1, p3}, Lcom/ifengyu/intercom/node/transport/b;->a([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p1
.end method

.method private c([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ifengyu/intercom/node/btle/i$a;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/node/btle/i$a;-><init>(Lcom/ifengyu/intercom/node/btle/i;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private c([BIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "sendReliableMessage: origin packet size = "

    const-string v2, "DataSender"

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    array-length v0, p1

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/node/btle/i;->b([BIZ)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->e([B)V

    return-void
.end method

.method private c()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private d([B)V
    .locals 3

    const-string v0, "DataSender"

    const-string v1, "writeCharacteristic"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z

    if-eqz v1, :cond_0

    const-string p1, "In lame duck mode. Ignoring write"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    :try_start_0
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/i;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private e([B)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/i/z;->c()Z

    move-result v0

    const-string v1, "DataSender"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeOrEnqueue: total send packet size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z

    if-eqz v0, :cond_2

    const-string p1, "In lame duck mode. Ignoring write"

    invoke-static {v1, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->f:Z

    if-eqz v0, :cond_3

    const-string v0, "writeOrEnqueue: ble is busy, so we put data into buffer."

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->f:Z

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->c([B)V

    :goto_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "DataSender"

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "Ignoring onCharacteristicWrite as we are in lame duck mode"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/i;->c()[B

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/i;->f:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite: data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->c([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->e([B)V

    return-void
.end method

.method public a([BIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DataSender"

    const-string p2, "write: dropping write as we are in lame duck mode"

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/node/btle/i;->c([BIZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method b(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Z

    iput-boolean p1, p0, Lcom/ifengyu/intercom/node/btle/i;->f:Z

    iput p1, p0, Lcom/ifengyu/intercom/node/btle/i;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
