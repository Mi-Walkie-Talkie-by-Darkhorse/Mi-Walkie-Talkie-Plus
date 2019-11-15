.class public interface abstract Lorg/jboss/netty/channel/ChannelFuture;
.super Ljava/lang/Object;
.source "ChannelFuture.java"


# virtual methods
.method public abstract addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
.end method

.method public abstract await()Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract await(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract await(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract awaitUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract awaitUninterruptibly(J)Z
.end method

.method public abstract awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract cancel()Z
.end method

.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getChannel()Lorg/jboss/netty/channel/Channel;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isDone()Z
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract removeListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V
.end method

.method public abstract rethrowIfFailed()Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setFailure(Ljava/lang/Throwable;)Z
.end method

.method public abstract setProgress(JJJ)Z
.end method

.method public abstract setSuccess()Z
.end method

.method public abstract sync()Lorg/jboss/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract syncUninterruptibly()Lorg/jboss/netty/channel/ChannelFuture;
.end method
