.class Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;
.super Ljava/lang/Object;
.source "IdleStateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/timeout/IdleStateHandler;->fireChannelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

.field final synthetic val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic val$lastActivityTimeMillis:J

.field final synthetic val$state:Lorg/jboss/netty/handler/timeout/IdleState;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->val$state:Lorg/jboss/netty/handler/timeout/IdleState;

    iput-wide p4, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->val$lastActivityTimeMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->this$0:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->val$state:Lorg/jboss/netty/handler/timeout/IdleState;

    iget-wide v4, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->val$lastActivityTimeMillis:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/IdleStateHandler$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
