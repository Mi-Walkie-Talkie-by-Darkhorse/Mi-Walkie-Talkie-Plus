.class public Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;
.super Ljava/lang/Object;
.source "NioServerSocketChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ServerSocketChannelFactory;


# instance fields
.field private final bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/BossPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioServerBoss;",
            ">;"
        }
    .end annotation
.end field

.field private releasePools:Z

.field private final sink:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

.field private final workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->releasePools:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILjava/util/concurrent/Executor;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;

    invoke-direct {v0, p3, p4}, Lorg/jboss/netty/channel/socket/nio/NioWorkerPool;-><init>(Ljava/util/concurrent/Executor;I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jboss/netty/channel/socket/nio/NioServerBossPool;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/util/ThreadNameDeterminer;)V

    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Lorg/jboss/netty/channel/socket/nio/BossPool;Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->getMaxThreads(Ljava/util/concurrent/Executor;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;ILjava/util/concurrent/Executor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;ILorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/BossPool;Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/BossPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioServerBoss;",
            ">;",
            "Lorg/jboss/netty/channel/socket/nio/WorkerPool",
            "<",
            "Lorg/jboss/netty/channel/socket/nio/NioWorker;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bossExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "workerPool"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    return-void
.end method

.method private static getMaxThreads(Ljava/util/concurrent/Executor;)I
    .locals 2

    instance-of v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    sget v1, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->DEFAULT_IO_THREADS:I

    goto :goto_0
.end method

.method private releasePools()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;

    instance-of v0, v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;

    check-cast v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    instance-of v0, v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    check-cast v0, Lorg/jboss/netty/util/ExternalResourceReleasable;

    invoke-interface {v0}, Lorg/jboss/netty/util/ExternalResourceReleasable;->releaseExternalResources()V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ServerChannel;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/ServerSocketChannel;
    .locals 6

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->sink:Lorg/jboss/netty/channel/socket/nio/NioServerSocketPipelineSink;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/nio/BossPool;->nextBoss()Lorg/jboss/netty/channel/socket/nio/Boss;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/nio/Boss;Lorg/jboss/netty/channel/socket/nio/WorkerPool;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->shutdown()V

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->releasePools()V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->bossPool:Lorg/jboss/netty/channel/socket/nio/BossPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/BossPool;->shutdown()V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->workerPool:Lorg/jboss/netty/channel/socket/nio/WorkerPool;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/WorkerPool;->shutdown()V

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->releasePools:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannelFactory;->releasePools()V

    :cond_0
    return-void
.end method
