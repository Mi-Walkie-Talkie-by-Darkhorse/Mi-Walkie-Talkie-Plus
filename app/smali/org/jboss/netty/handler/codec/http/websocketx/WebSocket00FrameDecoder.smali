.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "WebSocket00FrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/replay/VoidEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_FRAME_SIZE:J = 0x4000L


# instance fields
.field private final maxFrameSize:J

.field private receivedClosingHandshake:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x4000

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;-><init>(J)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    iput-wide p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    return-void
.end method

.method private decodeBinaryFrame(BLorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    move-wide v2, v4

    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v1

    const/4 v6, 0x7

    shl-long/2addr v2, v6

    and-int/lit8 v6, v1, 0x7f

    int-to-long v6, v6

    or-long/2addr v2, v6

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x8

    if-le v0, v6, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v0

    :cond_2
    and-int/lit16 v1, v1, 0x80

    const/16 v6, 0x80

    if-eq v1, v6, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>()V

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    long-to-int v1, v2

    invoke-interface {p2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method

.method private decodeTextFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    const/4 v6, -0x1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->actualReadableBytes()I

    move-result v1

    add-int v2, v0, v1

    invoke-interface {p1, v0, v2, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v2

    if-ne v2, v6, :cond_1

    int-to-long v0, v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sub-int v0, v2, v0

    int-to-long v2, v0

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->maxFrameSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v0

    :cond_2
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v1, v0, v2, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v0

    if-ltz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a text frame should not contain 0xFF."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p4, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->receivedClosingHandshake:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeBinaryFrame(BLorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameDecoder;->decodeTextFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    move-result-object v0

    goto :goto_0
.end method
