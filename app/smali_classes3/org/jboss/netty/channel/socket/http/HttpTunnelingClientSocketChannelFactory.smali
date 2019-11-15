.class public Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;
.super Ljava/lang/Object;
.source "HttpTunnelingClientSocketChannelFactory.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;


# instance fields
.field private final clientSocketChannelFactory:Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;

.field private final sink:Lorg/jboss/netty/channel/ChannelSink;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketPipelineSink;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketPipelineSink;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;->clientSocketChannelFactory:Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;->newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public newChannel(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/socket/SocketChannel;
    .locals 3

    new-instance v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;->sink:Lorg/jboss/netty/channel/ChannelSink;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;->clientSocketChannelFactory:Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;-><init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;)V

    return-object v0
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;->clientSocketChannelFactory:Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;->releaseExternalResources()V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannelFactory;->clientSocketChannelFactory:Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/ClientSocketChannelFactory;->shutdown()V

    return-void
.end method
