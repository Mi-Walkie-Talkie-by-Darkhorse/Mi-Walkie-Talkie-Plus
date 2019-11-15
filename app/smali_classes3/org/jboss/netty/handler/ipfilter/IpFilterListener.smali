.class public interface abstract Lorg/jboss/netty/handler/ipfilter/IpFilterListener;
.super Ljava/lang/Object;
.source "IpFilterListener.java"


# virtual methods
.method public abstract allowed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract continues(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)Z
.end method

.method public abstract refused(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/net/InetSocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
.end method
