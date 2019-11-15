.class public Lorg/jboss/netty/handler/queue/BufferedWriteHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "BufferedWriteHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final consolidateOnFlush:Z

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final flush:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    const-class v0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Ljava/util/Queue;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Queue;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    iput-boolean p2, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;-><init>(Ljava/util/Queue;Z)V

    return-void
.end method

.method private consolidatedWrite(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelEvent;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_0

    new-array v2, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler$1;-><init>(Lorg/jboss/netty/handler/queue/BufferedWriteHandler;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    iget-object v2, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v2, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to flush message"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
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

    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V

    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public closeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0
.end method

.method public disconnectRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V

    return-void
.end method

.method public flush(Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->getQueue()Ljava/util/Queue;

    move-result-object v5

    if-eqz p1, :cond_9

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_5

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidatedWrite(Ljava/util/List;)Ljava/util/List;

    :goto_2
    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->flush(Z)V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v6, :cond_7

    invoke-direct {p0, v1}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidatedWrite(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_1

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_9
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_8

    goto :goto_2
.end method

.method protected getQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method public isConsolidateOnFlush()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->consolidateOnFlush:Z

    return v0
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->getQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-boolean v0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BufferedWriteHandler;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
