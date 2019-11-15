.class public Lcom/autonavi/ae/gmap/maploader/ConnectionManager;
.super Lcom/autonavi/ae/gmap/maploader/SingalThread;
.source "ConnectionManager.java"


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x5


# instance fields
.field private mConnPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;",
            ">;"
        }
    .end annotation
.end field

.field mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mThreadPoolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;",
            ">;"
        }
    .end annotation
.end field

.field public threadFlag:Z


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/SingalThread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->threadFlag:Z

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-void
.end method

.method private checkListPool()V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;

    iget-object v4, v0, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;->mMapLoader:Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isRequestValid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->hasFinished()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private doAsyncRequest()V
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->checkListPool()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-static {v2, v3}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;

    invoke-direct {v2, v0}, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;-><init>(Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;)V

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAllRequestTiles()V

    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :try_start_3
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->doWait()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public insertConntionTask(Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;)V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->doAwake()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->doAsyncRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
