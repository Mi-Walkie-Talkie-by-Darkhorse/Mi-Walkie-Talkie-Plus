.class public interface abstract Lorg/jboss/netty/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/channel/Channel;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_NONE:I = 0x0

.field public static final OP_READ:I = 0x1

.field public static final OP_READ_WRITE:I = 0x5

.field public static final OP_WRITE:I = 0x4


# virtual methods
.method public abstract bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract close()Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract disconnect()Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract getAttachment()Ljava/lang/Object;
.end method

.method public abstract getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract getConfig()Lorg/jboss/netty/channel/ChannelConfig;
.end method

.method public abstract getFactory()Lorg/jboss/netty/channel/ChannelFactory;
.end method

.method public abstract getId()Ljava/lang/Integer;
.end method

.method public abstract getInterestOps()I
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getParent()Lorg/jboss/netty/channel/Channel;
.end method

.method public abstract getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract isBound()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isReadable()Z
.end method

.method public abstract isWritable()Z
.end method

.method public abstract setAttachment(Ljava/lang/Object;)V
.end method

.method public abstract setInterestOps(I)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract unbind()Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;
.end method
