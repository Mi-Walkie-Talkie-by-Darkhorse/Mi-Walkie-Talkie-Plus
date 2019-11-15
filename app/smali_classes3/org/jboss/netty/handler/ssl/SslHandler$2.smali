.class Lorg/jboss/netty/handler/ssl/SslHandler$2;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;->handshake()Lorg/jboss/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

.field final synthetic val$channel:Lorg/jboss/netty/channel/Channel;

.field final synthetic val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic val$hsFuture:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$hsFuture:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object p3, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p4, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$channel:Lorg/jboss/netty/channel/Channel;

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

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$hsFuture:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$300(Lorg/jboss/netty/handler/ssl/SslHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$2;->val$channel:Lorg/jboss/netty/channel/Channel;

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->future(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->close(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V

    :cond_0
    return-void
.end method
