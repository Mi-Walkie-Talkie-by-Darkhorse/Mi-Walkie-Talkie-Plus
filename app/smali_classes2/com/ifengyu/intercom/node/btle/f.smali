.class Lcom/ifengyu/intercom/node/btle/f;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private final d:Ljava/util/concurrent/locks/Condition;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/app/PendingIntent;

.field private final g:Landroid/bluetooth/BluetoothDevice;

.field private final h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Landroid/os/PowerManager$WakeLock;

.field private k:Ljava/lang/reflect/Method;

.field private l:Lcom/ifengyu/intercom/node/q/c;

.field private volatile m:Z

.field private final n:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->d:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/node/btle/f$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/node/btle/f$a;-><init>(Lcom/ifengyu/intercom/node/btle/f;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    .line 8
    iput-object p3, p0, Lcom/ifengyu/intercom/node/btle/f;->g:Landroid/bluetooth/BluetoothDevice;

    .line 9
    iput-object p4, p0, Lcom/ifengyu/intercom/node/btle/f;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    .line 10
    iput-object p5, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ConnectionThread["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/ifengyu/intercom/node/btle/f;->g:Landroid/bluetooth/BluetoothDevice;

    .line 13
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    new-instance p4, Landroid/net/Uri$Builder;

    invoke-direct {p4}, Landroid/net/Uri$Builder;-><init>()V

    const-string p5, "content"

    .line 15
    invoke-virtual {p4, p5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    iget-object p5, p0, Lcom/ifengyu/intercom/node/btle/f;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {p5}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    const-string p5, "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION"

    invoke-direct {p3, p5, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p4, 0x8000000

    .line 16
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/node/q/c;->f()Lcom/ifengyu/intercom/node/q/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/q/c;

    .line 18
    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/q/c;->b()V

    const/16 p1, 0x13

    .line 19
    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    .line 20
    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p3, p1, v0

    .line 21
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 22
    const-class p3, Landroid/app/PendingIntent;

    aput-object p3, p1, p2

    .line 23
    const-class p2, Landroid/app/AlarmManager;

    const-string p3, "setExact"

    invoke-virtual {p2, p3, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/btle/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(J)V
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 27
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "ConnectionThread"

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2

    .line 30
    iget-object v6, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    aput-object v6, v1, v4

    :try_start_0
    const-string v6, "set exact alarm"

    .line 31
    invoke-static {v5, v6}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v6, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 33
    :goto_0
    invoke-static {v5, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    const-string v1, "set"

    .line 34
    invoke-static {v5, v1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    .locals 3

    const-string v0, "ConnectionThread"

    const-string v1, "doReconnectionWork"

    .line 2
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->c()V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k()I

    const-string v0, "ConnectionThread"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e()I

    move-result p1

    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    const-string p1, "ConnectionThread"

    const-string v0, "Too many consecutive failures.  maybe need refreshing bluetooth"

    .line 9
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e()I

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e()I

    move-result p1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    const-string p1, "ConnectionThread"

    const-string v0, "Too many consecutive failures.  give up connecting."

    .line 12
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q()V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j()V

    .line 15
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/node/btle/f;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private b()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v1, 0x1

    .line 5
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 6
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/node/btle/f;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/node/btle/f;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f()Lcom/ifengyu/intercom/node/btle/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConnectionThread"

    const-string v1, "disconnecting"

    .line 4
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->b()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "ConnectionThread"

    const-string v1, "Setting up a Bluetooth connection"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->g:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->k()I

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 10

    const-string v0, "ConnectionThread"

    const-string v1, "Setting up a walktalk connection"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v3, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/p;->a()Lcom/ifengyu/intercom/node/transport/j;

    move-result-object v6

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/service/a;->b()Lcom/ifengyu/intercom/node/p;

    move-result-object v3

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g()Ljava/io/InputStream;

    move-result-object v4

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->i()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v7

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h()I

    move-result v8

    iget-object v9, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v9}, Lcom/ifengyu/intercom/node/p;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;ILandroid/os/Handler;)V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/VersionMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ifengyu/intercom/node/ConnectionPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectionPermissionException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->c()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/q/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/q/c;->d()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VersionMismatchException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->c()V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/q/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/q/c;->d()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "ConnectionThread"

    .line 1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/q/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/q/c;->a()J

    move-result-wide v1

    .line 2
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 4
    invoke-direct {p0, v3, v4}, Lcom/ifengyu/intercom/node/btle/f;->a(J)V

    .line 5
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v3, "Alarm set. Releasing the WakeLock so that the device may sleep.."

    .line 7
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->d()V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/i/z;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds to retry the connection.."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 14
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 16
    throw v0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 19
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z

    const-string v0, "ConnectionThread"

    const-string v1, "Acquiring the WakeLock to signal a connection retry."

    .line 21
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->b()Z

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25
    throw v0
.end method

.method public run()V
    .locals 4

    const-string v0, "ConnectionThread"

    const-string v1, "Try to set up new connection"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v2, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    const-string v3, "Starting connection thread"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->e()V

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/q/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/q/c;->e()V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/q/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/q/c;->a(Z)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r()V

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->f()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ConnectionThread"

    const-string v3, "ConnectionThread was interrupted"

    .line 10
    invoke-static {v2, v3}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got RuntimeException while setup connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectionThread"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got GattException while setup connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectionThread"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v2, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ConnectionThread"

    const-string v2, "Acquiring the WakeLock so that an alarm can be set."

    .line 16
    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->b()Z

    .line 18
    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->g()V

    const-string v1, "ConnectionThread"

    const-string v2, "Releasing the WakeLock so that the device may go sleep.."

    .line 19
    invoke-static {v1, v2}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->d()V

    .line 21
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/f;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 22
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection interrupted, shutting down. isInterrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectionThread"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 24
    :try_start_2
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->d()V

    .line 26
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    return-void
.end method
