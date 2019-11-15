.class Lorg/jboss/netty/handler/ssl/SslHandler$6;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

.field final synthetic val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$400(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/util/internal/NonReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$500(Lorg/jboss/netty/handler/ssl/SslHandler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$600(Lorg/jboss/netty/handler/ssl/SslHandler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$400(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/util/internal/NonReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :cond_3
    iget-object v0, v0, Lorg/jboss/netty/handler/ssl/SslHandler$PendingWrite;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$6;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lorg/jboss/netty/handler/ssl/SslHandler;->access$400(Lorg/jboss/netty/handler/ssl/SslHandler;)Lorg/jboss/netty/util/internal/NonReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/NonReentrantLock;->unlock()V

    throw v0

    :cond_4
    if-nez v1, :cond_5

    :try_start_2
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
