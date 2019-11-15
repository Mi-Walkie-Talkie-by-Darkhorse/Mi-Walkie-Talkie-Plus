.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket00FrameEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "WebSocket00FrameEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, -0x1

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-interface {p3, v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {p3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    invoke-interface {p3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x5

    invoke-interface {v2, v3, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    const/16 v2, -0x80

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v2, v1, 0x1c

    and-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v3, v1, 0xe

    and-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v4, v1, 0x7

    and-int/lit8 v4, v4, 0x7f

    and-int/lit8 v5, v1, 0x7f

    if-nez v2, :cond_5

    if-nez v3, :cond_4

    if-nez v4, :cond_3

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    :goto_1
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p3, v0, v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0

    :cond_3
    or-int/lit16 v2, v4, 0x80

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_1

    :cond_4
    or-int/lit16 v2, v3, 0x80

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    or-int/lit16 v2, v4, 0x80

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_1

    :cond_5
    or-int/lit16 v2, v2, 0x80

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    or-int/lit16 v2, v3, 0x80

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    or-int/lit16 v2, v4, 0x80

    invoke-interface {p3, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    goto :goto_1
.end method
