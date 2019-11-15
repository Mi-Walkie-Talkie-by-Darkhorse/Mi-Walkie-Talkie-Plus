.class Lorg/jboss/netty/channel/socket/oio/OioWorker;
.super Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;
.source "OioWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker",
        "<",
        "Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^.*(?:Socket.*closed).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;-><init>(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)V

    return-void
.end method

.method static write(Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p0}, Lorg/jboss/netty/channel/socket/oio/OioWorker;->isIoThread(Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;)Z

    move-result v4

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v4, :cond_0

    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    instance-of v2, p2, Lorg/jboss/netty/channel/FileRegion;

    if-eqz v2, :cond_7

    check-cast p2, Lorg/jboss/netty/channel/FileRegion;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v2

    :cond_2
    int-to-long v6, v3

    invoke-interface {p2, v2, v6, v7}, Lorg/jboss/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    int-to-long v8, v3

    add-long/2addr v6, v8

    long-to-int v3, v6

    int-to-long v6, v3

    invoke-interface {p2}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    instance-of v2, p2, Lorg/jboss/netty/channel/DefaultFileRegion;

    if-eqz v2, :cond_4

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Lorg/jboss/netty/channel/FileRegion;->releaseExternalResources()V

    :cond_4
    move v2, v3

    :goto_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    if-eqz v4, :cond_8

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    instance-of v3, v2, Ljava/net/SocketException;

    if-eqz v3, :cond_5

    sget-object v3, Lorg/jboss/netty/channel/socket/oio/OioWorker;->SOCKET_CLOSED_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :cond_5
    invoke-interface {p1, v2}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    if-eqz v4, :cond_9

    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    :try_start_6
    instance-of v2, p2, Lorg/jboss/netty/channel/DefaultFileRegion;

    if-eqz v2, :cond_6

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Lorg/jboss/netty/channel/FileRegion;->releaseExternalResources()V

    :cond_6
    throw v3

    :cond_7
    check-cast p2, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {p2, v3, v5, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2

    :cond_8
    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lorg/jboss/netty/channel/Channels;->fireWriteCompleteLater(Lorg/jboss/netty/channel/Channel;J)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :cond_9
    invoke-static {p0, v2}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaughtLater(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/ChannelFuture;

    goto/16 :goto_0
.end method


# virtual methods
.method process()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getInputStream()Ljava/io/PushbackInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/SocketChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-interface {v0, v3, v2, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    move v0, v1

    goto :goto_0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    instance-of v0, v0, Lorg/jboss/netty/channel/socket/oio/OioAcceptedSocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/oio/OioWorker;->channel:Lorg/jboss/netty/channel/socket/oio/AbstractOioChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/oio/OioSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_0
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/oio/AbstractOioWorker;->run()V

    return-void
.end method
