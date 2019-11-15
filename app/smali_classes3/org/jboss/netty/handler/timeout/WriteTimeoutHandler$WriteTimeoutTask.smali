.class final Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;
.super Ljava/lang/Object;
.source "WriteTimeoutHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method

.method private fireWriteTimeOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;

    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;-><init>(Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v1, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/WriteTimeoutException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->fireWriteTimeOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0
.end method
