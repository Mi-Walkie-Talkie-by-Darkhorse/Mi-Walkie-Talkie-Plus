.class Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder$1;
.super Ljava/lang/Object;
.source "ServerBootstrap.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->channelOpen(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;


# direct methods
.method constructor <init>(Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder$1;->this$1:Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;

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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder$1;->this$1:Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;

    invoke-static {v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->access$000(Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;)Lorg/jboss/netty/channel/DefaultChannelFuture;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->setSuccess()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder$1;->this$1:Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;

    invoke-static {v0}, Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;->access$000(Lorg/jboss/netty/bootstrap/ServerBootstrap$Binder;)Lorg/jboss/netty/channel/DefaultChannelFuture;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/DefaultChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
