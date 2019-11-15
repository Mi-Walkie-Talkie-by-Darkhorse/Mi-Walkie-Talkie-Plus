.class public Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;
.super Lorg/jboss/netty/channel/DefaultChannelFuture;
.source "ChannelRunnableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private started:Z

.field private final task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/Channel;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/DefaultChannelFuture;-><init>(Lorg/jboss/netty/channel/Channel;Z)V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->task:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/jboss/netty/channel/DefaultChannelFuture;->cancel()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->started:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->setSuccess()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/ChannelRunnableWrapper;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
