.class public abstract Lorg/jboss/netty/channel/socket/nio/AbstractNioChannelSink;
.super Lorg/jboss/netty/channel/AbstractChannelSink;
.source "AbstractNioChannelSink.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    new-instance v1, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;-><init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Runnable;)V

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->executeInIoThread(Ljava/lang/Runnable;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/AbstractChannelSink;->execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method protected isFireExceptionCaughtLater(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    instance-of v2, v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;

    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
