.class Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;
.super Ljava/lang/Object;
.source "WriteTimeoutHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->fireWriteTimeOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

.field final synthetic val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;->this$1:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;->this$1:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;

    iget-object v0, v0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask;->this$0:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->writeTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler$WriteTimeoutTask$1;->val$ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
