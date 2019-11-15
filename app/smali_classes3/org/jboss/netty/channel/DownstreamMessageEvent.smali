.class public Lorg/jboss/netty/channel/DownstreamMessageEvent;
.super Ljava/lang/Object;
.source "DownstreamMessageEvent.java"

# interfaces
.implements Lorg/jboss/netty/channel/MessageEvent;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/Channel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final message:Ljava/lang/Object;

.field private final remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "future"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "message"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->channel:Lorg/jboss/netty/channel/Channel;

    iput-object p2, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object p3, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->message:Ljava/lang/Object;

    if-eqz p4, :cond_3

    iput-object p4, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    :goto_0
    return-void

    :cond_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    goto :goto_0
.end method


# virtual methods
.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public getFuture()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->future:Lorg/jboss/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DownstreamMessageEvent;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WRITE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/util/internal/StringUtil;->stripControlCharacters(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/channel/DownstreamMessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
