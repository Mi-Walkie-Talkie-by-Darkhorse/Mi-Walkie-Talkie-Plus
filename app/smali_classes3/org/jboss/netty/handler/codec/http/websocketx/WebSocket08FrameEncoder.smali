.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "WebSocket08FrameEncoder.java"


# static fields
.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final maskPayload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz v0, :cond_12

    check-cast p3, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;

    invoke-virtual {p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_0
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v2}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding WebSocket Frame opCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->isFinalFragment()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v2, 0x80

    :cond_2
    invoke-virtual {p3}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->getRsv()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    rem-int/lit16 v4, v1, 0x80

    or-int/2addr v4, v2

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    const/16 v1, 0x7d

    if-le v3, v1, :cond_9

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid payload for PING (payload length must be <= 125, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    goto :goto_0

    :cond_4
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    goto :goto_0

    :cond_5
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    :cond_6
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_7
    instance-of v1, p3, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode frame of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    :goto_1
    const/16 v2, 0x7d

    if-gt v3, v2, :cond_c

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v1, :cond_b

    int-to-byte v1, v3

    or-int/lit16 v1, v1, 0x80

    :goto_2
    int-to-byte v1, v1

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    move-object v1, v2

    :goto_3
    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v2, :cond_11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    if-lez v3, :cond_10

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v6

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v2, v2, 0x4

    aget-byte v2, v5, v2

    xor-int/2addr v2, v6

    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    move v2, v3

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    int-to-byte v1, v3

    goto :goto_2

    :cond_c
    const v2, 0xffff

    if-gt v3, v2, :cond_e

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v1, :cond_d

    const/16 v1, 0xfe

    :goto_5
    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    ushr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    and-int/lit16 v1, v3, 0xff

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    move-object v1, v2

    goto :goto_3

    :cond_d
    const/16 v1, 0x7e

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameEncoder;->maskPayload:Z

    if-eqz v1, :cond_f

    const/16 v1, 0xff

    :goto_6
    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeLong(J)V

    move-object v1, v2

    goto/16 :goto_3

    :cond_f
    const/16 v1, 0x7f

    goto :goto_6

    :cond_10
    move-object v0, v4

    :cond_11
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    :cond_12
    return-object p3
.end method
