.class public interface abstract Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;
.super Ljava/lang/Object;
.source "LifeCycleAwareChannelHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelHandler;


# virtual methods
.method public abstract afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
