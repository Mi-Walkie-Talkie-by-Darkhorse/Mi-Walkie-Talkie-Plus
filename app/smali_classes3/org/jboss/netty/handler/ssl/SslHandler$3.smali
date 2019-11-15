.class Lorg/jboss/netty/handler/ssl/SslHandler$3;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/ssl/SslHandler;->wrapNonAppData(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/ssl/SslHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/SslHandler$3;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$3;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget-object v1, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelExceptionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/ssl/SslHandler$3;->this$0:Lorg/jboss/netty/handler/ssl/SslHandler;

    iget v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/jboss/netty/handler/ssl/SslHandler;->ignoreClosedChannelException:I

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
