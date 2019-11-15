.class public Lcom/ifengyu/intercom/network/a/e;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static volatile a:Ljava/util/concurrent/ExecutorService;

.field private static volatile b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/network/a/e;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v1, Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/network/a/e;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/a/e;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/network/a/e;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/network/a/e;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v1, Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/network/a/e;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/a/e;->b:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/network/a/e;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
