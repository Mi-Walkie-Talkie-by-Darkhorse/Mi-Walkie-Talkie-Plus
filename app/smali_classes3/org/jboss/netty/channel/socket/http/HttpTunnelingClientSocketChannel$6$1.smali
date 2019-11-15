.class Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6$1;
.super Ljava/lang/Object;
.source "HttpTunnelingClientSocketChannel.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;->operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6$1;->this$1:Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/HttpTunnelingClientSocketChannel$6;->val$future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
