.class public interface abstract Lorg/jboss/netty/channel/socket/DatagramChannel;
.super Ljava/lang/Object;
.source "DatagramChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/Channel;


# virtual methods
.method public abstract getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;
.end method

.method public abstract getLocalAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract joinGroup(Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract leaveGroup(Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lorg/jboss/netty/channel/ChannelFuture;
.end method
