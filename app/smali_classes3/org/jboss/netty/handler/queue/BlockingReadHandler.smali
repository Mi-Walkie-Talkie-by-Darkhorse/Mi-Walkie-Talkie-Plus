.class public Lorg/jboss/netty/handler/queue/BlockingReadHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "BlockingReadHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile closed:Z

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/jboss/netty/channel/ChannelEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/jboss/netty/channel/ChannelEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private static detectDeadLock()V
    .locals 2

    sget-object v0, Lorg/jboss/netty/util/internal/DeadLockProofWorker;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read*(...) in I/O thread causes a dead lock or sudden performance drop. Implement a state machine or call read*() from a different thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getMessage(Lorg/jboss/netty/channel/MessageEvent;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/MessageEvent;",
            ")TE;"
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->closed:Z

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method protected getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/jboss/netty/channel/ChannelEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->closed:Z

    return v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public read()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->readEvent()Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getMessage(Lorg/jboss/netty/channel/MessageEvent;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    check-cast v0, Lorg/jboss/netty/channel/ExceptionEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public read(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->readEvent(JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/channel/ChannelEvent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getMessage(Lorg/jboss/netty/channel/MessageEvent;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/jboss/netty/channel/ExceptionEvent;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    check-cast v0, Lorg/jboss/netty/channel/ExceptionEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public readEvent()Lorg/jboss/netty/channel/ChannelEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->detectDeadLock()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelEvent;

    instance-of v2, v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_0

    sget-boolean v0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->closed:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public readEvent(JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/channel/ChannelEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->detectDeadLock()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/ChannelEvent;

    if-nez v0, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/queue/BlockingReadTimeoutException;-><init>()V

    throw v0

    :cond_2
    instance-of v2, v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v2, :cond_0

    sget-boolean v0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/jboss/netty/handler/queue/BlockingReadHandler;->closed:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
