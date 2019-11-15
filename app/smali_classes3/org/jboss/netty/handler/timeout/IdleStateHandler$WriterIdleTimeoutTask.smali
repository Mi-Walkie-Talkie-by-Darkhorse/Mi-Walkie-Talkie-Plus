.class final Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;
.super Ljava/lang/Object;
.source "IdleStateHandler.java"

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/timeout/IdleStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriterIdleTimeoutTask"
.end annotation


# instance fields
.field private final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public run(Lorg/jboss/netty/util/Timeout;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->lastWriteTime:J

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v6, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    sub-long/2addr v2, v4

    sub-long v2, v6, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v1, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v2, v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v6}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    sget-object v2, Lorg/jboss/netty/handler/timeout/IdleState;->WRITER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    invoke-static {v0, v1, v2, v4, v5}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->access$000(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$WriterIdleTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v1, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$State;->writerIdleTimeout:Lorg/jboss/netty/util/Timeout;

    goto :goto_0
.end method
