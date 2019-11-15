.class public interface abstract Lorg/jboss/netty/channel/ChannelHandlerContext;
.super Ljava/lang/Object;
.source "ChannelHandlerContext.java"


# virtual methods
.method public abstract canHandleDownstream()Z
.end method

.method public abstract canHandleUpstream()Z
.end method

.method public abstract getAttachment()Ljava/lang/Object;
.end method

.method public abstract getChannel()Lorg/jboss/netty/channel/Channel;
.end method

.method public abstract getHandler()Lorg/jboss/netty/channel/ChannelHandler;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
.end method

.method public abstract sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
.end method

.method public abstract sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
.end method

.method public abstract setAttachment(Ljava/lang/Object;)V
.end method
