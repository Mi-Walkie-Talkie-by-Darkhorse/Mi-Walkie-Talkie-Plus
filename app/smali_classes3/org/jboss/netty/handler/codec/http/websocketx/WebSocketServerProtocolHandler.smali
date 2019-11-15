.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "WebSocketServerProtocolHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# instance fields
.field private final allowExtensions:Z

.field private final subprotocols:Ljava/lang/String;

.field private final websocketPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->websocketPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->subprotocols:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->allowExtensions:Z

    return-void
.end method

.method static forbiddenHttpRequestResponder()Lorg/jboss/netty/channel/ChannelHandler;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$1;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler$1;-><init>()V

    return-object v0
.end method

.method static getHandshaker(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;
    .locals 1

    invoke-interface {p0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    return-object v0
.end method

.method static setHandshaker(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-class v1, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lorg/jboss/netty/channel/ChannelHandler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->websocketPath:Ljava/lang/String;

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->subprotocols:Ljava/lang/String;

    iget-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->allowExtensions:Z

    invoke-direct {v3, v4, v5, v6}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandshakeHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v2, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    :cond_0
    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpResponse;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerProtocolHandler;->getHandshaker(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    check-cast v0, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketServerHandshaker;->close(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;)Lorg/jboss/netty/channel/ChannelFuture;

    :goto_0
    return-void

    :cond_0
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method
