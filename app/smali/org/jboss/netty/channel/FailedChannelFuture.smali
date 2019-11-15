.class public Lorg/jboss/netty/channel/FailedChannelFuture;
.super Lorg/jboss/netty/channel/CompleteChannelFuture;
.source "FailedChannelFuture.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/CompleteChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cause"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method private rethrow()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    iget-object v1, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rethrowIfFailed()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Exception;

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lorg/jboss/netty/channel/FailedChannelFuture;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sync()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/channel/FailedChannelFuture;->rethrow()V

    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/FailedChannelFuture;->rethrow()V

    return-object p0
.end method
