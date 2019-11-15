.class Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;
.super Ljava/lang/Object;
.source "HttpTunnelingClientSocketChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

.field final synthetic val$req:Lorg/jboss/netty/handler/codec/http/HttpRequest;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->val$req:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->realChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->val$req:Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/socket/SocketChannel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->this$0:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel;->requestHeaderWritten:Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$virtualChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$remoteAddress:Ljava/net/SocketAddress;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$2;->val$virtualChannel:Lorg/jboss/netty/channel/socket/SocketChannel;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
