.class public final Lorg/jboss/netty/channel/socket/nio/NioClientBoss;
.super Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;
.source "NioClientBoss.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/Boss;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;
    }
.end annotation


# instance fields
.field private final timer:Lorg/jboss/netty/util/Timer;

.field private final wakeupTask:Lorg/jboss/netty/util/TimerTask;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/Timer;Lorg/jboss/netty/util/ThreadNameDeterminer;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$1;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->wakeupTask:Lorg/jboss/netty/util/TimerTask;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->timer:Lorg/jboss/netty/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;)Lorg/jboss/netty/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->wakeupTask:Lorg/jboss/netty/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;)Lorg/jboss/netty/util/Timer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->timer:Lorg/jboss/netty/util/Timer;

    return-object v0
.end method

.method private static connect(Ljava/nio/channels/SelectionKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    :try_start_0
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->timoutTimer:Lorg/jboss/netty/util/Timeout;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->timoutTimer:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v1}, Lorg/jboss/netty/util/Timeout;->cancel()V

    :cond_0
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/net/ConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/ConnectException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v2
.end method

.method private static processConnectTimeout(Ljava/util/Set;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;J)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-wide v4, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    cmp-long v3, p1, v4

    if-ltz v3, :cond_0

    if-nez v1, :cond_1

    new-instance v1, Lorg/jboss/netty/channel/ConnectTimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection timed out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->requestedRemoteAddress:Ljava/net/SocketAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jboss/netty/channel/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v3, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    iget-object v3, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processSelectedKeys(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->close(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->connect(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v4, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v4, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget-object v0, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method


# virtual methods
.method protected close(Ljava/nio/channels/SelectionKey;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-void
.end method

.method protected createRegisterTask(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;

    check-cast p1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-direct {v0, p0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;-><init>(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;Lorg/jboss/netty/channel/socket/nio/NioClientBoss;Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V

    return-object v0
.end method

.method protected newThreadRenamingRunnable(ILorg/jboss/netty/util/ThreadNameDeterminer;)Lorg/jboss/netty/util/ThreadRenamingRunnable;
    .locals 3

    new-instance v0, Lorg/jboss/netty/util/ThreadRenamingRunnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New I/O boss #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/jboss/netty/util/ThreadRenamingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/ThreadNameDeterminer;)V

    return-object v0
.end method

.method protected process(Ljava/nio/channels/Selector;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->processSelectedKeys(Ljava/util/Set;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->processConnectTimeout(Ljava/util/Set;J)V

    return-void
.end method

.method public bridge synthetic rebuildSelector()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->rebuildSelector()V

    return-void
.end method

.method public bridge synthetic register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->register(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->run()V

    return-void
.end method

.method public bridge synthetic shutdown()V
    .locals 0

    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioSelector;->shutdown()V

    return-void
.end method
