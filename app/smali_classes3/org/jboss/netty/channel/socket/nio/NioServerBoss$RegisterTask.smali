.class final Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;
.super Ljava/lang/Object;
.source "NioServerBoss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioServerBoss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterTask"
.end annotation


# instance fields
.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

.field private final future:Lorg/jboss/netty/channel/ChannelFuture;

.field private final localAddress:Ljava/net/SocketAddress;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioServerBoss;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioServerBoss;Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerBoss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object p4, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->localAddress:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->localAddress:Ljava/net/SocketAddress;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/ServerSocketChannelConfig;->getBacklog()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;->socket:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerBoss;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/NioServerBoss;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    invoke-static {v2, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerBoss;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/NioServerBoss;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioServerBoss;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioServerBoss$RegisterTask;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-virtual {v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/NioServerBoss;->close(Lorg/jboss/netty/channel/socket/nio/NioServerSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_1
    throw v0
.end method
