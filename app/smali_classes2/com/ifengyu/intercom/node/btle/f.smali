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

.field private l:Lcom/ifengyu/intercom/node/a/c;

.field private volatile m:Z

.field private final n:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/node/btle/BtleCentralService;Landroid/bluetooth/BluetoothDevice;Lcom/ifengyu/intercom/node/ConnectionConfiguration;Landroid/os/Handler;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->d:Ljava/util/concurrent/locks/Condition;

    iput-boolean v1, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z

    new-instance v0, Lcom/ifengyu/intercom/node/btle/f$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/btle/f$1;-><init>(Lcom/ifengyu/intercom/node/btle/f;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iput-object p3, p0, Lcom/ifengyu/intercom/node/btle/f;->g:Landroid/bluetooth/BluetoothDevice;

    iput-object p4, p0, Lcom/ifengyu/intercom/node/btle/f;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    iput-object p5, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionThread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->g:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION"

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/f;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x8000000

    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/ifengyu/intercom/node/a/c;->a()Lcom/ifengyu/intercom/node/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/a/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/c;->b()V

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "setExact"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/btle/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    const/16 v3, 0x13

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->h(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    aput-object v4, v3, v6

    :try_start_0
    const-string v4, "ConnectionThread"

    const-string v5, "set exact alarm"

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/f;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-nez v1, :cond_0

    const-string v1, "ConnectionThread"

    const-string v2, "set"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    const-string v3, "ConnectionThread"

    invoke-static {v3, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    .locals 3

    const-string v0, "ConnectionThread"

    const-string v1, "doReconnectionWork"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->e()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o()I

    const-string v0, "ConnectionThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/btle/GattException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const-string v0, "ConnectionThread"

    const-string v1, "Too many consecutive failures.  maybe need refreshing bluetooth"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->p()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const-string v0, "ConnectionThread"

    const-string v1, "Too many consecutive failures.  give up connecting."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->q()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->r()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/node/btle/f;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/node/btle/f;)Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->h:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    return-object v0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ifengyu/intercom/node/btle/GattException;
        }
    .end annotation

    const-string v0, "ConnectionThread"

    const-string v1, "Setting up a Bluetooth connection"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->g:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Landroid/bluetooth/BluetoothDevice;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->o()I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "ConnectionThread"

    const-string v1, "Setting up a walktalk connection"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/q;->a()Lcom/ifengyu/intercom/node/transport/j;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/service/a;->a()Lcom/ifengyu/intercom/node/q;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->e()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->f()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v4, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->g()I

    move-result v5

    iget-object v6, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Lcom/ifengyu/intercom/node/q;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/ifengyu/intercom/node/transport/j;Lcom/ifengyu/intercom/node/ConnectionConfiguration;ILandroid/os/Handler;)V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/VersionMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ifengyu/intercom/node/ConnectionPermissionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VersionMismatchException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/VersionMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0, v7}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/c;->f()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ConnectionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionPermissionException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionPermissionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0, v7}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/c;->f()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->n()Lcom/ifengyu/intercom/node/btle/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConnectionThread"

    const-string v1, "disconnecting"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->l()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->d()V

    return-void
.end method

.method private f()Z
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/a/c;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/ifengyu/intercom/node/btle/f;->a(J)V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v2, "ConnectionThread"

    const-string v3, "Alarm set. Releasing the WakeLock so that the device may sleep.."

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->b()V

    invoke-static {}, Lcom/ifengyu/intercom/b/s;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ConnectionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds to retry the connection.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/btle/f;->m:Z

    const-string v0, "ConnectionThread"

    const-string v1, "Acquiring the WakeLock to signal a connection retry."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->f()Z

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 5

    const-string v0, "ConnectionThread"

    const-string v1, "Try to set up new connection"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v2, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    const-string v3, "Starting connection thread"

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->c()V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/a/c;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/a/c;->c()V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->l:Lcom/ifengyu/intercom/node/a/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/a/c;->a(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->h()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->d()V
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    sget-object v2, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/ConnectState;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ConnectionThread"

    const-string v2, "Acquiring the WakeLock so that an alarm can be set."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->f()Z

    :try_start_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->g()V

    const-string v1, "ConnectionThread"

    const-string v2, "Releasing the WakeLock so that the device may go sleep.."

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->b()V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/node/btle/f;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/ifengyu/intercom/node/btle/f;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/node/btle/f;->b()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "ConnectionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got GattException while setup connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/GattException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/intercom/node/btle/f;->b:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Lcom/ifengyu/intercom/node/btle/GattException;)V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ConnectionThread"

    const-string v3, "ConnectionThread was interrupted"

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/b/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "ConnectionThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got RuntimeException while setup connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const-string v1, "ConnectionThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection interrupted, shutting down. isInterrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/btle/f;->isInterrupted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
