.class public Lcom/ifengyu/intercom/node/btle/i;
.super Ljava/lang/Object;
.source "DataSender.java"


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

.field private d:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I

.field private final i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/i;->f:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/btle/i;->g:Z

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/i;->h:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/i;->c:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/g;

    const-string v1, "DataTransport"

    const-string v2, "DataSender"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/btle/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/btle/i;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->e([B)V

    return-void
.end method

.method private a(IIII)[B
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x2

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    int-to-long v2, p2

    invoke-static {v0, v2, v3, v4, v4}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    int-to-long v2, p3

    const/4 v1, 0x4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    int-to-long v2, p4

    const/4 v1, 0x6

    invoke-static {v0, v2, v3, v1, v4}, Lcom/ifengyu/intercom/node/transport/e;->a([BJII)V

    return-object v0
.end method

.method private b([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/transport/e;->d([B)I

    move-result v1

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/TransMode;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DataSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCmdId: trans mode ordinal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/ifengyu/intercom/node/transport/TransMode;->a(I)Lcom/ifengyu/intercom/node/transport/TransMode;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/node/transport/TransMode;->a:Lcom/ifengyu/intercom/node/transport/TransMode;

    if-ne v2, v3, :cond_1

    const/16 v0, 0x2719

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/ifengyu/intercom/node/transport/TransMode;->b:Lcom/ifengyu/intercom/node/transport/TransMode;

    if-ne v2, v3, :cond_2

    const/16 v0, 0x2718

    goto :goto_0

    :cond_2
    const-string v2, "DataSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Trans mode, ordinal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/InterruptedException;

    const-string v3, "Invalid Trans mode, ordinal=%s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private b([BIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_2

    const-string v1, "DataSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReliableMessage: origin packet size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/node/btle/i;->c([BIZ)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/i;->c([B)V

    return-void

    :cond_2
    const-string v1, "DataSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReliableMessage: origin packet size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    array-length v0, p1

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/i;->f:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/i;->f:I

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z

    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "enter lame duck mode too long, restart connection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c([B)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "DataSender"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeOrEnqueue: total send packet size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    array-length v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "DataSender"

    const-string v1, "In lame duck mode. Ignoring write"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->g:Z

    if-eqz v0, :cond_3

    const-string v0, "DataSender"

    const-string v1, "writeOrEnqueue: ble is busy, so we put data into buffer."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->g:Z

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->d([B)V

    goto :goto_1
.end method

.method private c()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method private c([BIZ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p3, :cond_3

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/i;->h:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/node/btle/i;->h:I

    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/ifengyu/intercom/b/k;->a(Z)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->b([B)I

    move-result v1

    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v2, v0, -0x4

    array-length v0, p1

    iget v3, p0, Lcom/ifengyu/intercom/node/btle/i;->h:I

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/ifengyu/intercom/node/btle/i;->a(IIII)[B

    move-result-object v0

    const/4 v3, 0x4

    const/16 v4, 0x8

    array-length v5, p1

    add-int/lit8 v5, v5, -0x4

    invoke-static {p1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DataSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPacketHeader: data[cmdId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",seqId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/ifengyu/intercom/node/btle/i;->h:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",len="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DataSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPacketHeader: data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/node/transport/b;->a([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/node/btle/i;->h:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/ifengyu/intercom/node/btle/i;->h:I

    move-object p1, v0

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DataSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPacketHeader: data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-static {p1, v2}, Lcom/ifengyu/intercom/node/transport/b;->a([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private d([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ifengyu/intercom/node/btle/i$1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/node/btle/i$1;-><init>(Lcom/ifengyu/intercom/node/btle/i;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private e([B)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DataSender"

    const-string v1, "writeCharacteristic"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "DataSender"

    const-string v1, "In lame duck mode. Ignoring write"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/i;->c:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/i;->c:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z
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
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "DataSender"

    const-string v1, "Ignoring onCharacteristicWrite as we are in lame duck mode"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/i;->c()[B

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DataSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicWrite: data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/i;->d([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/btle/i;->c([B)V

    return-void
.end method

.method public a([BIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DataSender"

    const-string v1, "write: dropping write as we are in lame duck mode"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/node/btle/i;->b([BIZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method b(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/i;->d:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/i;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/i;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/node/btle/i;->f:I
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
