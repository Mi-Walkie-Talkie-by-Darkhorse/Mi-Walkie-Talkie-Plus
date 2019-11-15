.class public Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;
.super Ljava/lang/Object;
.source "SpdyFrameEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelDownstreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder$1;
    }
.end annotation


# instance fields
.field private volatile finished:Z

.field private final headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

.field private final version:I


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x6

    const/16 v2, 0xf

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0xf

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    invoke-static {p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->newInstance(IIII)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    return-void
.end method

.method private compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->finished:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    invoke-virtual {v1, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    invoke-virtual {v1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method

.method private static encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v9, 0xffff

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    if-le v1, v9, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header block contains too many headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v4, 0x100

    invoke-static {v2, v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-static {p0, v4, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {p0, v4, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v6

    invoke-static {p0, v4, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    invoke-interface {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v8, v1

    if-lez v8, :cond_8

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    :goto_3
    move v2, v1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    const/4 v1, 0x3

    if-ge p0, v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header value cannot be empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    :cond_5
    if-le v2, v9, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header exceeds allowable length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-lez v2, :cond_2

    invoke-static {p0, v4, v6, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->setLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    goto/16 :goto_1

    :cond_7
    move-object v0, v4

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method private static setLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    goto :goto_0
.end method

.method private static writeLengthField(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x8

    const v11, 0x8000

    const/4 v3, 0x1

    const/4 v6, 0x3

    const/4 v4, 0x0

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder$1;->$SwitchMap$org$jboss$netty$channel$ChannelState:[I

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-nez v0, :cond_2

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->finished:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;->end()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v6

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->isLast()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v7, v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->getStreamId()I

    move-result v1

    const v7, 0x7fffffff

    and-int/2addr v1, v7

    invoke-interface {v5, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v5, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-interface {v5, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v5, v1, v4

    aput-object v6, v1, v3

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    if-eqz v2, :cond_b

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    monitor-enter v5

    :try_start_1
    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    invoke-static {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isLast()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->isUnidirectional()Z

    move-result v3

    if-eqz v3, :cond_24

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    move v3, v2

    :goto_4
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v4, v6, :cond_9

    if-nez v2, :cond_8

    const/16 v2, 0xc

    :goto_5
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v8, 0x14

    invoke-static {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v8, v11

    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getStreamId()I

    move-result v2

    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getAssociatedToStreamId()I

    move-result v2

    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v2, v6, :cond_a

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v1

    if-le v1, v6, :cond_5

    move v1, v6

    :cond_5
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    :goto_6
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v1, v6, :cond_6

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    monitor-exit v5

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0xa

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0xa

    goto :goto_5

    :cond_a
    :try_start_2
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->getPriority()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xd

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :cond_b
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    if-eqz v2, :cond_11

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    monitor-enter v7

    :try_start_3
    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    invoke-static {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v8

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->isLast()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_7
    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v4, v6, :cond_f

    if-nez v2, :cond_e

    move v2, v5

    :goto_8
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    iget v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v5, v11

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->getStreamId()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v1, v6, :cond_c

    invoke-interface {v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    :cond_c
    :goto_9
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    monitor-exit v7

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_d
    move v3, v4

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x6

    goto :goto_8

    :cond_f
    add-int/lit8 v2, v2, 0x4

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    :cond_11
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    if-eqz v2, :cond_12

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v3, v11

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v2, v6}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStreamId()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;->getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v1

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_1

    :cond_12
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    if-eqz v2, :cond_17

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->clearPreviouslyPersistedSettings()Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v3

    :goto_a
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    mul-int/lit8 v8, v7, 0x8

    add-int/lit8 v8, v8, 0x4

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v10, v8, 0x8

    invoke-static {v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v9

    iget v10, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v10, v11

    invoke-interface {v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v9, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v9, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    invoke-interface {v9, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersistValue(I)Z

    move-result v2

    if-eqz v2, :cond_23

    int-to-byte v2, v3

    :goto_c
    invoke-interface {v1, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isPersisted(I)Z

    move-result v8

    if-eqz v8, :cond_13

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    :cond_13
    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v8, v6, :cond_15

    and-int/lit16 v8, v7, 0xff

    invoke-interface {v9, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-interface {v9, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-interface {v9, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v9, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    :goto_d
    invoke-interface {v1, v7}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->getValue(I)I

    move-result v2

    invoke-interface {v9, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    goto :goto_b

    :cond_14
    move v2, v4

    goto :goto_a

    :cond_15
    invoke-interface {v9, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v9, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    goto :goto_d

    :cond_16
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v9, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_1

    :cond_17
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyNoOpFrame;

    if-eqz v2, :cond_18

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v2, v11

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_1

    :cond_18
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    if-eqz v2, :cond_19

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v3, v11

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyPingFrame;->getId()I

    move-result v1

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_1

    :cond_19
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    if-eqz v2, :cond_1c

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v2, v6, :cond_1a

    const/4 v5, 0x4

    :cond_1a
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v3, v5, 0x8

    invoke-static {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v3, v11

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;->getLastGoodStreamId()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-lt v3, v6, :cond_1b

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;->getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v1

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    :cond_1b
    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_1

    :cond_1c
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    if-eqz v2, :cond_21

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->headerBlockCompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;

    monitor-enter v5

    :try_start_5
    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    invoke-static {v2, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->encodeHeaderBlock(ILorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->compressHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v7

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->isLast()Z

    move-result v2

    if-eqz v2, :cond_1e

    :goto_e
    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v4, v6, :cond_20

    if-nez v2, :cond_1f

    const/4 v2, 0x4

    :goto_f
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    add-int/lit8 v8, v2, 0x8

    invoke-static {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    iget v8, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v8, v11

    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/16 v8, 0x8

    invoke-interface {v4, v8}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v4, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeMedium(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->getStreamId()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    if-ge v1, v6, :cond_1d

    invoke-interface {v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    :cond_1d
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    monitor-exit v5

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_1e
    move v3, v4

    goto :goto_e

    :cond_1f
    add-int/lit8 v2, v2, 0x6

    goto :goto_f

    :cond_20
    add-int/lit8 v2, v2, 0x4

    goto :goto_f

    :cond_21
    instance-of v2, v1, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    if-eqz v2, :cond_22

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameEncoder;->version:I

    or-int/2addr v3, v11

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    invoke-interface {v2, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getStreamId()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyWindowUpdateFrame;->getDeltaWindowSize()I

    move-result v1

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeInt(I)V

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_1

    :cond_22
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_1

    :cond_23
    move v2, v4

    goto/16 :goto_c

    :cond_24
    move v3, v2

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
