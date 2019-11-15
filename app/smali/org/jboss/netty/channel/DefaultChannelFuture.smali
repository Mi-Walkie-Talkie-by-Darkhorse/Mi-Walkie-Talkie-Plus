.class public Lorg/jboss/netty/channel/DefaultChannelFuture;
.super Ljava/lang/Object;
.source "DefaultChannelFuture.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFuture;


# static fields
.field private static final CANCELLED:Ljava/lang/Throwable;

.field private static disabledDeadLockCheckerOnce:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;

.field private static volatile useDeadLockChecker:Z


# instance fields
.field private final cancellable:Z

.field private cause:Ljava/lang/Throwable;

.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private done:Z

.field private firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/ChannelFutureListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/ChannelFutureProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private waiters:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->channel:Lorg/jboss/netty/channel/Channel;

    iput-boolean p2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancellable:Z

    return-void
.end method

.method private await0(JZ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_4

    :cond_1
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_2
    :goto_1
    return v0

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    iget v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v3, v2

    move-wide v4, p1

    :goto_2
    const-wide/32 v6, 0xf4240

    :try_start_3
    div-long v6, v4, v6

    const-wide/32 v8, 0xf4240

    rem-long/2addr v4, v8

    long-to-int v2, v4

    invoke-virtual {p0, v6, v7, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    :goto_3
    :try_start_4
    iget-boolean v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    :try_start_5
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_0
    move-exception v2

    if-eqz p3, :cond_6

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move v1, v3

    :goto_5
    :try_start_7
    iget v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move v2, v1

    :goto_6
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw v0

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    :try_start_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_8

    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move v1, v2

    goto :goto_5

    :cond_8
    move v3, v2

    goto :goto_2
.end method

.method private static checkDeadLock()V
    .locals 2

    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->isUseDeadLockChecker()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "await*() in I/O thread causes a dead lock or sudden performance drop. Use addListener() instead or call await*() from a different thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static isUseDeadLockChecker()Z
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    return v0
.end method

.method private notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .locals 4

    :try_start_0
    invoke-interface {p1, p0}, Lorg/jboss/netty/channel/ChannelFutureListener;->operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private notifyProgressListener(Lorg/jboss/netty/channel/ChannelFutureProgressListener;JJJ)V
    .locals 8

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lorg/jboss/netty/channel/ChannelFutureProgressListener;->operationProgressed(Lorg/jboss/netty/channel/ChannelFuture;JJJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An exception was thrown by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private rethrowIfFailed0()V
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setUseDeadLockChecker(Z)V
    .locals 3

    if-nez p0, :cond_0

    sget-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->disabledDeadLockCheckerOnce:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->disabledDeadLockCheckerOnce:Z

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The dead lock checker in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/DefaultChannelFuture;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been disabled as requested at your own risk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_0
    sput-boolean p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->useDeadLockChecker:Z

    return-void
.end method


# virtual methods
.method public addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .locals 4

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v3, :cond_2

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-nez v1, :cond_5

    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    :goto_1
    instance-of v1, p1, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    :cond_3
    iget-object v3, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    move-object v1, v0

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    :cond_6
    iget-object v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public await()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v0

    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p0
.end method

.method public await(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/jboss/netty/channel/DefaultChannelFuture;->checkDeadLock()V

    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    goto :goto_0

    :catchall_1
    move-exception v0

    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    throw v0

    :cond_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 3

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public cancel()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancellable:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    sget-object v1, Lorg/jboss/netty/channel/DefaultChannelFuture;->CANCELLED:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuccess()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelFutureListener;

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    :cond_1
    :goto_0
    instance-of v0, p1, Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->firstListener:Lorg/jboss/netty/channel/ChannelFutureListener;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public rethrowIfFailed()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Exception;

    throw v0

    :cond_2
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFailure(Ljava/lang/Throwable;)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->cause:Ljava/lang/Throwable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setProgress(JJJ)Z
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->progressListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lorg/jboss/netty/channel/ChannelFutureProgressListener;

    move-object v10, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    array-length v12, v10

    const/4 v2, 0x0

    move v11, v2

    :goto_1
    if-ge v11, v12, :cond_3

    aget-object v3, v10, v11

    move-object v2, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyProgressListener(Lorg/jboss/netty/channel/ChannelFutureProgressListener;JJJ)V

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSuccess()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->done:Z

    iget v1, p0, Lorg/jboss/netty/channel/DefaultChannelFuture;->waiters:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->notifyListeners()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sync()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->await()Lorg/jboss/netty/channel/ChannelFuture;

    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->rethrowIfFailed0()V

    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    invoke-direct {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->rethrowIfFailed0()V

    return-object p0
.end method
