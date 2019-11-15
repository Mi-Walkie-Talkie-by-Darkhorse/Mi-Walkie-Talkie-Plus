.class Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;
.super Ljava/lang/Object;
.source "NioClientSocketPipelineSink.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;->connect(Lorg/jboss/netty/channel/socket/nio/NioClientSocketChannel;Lorg/jboss/netty/channel/ChannelFuture;Ljava/net/SocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

.field final synthetic val$cf:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;->this$0:Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;->val$cf:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;->val$cf:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/NioClientSocketPipelineSink$1;->val$cf:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
