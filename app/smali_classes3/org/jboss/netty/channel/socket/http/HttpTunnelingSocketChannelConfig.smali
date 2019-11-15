.class public final Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;
.super Ljava/lang/Object;
.source "HttpTunnelingSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannelConfig;


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

.field private volatile enableSslSessionCreation:Z

.field private volatile enabledSslCipherSuites:[Ljava/lang/String;

.field private volatile enabledSslProtocols:[Ljava/lang/String;

.field private volatile serverName:Ljava/lang/String;

.field private volatile serverPath:Ljava/lang/String;

.field private volatile sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/netty-tunnel"

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    return-void
.end method


# virtual methods
.method public getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public getEnabledSslCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getEnabledSslProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getTrafficClass()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isEnableSslSessionCreation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    return v0
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isKeepAlive()Z

    move-result v0

    return v0
.end method

.method public isReuseAddress()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isReuseAddress()Z

    move-result v0

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->isTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-void
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setConnectTimeoutMillis(I)V

    return-void
.end method

.method public setEnableSslSessionCreation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enableSslSessionCreation:Z

    return-void
.end method

.method public setEnabledSslCipherSuites([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslCipherSuites:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setEnabledSslProtocols([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->enabledSslProtocols:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setKeepAlive(Z)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setKeepAlive(Z)V

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v1}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "serverName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setServerName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "serverPath"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setServerPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "sslContext"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p2, Ljavax/net/ssl/SSLContext;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    goto :goto_0

    :cond_3
    const-string v1, "enabledSslCipherSuites"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnabledSslCipherSuites([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "enabledSslProtocols"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnabledSslProtocols([Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "enableSslSessionCreation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setEnableSslSessionCreation(Z)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setPerformancePreferences(III)V

    return-void
.end method

.method public setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setReceiveBufferSize(I)V

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setReuseAddress(Z)V

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setSendBufferSize(I)V

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setServerPath(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serverPath"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->serverPath:Ljava/lang/String;

    return-void
.end method

.method public setSoLinger(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setSoLinger(I)V

    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->sslContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setTcpNoDelay(Z)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingSocketChannelConfig;->channel:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->setTrafficClass(I)V

    return-void
.end method
