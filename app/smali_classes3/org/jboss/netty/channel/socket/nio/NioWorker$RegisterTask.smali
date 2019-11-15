.class final Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;
.super Ljava/lang/Object;
.source "NioWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterTask"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final server:Z

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioWorker;Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Z)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    iput-boolean p4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v3, v3, Lorg/jboss/netty/channel/socket/nio/NioWorker;->selector:Ljava/nio/channels/Selector;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->getRawInterestOps()I

    move-result v4

    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;->setConnected()V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :cond_5
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->server:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-boolean v0, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->boundManually:Z

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_8
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioWorker;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioWorker$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v3}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/NioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-nez v1, :cond_2

    new-instance v1, Lorg/jboss/netty/channel/ChannelException;

    const-string v2, "Failed to register a socket to the selector."

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
