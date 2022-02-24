.class public Lcom/autonavi/ae/gmap/maploader/ConnectionManager;
.super Lcom/autonavi/ae/gmap/maploader/SingalThread;
.source "ConnectionManager.java"


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x5


# instance fields
.field private mConnPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;",
            ">;"
        }
    .end annotation
.end field

.field public threadFlag:Z


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/gmap/GLMapEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/SingalThread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->threadFlag:Z

    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-void
.end method

.method private checkListPool()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;

    .line 4
    iget-object v4, v3, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;->mMapLoader:Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;

    .line 5
    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->isRequestValid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->hasFinished()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->doCancel()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private doAsyncRequest()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_6

    .line 2
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->checkListPool()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 6
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    monitor-exit v0

    if-eqz v1, :cond_3

    .line 8
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/maploader/AsMapRequestor;-><init>(Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;)V

    .line 9
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPoolList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    if-nez v1, :cond_1

    goto :goto_1

    .line 12
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mGLMapEngine:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAllRequestTiles()V

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v2, :cond_5

    const-wide/16 v0, 0x1e

    .line 14
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :catchall_0
    nop

    goto :goto_0

    .line 15
    :cond_5
    :try_start_3
    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->threadFlag:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/SingalThread;->doWait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 17
    monitor-exit v0

    throw v1

    :cond_6
    return-void
.end method


# virtual methods
.method public insertConntionTask(Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/maploader/SingalThread;->doAwake()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_2
    move-exception p1

    .line 7
    monitor-exit v0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->doAsyncRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public shutDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mConnPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
