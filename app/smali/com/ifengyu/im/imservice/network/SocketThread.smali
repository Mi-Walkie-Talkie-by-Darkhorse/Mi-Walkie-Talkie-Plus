.class public Lcom/ifengyu/im/imservice/network/SocketThread;
.super Ljava/lang/Thread;
.source "SocketThread.java"


# static fields
.field private static logger:Lcom/ifengyu/im/utils/Logger;


# instance fields
.field private channel:Lorg/jboss/netty/channel/Channel;

.field private channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

.field private channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

.field private clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

.field private nPort:I

.field private strHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/network/SocketThread;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/network/SocketThread;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jboss/netty/channel/SimpleChannelHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channel:Lorg/jboss/netty/channel/Channel;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->strHost:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->nPort:I

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->strHost:Ljava/lang/String;

    iput p2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->nPort:I

    invoke-direct {p0, p3}, Lcom/ifengyu/im/imservice/network/SocketThread;->init(Lorg/jboss/netty/channel/SimpleChannelHandler;)V

    return-void
.end method

.method private init(Lorg/jboss/netty/channel/SimpleChannelHandler;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannelFactory;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    new-instance v0, Lorg/jboss/netty/bootstrap/ClientBootstrap;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFactory:Lorg/jboss/netty/channel/ChannelFactory;

    invoke-direct {v0, v1}, Lorg/jboss/netty/bootstrap/ClientBootstrap;-><init>(Lorg/jboss/netty/channel/ChannelFactory;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    const-string v1, "connectTimeoutMillis"

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    new-instance v1, Lcom/ifengyu/im/imservice/network/SocketThread$1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/im/imservice/network/SocketThread$1;-><init>(Lcom/ifengyu/im/imservice/network/SocketThread;Lorg/jboss/netty/channel/SimpleChannelHandler;)V

    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    const-string v1, "tcpNoDelay"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    const-string v1, "keepAlive"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->cancel()Z

    goto :goto_0
.end method

.method public doConnect()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channel:Lorg/jboss/netty/channel/Channel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channel:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->strHost:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->nPort:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->strHost:Ljava/lang/String;

    iget v5, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->nPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channel:Lorg/jboss/netty/channel/Channel;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-virtual {v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->releaseExternalResources()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->getCloseFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->clientBootstrap:Lorg/jboss/netty/bootstrap/ClientBootstrap;

    invoke-virtual {v2}, Lorg/jboss/netty/bootstrap/ClientBootstrap;->releaseExternalResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/ifengyu/im/imservice/network/SocketThread;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v4, "do connect failed. e: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v0}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channel:Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method public isClose()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/network/SocketThread;->doConnect()Z

    return-void
.end method

.method public sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Lcom/ifengyu/im/protobuf/base/Header;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/im/protobuf/base/Header;->encode()Lcom/ifengyu/im/protobuf/base/DataBuffer;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/im/protobuf/base/DataBuffer;

    invoke-direct {v2}, Lcom/ifengyu/im/protobuf/base/DataBuffer;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeBytes([B)V

    new-instance v4, Lcom/ifengyu/im/protobuf/base/DataBuffer;

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v4, v3}, Lcom/ifengyu/im/protobuf/base/DataBuffer;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeDataBuffer(Lcom/ifengyu/im/protobuf/base/DataBuffer;)V

    invoke-virtual {v4, v2}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->writeDataBuffer(Lcom/ifengyu/im/protobuf/base/DataBuffer;)V

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isWritable()Z

    move-result v2

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "#sendRequest#channel is close!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread;->channelFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v4}, Lcom/ifengyu/im/protobuf/base/DataBuffer;->getOrignalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v1, Lcom/ifengyu/im/imservice/network/SocketThread;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "packet#send ok"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/ifengyu/im/imservice/network/SocketThread;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "packet#send failed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
