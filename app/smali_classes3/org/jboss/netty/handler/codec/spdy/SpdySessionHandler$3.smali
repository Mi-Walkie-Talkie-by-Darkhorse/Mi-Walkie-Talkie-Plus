.class Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;
.super Ljava/lang/Object;
.source "SpdySessionHandler.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->updateSendWindowSize(Lorg/jboss/netty/channel/ChannelHandlerContext;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;

.field final synthetic val$context:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field final synthetic val$remoteAddress:Ljava/net/SocketAddress;

.field final synthetic val$streamID:I


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;I)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->val$context:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->val$remoteAddress:Ljava/net/SocketAddress;

    iput p4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->val$streamID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->this$0:Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->val$context:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->val$remoteAddress:Ljava/net/SocketAddress;

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler$3;->val$streamID:I

    sget-object v4, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;->access$000(Lorg/jboss/netty/handler/codec/spdy/SpdySessionHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    :cond_0
    return-void
.end method
