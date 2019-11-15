.class public interface abstract Lorg/jboss/netty/channel/ChannelPipeline;
.super Ljava/lang/Object;
.source "ChannelPipeline.java"


# virtual methods
.method public abstract addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract addFirst(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract attach(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelSink;)V
.end method

.method public abstract execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract getChannel()Lorg/jboss/netty/channel/Channel;
.end method

.method public abstract getContext(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;)",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;"
        }
    .end annotation
.end method

.method public abstract getContext(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandlerContext;
.end method

.method public abstract getContext(Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandlerContext;
.end method

.method public abstract getFirst()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract getLast()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract getNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSink()Lorg/jboss/netty/channel/ChannelSink;
.end method

.method public abstract isAttached()Z
.end method

.method public abstract remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract remove(Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract removeFirst()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract removeLast()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract replace(Lorg/jboss/netty/channel/ChannelHandler;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
.end method

.method public abstract sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
.end method

.method public abstract sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
.end method

.method public abstract toMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jboss/netty/channel/ChannelHandler;",
            ">;"
        }
    .end annotation
.end method
