.class final Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;
.super Ljava/lang/Object;
.source "StaticChannelPipeline.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelHandlerContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/StaticChannelPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StaticChannelHandlerContext"
.end annotation


# instance fields
.field private volatile attachment:Ljava/lang/Object;

.field private final canHandleDownstream:Z

.field private final canHandleUpstream:Z

.field private final handler:Lorg/jboss/netty/channel/ChannelHandler;

.field private final index:I

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/StaticChannelPipeline;ILjava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 3

    iput-object p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p4, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    iput-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream:Z

    instance-of v0, p4, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    iput-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream:Z

    iget-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler must be either "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/ChannelUpstreamHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/channel/ChannelDownstreamHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p2, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->index:I

    iput-object p3, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->name:Ljava/lang/String;

    iput-object p4, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    return-void
.end method


# virtual methods
.method public canHandleDownstream()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleDownstream:Z

    return v0
.end method

.method public canHandleUpstream()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->canHandleUpstream:Z

    return v0
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannel()Lorg/jboss/netty/channel/Channel;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipeline;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->handler:Lorg/jboss/netty/channel/ChannelHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    return-object v0
.end method

.method public sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    iget v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->index:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->access$000(Lorg/jboss/netty/channel/StaticChannelPipeline;I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->getSink()Lorg/jboss/netty/channel/ChannelSink;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/channel/ChannelSink;->eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/channel/StaticChannelPipeline;->notifyHandlerException(Lorg/jboss/netty/channel/ChannelEvent;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendDownstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method public sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    iget v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->access$100(Lorg/jboss/netty/channel/StaticChannelPipeline;I)Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->this$0:Lorg/jboss/netty/channel/StaticChannelPipeline;

    invoke-virtual {v1, v0, p1}, Lorg/jboss/netty/channel/StaticChannelPipeline;->sendUpstream(Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/StaticChannelPipeline$StaticChannelHandlerContext;->attachment:Ljava/lang/Object;

    return-void
.end method
