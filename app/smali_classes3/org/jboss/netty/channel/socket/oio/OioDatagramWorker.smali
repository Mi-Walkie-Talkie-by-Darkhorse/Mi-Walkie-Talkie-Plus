.class Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;
.source "OioDatagramWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker",
        "<",
        "Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)V

    return-void
.end method

.method static disconnect(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->isConnected()Z

    move-result v0

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v1

    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->disconnect()V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnected(Lorg/jboss/netty/channel/Channel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lorg/jboss/netty/channel/Channels;->fireChannelDisconnectedLater(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method static write(Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 6

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v1

    :try_start_0
    check-cast p2, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v0, v5, v2, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    if-eqz v1, :cond_2

    int-to-long v2, v3

    invoke-static {p0, v2, v3}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    :goto_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :goto_2
    return-void

    :cond_1
    new-array v2, v3, [B

    const/4 v0, 0x0

    invoke-interface {p2, v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v1, :cond_3

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    int-to-long v2, v3

    :try_start_1
    invoke-static {p0, v2, v3}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_2
.end method


# virtual methods
.method process()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/DatagramChannelConfig;->getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;->nextReceiveBufferSize()I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v0, v1

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioDatagramWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioDatagramChannel;->getConfig()Lorg/jboss/netty/channel/socket/DatagramChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/DatagramChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-interface {v0, v1, v4, v5}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :goto_0
    return v6

    :catch_0
    move-exception v0

    goto :goto_0
.end method
