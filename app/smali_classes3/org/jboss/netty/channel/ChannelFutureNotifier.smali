.class public final Lorg/jboss/netty/channel/ChannelFutureNotifier;
.super Ljava/lang/Object;
.source "ChannelFutureNotifier.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private final future:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/ChannelFutureNotifier;->future:Lorg/jboss/netty/channel/ChannelFuture;

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

    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelFutureNotifier;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/ChannelFutureNotifier;->future:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
