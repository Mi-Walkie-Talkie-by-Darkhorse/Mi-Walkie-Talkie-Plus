.class Lcom/ifengyu/im/imservice/network/SocketThread$1;
.super Ljava/lang/Object;
.source "SocketThread.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipelineFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/network/SocketThread;->init(Lorg/jboss/netty/channel/SimpleChannelHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/network/SocketThread;

.field final synthetic val$handler:Lorg/jboss/netty/channel/SimpleChannelHandler;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/network/SocketThread;Lorg/jboss/netty/channel/SimpleChannelHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/network/SocketThread$1;->this$0:Lcom/ifengyu/im/imservice/network/SocketThread;

    iput-object p2, p0, Lcom/ifengyu/im/imservice/network/SocketThread$1;->val$handler:Lorg/jboss/netty/channel/SimpleChannelHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v6

    const-string v7, "decoder"

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;

    const v1, 0x64000

    const/4 v3, 0x4

    const/4 v4, -0x4

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    invoke-interface {v6, v7, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v0, "handler"

    iget-object v1, p0, Lcom/ifengyu/im/imservice/network/SocketThread$1;->val$handler:Lorg/jboss/netty/channel/SimpleChannelHandler;

    invoke-interface {v6, v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    return-object v6
.end method
