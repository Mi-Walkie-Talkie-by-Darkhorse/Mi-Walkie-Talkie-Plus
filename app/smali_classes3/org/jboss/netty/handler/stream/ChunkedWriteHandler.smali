.class public Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;
.super Ljava/lang/Object;
.source "ChunkedWriteHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;
.implements Lorg/jboss/netty/channel/ChannelUpstreamHandler;
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$3;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private currentEvent:Lorg/jboss/netty/channel/MessageEvent;

.field private final flush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile flushNeeded:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->$assertionsDisabled:Z

    const-class v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to close a chunked input."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .locals 5

    const/4 v2, 0x0

    move-object v1, v2

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    move-object v3, v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v4, :cond_3

    check-cast v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    :cond_3
    if-nez v1, :cond_5

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :goto_3
    invoke-interface {v3}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method private flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v6

    iput-boolean v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flushNeeded:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_e

    iput-boolean v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flushNeeded:Z

    :try_start_0
    invoke-interface {v6}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v3

    :cond_2
    :try_start_1
    invoke-interface {v6}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3
    if-eqz v7, :cond_0

    invoke-interface {v6}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    iget-boolean v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flushNeeded:Z

    if-eqz v0, :cond_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_1

    :cond_7
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    :goto_4
    invoke-interface {v6}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->discard(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    :cond_8
    :try_start_3
    iget-object v8, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/jboss/netty/handler/stream/ChunkedInput;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->nextChunk()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v5

    if-nez v1, :cond_a

    sget-object v4, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_9

    move v1, v2

    :goto_5
    move-object v10, v4

    move v4, v1

    move-object v1, v10

    :goto_6
    if-nez v4, :cond_4

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    :try_start_5
    iput-object v5, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v5

    new-instance v9, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;

    invoke-direct {v9, p0, v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$1;-><init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    invoke-interface {v5, v9}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    move-object v0, v5

    :goto_7
    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-static {p1, v0, v1, v5}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_9
    move v1, v3

    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v8}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz p2, :cond_b

    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :goto_8
    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    goto/16 :goto_2

    :cond_b
    invoke-static {p1, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_8

    :cond_c
    invoke-static {v6}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v5, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$2;

    invoke-direct {v5, p0, v8}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$2;-><init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/channel/MessageEvent;)V

    invoke-interface {v0, v5}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p1, v8}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_e
    move v4, v3

    goto/16 :goto_3
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v2, v0

    move-object v1, v3

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    iget-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_0
    return-void

    :cond_1
    iput-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->currentEvent:Lorg/jboss/netty/channel/MessageEvent;

    move-object v4, v0

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    :cond_3
    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to flush event, discarding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v4}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    return-void
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_0
.end method

.method public handleUpstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler$3;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1, v3}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v3}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resumeTransfer()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->flush(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Unexpected exception while sending chunks."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
