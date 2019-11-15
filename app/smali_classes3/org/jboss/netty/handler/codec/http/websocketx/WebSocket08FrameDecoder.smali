.class public Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "WebSocket08FrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$1;,
        Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final OPCODE_BINARY:B = 0x2t

.field private static final OPCODE_CLOSE:B = 0x8t

.field private static final OPCODE_CONT:B = 0x0t

.field private static final OPCODE_PING:B = 0x9t

.field private static final OPCODE_PONG:B = 0xat

.field private static final OPCODE_TEXT:B = 0x1t

.field private static final logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field private final allowExtensions:Z

.field private fragmentedFramesCount:I

.field private fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

.field private frameFinalFlag:Z

.field private frameOpcode:I

.field private framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private framePayloadBytesRead:I

.field private framePayloadLength:J

.field private frameRsv:I

.field private final maskedPayload:Z

.field private maskingKey:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final maxFramePayloadLength:J

.field private receivedClosingHandshake:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;-><init>(ZZJ)V

    return-void
.end method

.method public constructor <init>(ZZJ)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->FRAME_START:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->allowExtensions:Z

    iput-wide p3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maxFramePayloadLength:J

    return-void
.end method

.method private checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;-><init>([B)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-virtual {v0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->write([B)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "invalid UTF-8 bytes"

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->CORRUPT:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/channel/ChannelFutureListener;->CLOSE:Lorg/jboss/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->addListener(Lorg/jboss/netty/channel/ChannelFutureListener;)V

    :cond_0
    new-instance v0, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    invoke-direct {v0, p2}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toFrameLength(J)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, p0

    return v0
.end method

.method private unmask(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 5

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:Lorg/jboss/netty/buffer/ChannelBuffer;

    rem-int/lit8 v4, v0, 0x4

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v3

    xor-int/2addr v2, v3

    invoke-interface {p1, v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkCloseFrameBody(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "Invalid close frame body"

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v1

    if-ltz v1, :cond_3

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_5

    :cond_3
    const/16 v2, 0x3ec

    if-lt v1, v2, :cond_4

    const/16 v2, 0x3ee

    if-le v1, v2, :cond_5

    :cond_4
    const/16 v2, 0x3f4

    if-lt v1, v2, :cond_6

    const/16 v2, 0xbb7

    if-gt v1, v2, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid close frame status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    :cond_6
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {p2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    :try_start_0
    new-instance v2, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;-><init>([B)V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Invalid close frame reason text. Invalid UTF-8 bytes"

    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v9, 0x8

    const/16 v8, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    :goto_0
    return-object v3

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$websocketx$WebSocket08FrameDecoder$State:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    and-int/lit8 v0, v4, 0x70

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    and-int/lit8 v0, v4, 0xf

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding WebSocket Frame opCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    and-int/lit8 v4, v4, 0x7f

    iget v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->allowExtensions:Z

    if-nez v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSV != 0 and no extension negotiated, RSV:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-boolean v5, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    if-eqz v5, :cond_5

    if-nez v0, :cond_5

    const-string v0, "unmasked client to server frame"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v5, 0x7

    if-le v0, v5, :cond_9

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-nez v0, :cond_6

    const-string v0, "fragmented control frame"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x7d

    if-le v4, v0, :cond_7

    const-string v0, "control frame with payload length > 125 octets"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v0, v9, :cond_8

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v0, v8, :cond_8

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/16 v5, 0xa

    if-eq v0, v5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "control frame using reserved opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v0, v9, :cond_c

    if-ne v4, v1, :cond_c

    const-string v0, "received close control frame with payload len 1"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v0, v1, :cond_a

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data frame using reserved opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-nez v0, :cond_b

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-nez v0, :cond_b

    const-string v0, "received continuation data frame outside fragmented message"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v0, v8, :cond_c

    const-string v0, "received non-continuation data frame while inside fragmented message"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x7e

    if-ne v4, v0, :cond_d

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    const-wide/16 v6, 0x7e

    cmp-long v0, v4, v6

    if-gez v0, :cond_f

    const-string v0, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x7f

    if-ne v4, v0, :cond_e

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    const-wide/32 v6, 0x10000

    cmp-long v0, v4, v6

    if-gez v0, :cond_f

    const-string v0, "invalid data frame length (not using minimal length encoding)"

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    int-to-long v4, v4

    iput-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    :cond_f
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maxFramePayloadLength:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max frame length of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maxFramePayloadLength:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been exceeded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->protocolViolation(Lorg/jboss/netty/channel/Channel;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v0}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding WebSocket Frame length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_11
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->MASKING_KEY:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskingKey:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_12
    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->PAYLOAD:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_2
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->actualReadableBytes()I

    move-result v0

    iget v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    add-int/2addr v4, v0

    int-to-long v4, v4

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_14

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_3
    sget-object v4, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->FRAME_START:Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {p0, v4}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkpoint(Ljava/lang/Enum;)V

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v4, :cond_17

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_4
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->maskedPayload:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->unmask(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :cond_13
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v0, v8, :cond_18

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v3, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/PingWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_14
    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_16

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v2, :cond_15

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v2

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    invoke-static {v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->toFrameLength(J)I

    move-result v4

    invoke-interface {v2, v4}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_15
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    goto/16 :goto_0

    :cond_16
    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_23

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadLength:J

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayloadBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->toFrameLength(J)I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_3

    :cond_17
    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_4

    :cond_18
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/16 v4, 0xa

    if-ne v0, v4, :cond_19

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v3, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_19
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v0, v9, :cond_1a

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkCloseFrameBody(Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->receivedClosingHandshake:Z

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v3, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_1a
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v0, v8, :cond_1c

    iput v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    if-eqz v0, :cond_1c

    :cond_1b
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    move-object v3, v0

    :cond_1c
    :goto_5
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v0, v1, :cond_20

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v3, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/TextWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_1d
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    if-nez v0, :cond_1f

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V

    :cond_1e
    :goto_6
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesCount:I

    goto :goto_5

    :cond_1f
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->fragmentedFramesText:Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->checkUTF8String(Lorg/jboss/netty/channel/Channel;[B)V

    goto :goto_6

    :cond_20
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    new-instance v3, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v3, v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_21
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    if-nez v0, :cond_22

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameFinalFlag:Z

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameRsv:I

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->framePayload:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_0

    :cond_22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot decode web socket frame with opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;->frameOpcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    goto/16 :goto_0

    :cond_23
    move-object v0, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
