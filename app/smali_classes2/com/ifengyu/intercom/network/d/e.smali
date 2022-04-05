.class public Lcom/ifengyu/intercom/network/d/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/util/concurrent/ExecutorService;

.field private static volatile b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/network/d/e;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v0, Ljava/util/concurrent/ExecutorService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/network/d/e;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/ifengyu/intercom/network/d/e;->b:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/network/d/e;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/network/d/e;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v0, Ljava/util/concurrent/ExecutorService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/network/d/e;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/ifengyu/intercom/network/d/e;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/network/d/e;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
