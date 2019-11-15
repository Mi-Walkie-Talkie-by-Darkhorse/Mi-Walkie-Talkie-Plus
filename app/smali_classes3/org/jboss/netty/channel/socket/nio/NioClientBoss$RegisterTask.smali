.class final Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;
.super Ljava/lang/Object;
.source "NioClientBoss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/NioClientBoss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisterTask"
.end annotation


# instance fields
.field private final boss:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

.field private final channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;Lorg/jboss/netty/channel/socket/nio/NioClientBoss;Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    invoke-static {v2}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->access$100(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;)Lorg/jboss/netty/util/Timer;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    invoke-static {v3}, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->access$000(Lorg/jboss/netty/channel/socket/nio/NioClientBoss;)Lorg/jboss/netty/util/TimerTask;

    move-result-object v3

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->timoutTimer:Lorg/jboss/netty/util/Timeout;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->channel:Ljava/nio/channels/SelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->boss:Lorg/jboss/netty/channel/socket/nio/NioClientBoss;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/NioClientBoss;->selector:Ljava/nio/channels/Selector;

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->connectDeadlineNanos:J

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;->worker:Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientBoss$RegisterTask;->channel:Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;

    invoke-static {v2}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/AbstractNioWorker;->close(Lorg/jboss/netty/channel/socket/nio/AbstractNioChannel;Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0
.end method
