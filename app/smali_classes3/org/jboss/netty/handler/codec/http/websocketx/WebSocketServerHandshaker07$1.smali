.class Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07$1;
.super Ljava/lang/Object;
.source "WebSocketServerHandshaker07.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;->handshake(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/HttpRequest;)Lorg/jboss/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07$1;->this$0:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 8

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    :cond_0
    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;

    const-string v2, "wsdecoder"

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket07FrameDecoder;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07$1;->this$0:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;

    invoke-static {v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;->access$000(Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;)Z

    move-result v5

    iget-object v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07$1;->this$0:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;

    invoke-virtual {v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker07;->getMaxFramePayloadLength()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket07FrameDecoder;-><init>(ZZJ)V

    invoke-virtual {v0, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpRequestDecoder;->replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpResponseEncoder;

    const-string v2, "wsencoder"

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket07FrameEncoder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket07FrameEncoder;-><init>(Z)V

    invoke-interface {v1, v0, v2, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->replace(Ljava/lang/Class;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/ChannelHandler;

    return-void
.end method
