.class abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;
.super Ljava/lang/Object;
.source "AbstractNioSelector.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/NioSelector;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CLEANUP_INTERVAL:I = 0x100

.field protected static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private volatile cancelledKeys:I

.field private final executor:Ljava/util/concurrent/Executor;

.field private final id:I

.field protected volatile selector:Ljava/nio/channels/Selector;

.field private volatile shutdown:Z

.field private final shutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final taskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile thread:Ljava/lang/Thread;

.field protected final wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->id:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->taskQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->openSelector(Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-void
.end method

.method private openSelector(Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->executor:Ljava/util/concurrent/Executor;

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->id:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->newThreadRenamingRunnable(ILorg/jboss/netty/util/ThreadNameDeterminer;)Lorg/jboss/netty/util/ThreadRenamingRunnable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->start(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to create a selector."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    throw v0

    :cond_1
    return-void

    :catch_1
    move-exception v1

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close a selector."

    invoke-interface {v2, v3, v1}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processTaskQueue()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->cleanUpCancelledKeys()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final cleanUpCancelledKeys()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->cancelledKeys:I

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->cancelledKeys:I

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected abstract close(Ljava/nio/channels/SelectionKey;)V
.end method

.method protected abstract createRegisterTask(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
.end method

.method protected final increaseCancelledKeys()V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->cancelledKeys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->cancelledKeys:I

    return-void
.end method

.method protected final isIoThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract newThreadRenamingRunnable(ILorg/jboss/netty/util/ThreadNameDeterminer;)Lorg/jboss/netty/util/ThreadRenamingRunnable;
.end method

.method protected abstract process(Ljava/nio/channels/Selector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public rebuildSelector()V
    .locals 8

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->isIoThread()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->taskQueue:Ljava/util/Queue;

    new-instance v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector$1;

    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector$1;-><init>(Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v4, v2, v7}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to create a new Selector."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    sget-object v6, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v7, "Failed to re-register a Channel to the new Selector,"

    invoke-interface {v6, v7, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->close(Ljava/nio/channels/SelectionKey;)V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_3

    move v0, v1

    goto :goto_3

    :cond_3
    iput-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_4
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channel(s) to the new Selector,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v3, "Failed to close the old Selector."

    invoke-interface {v2, v3, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->createRegisterTask(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->registerTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final registerTask(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->taskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Worker has already been shutdown"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 15

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->thread:Ljava/lang/Thread;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-wide v4, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->SELECT_TIMEOUT_NANOS:J

    const-wide/16 v10, 0x50

    mul-long/2addr v4, v10

    const-wide/16 v10, 0x64

    div-long v12, v4, v10

    move v5, v6

    move-object v7, v2

    move v8, v6

    :goto_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0, v7}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->select(Ljava/nio/channels/Selector;)I

    move-result v4

    sget-boolean v10, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->EPOLL_BUG_WORKAROUND:Z

    if-eqz v10, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v2, v10, v2

    cmp-long v2, v2, v12

    if-gez v2, :cond_5

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v10, v6

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :try_start_1
    instance-of v3, v4, Ljava/nio/channels/DatagramChannel;

    if-eqz v3, :cond_1

    move-object v0, v4

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    instance-of v3, v4, Ljava/nio/channels/SocketChannel;

    if-eqz v3, :cond_b

    check-cast v4, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isConnected()Z
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    if-nez v3, :cond_b

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move v2, v9

    :goto_3
    move v10, v2

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    move v2, v6

    :goto_4
    move v8, v2

    :goto_5
    const/16 v2, 0x400

    if-ne v8, v2, :cond_7

    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->rebuildSelector()V

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    move v5, v6

    move-object v7, v2

    move v8, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v8, 0x1

    goto :goto_4

    :cond_5
    move v8, v6

    goto :goto_5

    :cond_6
    move v8, v6

    :cond_7
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->wakenUp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v7}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move v3, v9

    :goto_6
    const/4 v2, 0x0

    :try_start_5
    iput v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->cancelledKeys:I

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->processTaskQueue()V

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    iget-boolean v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->shutdown:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->processTaskQueue()V

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    invoke-virtual {p0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->close(Ljava/nio/channels/SelectionKey;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    move-object v5, v2

    move v2, v3

    move-object v3, v4

    move v4, v8

    :goto_8
    sget-object v7, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v8, "Unexpected exception in the selector loop."

    invoke-interface {v7, v8, v5}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v10, 0x3e8

    :try_start_7
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_9
    move v5, v2

    move-object v7, v3

    move v8, v4

    goto/16 :goto_1

    :cond_8
    move v3, v6

    goto :goto_6

    :cond_9
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :goto_a
    :try_start_9
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-object v5, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v7, "Failed to close a selector."

    invoke-interface {v5, v7, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_a
    invoke-virtual {p0, v4}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->process(Ljava/nio/channels/Selector;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    move v5, v3

    move-object v7, v4

    goto/16 :goto_1

    :catch_2
    move-exception v5

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v3, v7

    move v4, v8

    move-object v14, v2

    move v2, v5

    move-object v5, v14

    goto :goto_8

    :catch_4
    move-exception v2

    move-object v5, v2

    move-object v3, v7

    move v4, v8

    move v2, v9

    goto :goto_8

    :catch_5
    move-exception v2

    move-object v5, v2

    move v4, v8

    move v2, v3

    move-object v3, v7

    goto :goto_8

    :catch_6
    move-exception v2

    move v2, v10

    goto/16 :goto_3

    :catch_7
    move-exception v2

    move v2, v9

    goto/16 :goto_3

    :cond_b
    move v2, v10

    goto/16 :goto_3
.end method

.method protected select(Ljava/nio/channels/Selector;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/SelectorUtil;->select(Ljava/nio/channels/Selector;)I

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->isIoThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not be called from a I/O-Thread to prevent deadlocks!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->shutdown:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while wait for resources to be released #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->error(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
