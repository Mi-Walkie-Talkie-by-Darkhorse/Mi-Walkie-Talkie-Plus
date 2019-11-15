.class public interface abstract Lorg/jboss/netty/channel/ChannelSink;
.super Ljava/lang/Object;
.source "ChannelSink.java"


# virtual methods
.method public abstract eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract exceptionCaught(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract execute(Lorg/jboss/netty/channel/ChannelPipeline;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
.end method
