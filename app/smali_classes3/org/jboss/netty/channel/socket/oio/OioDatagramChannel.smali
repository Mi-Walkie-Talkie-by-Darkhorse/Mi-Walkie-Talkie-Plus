.class final Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;
.source "OioDatagramChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/DatagramChannel;


# instance fields
.field private final config:Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

.field final socket:Ljava/net/MulticastSocket;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;-><init>(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;)V

    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setBroadcast(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/DefaultDatagramChannelConfig;-><init>(Ljava/net/DatagramSocket;)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelOpen(Lorg/jboss/netty/channel/Channel;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to open a datagram socket."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to configure the datagram socket timeout."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureBound()V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/jboss/netty/channel/socket/DatagramChannel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be bound to join a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method closeSocket()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    return-void
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/ChannelConfig;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->config:Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    return-object v0
.end method

.method getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method isSocketBound()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method isSocketClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method isSocketConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->ensureBound()V

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public joinGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->ensureBound()V

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1, p2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public leaveGroup(Ljava/net/InetAddress;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public leaveGroup(Ljava/net/InetSocketAddress;Ljava/net/NetworkInterface;)Lorg/jboss/netty/channel/ChannelFuture;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, p1, p2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->failedFuture(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    goto :goto_0
.end method
