.class public Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "SpdyFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$1;,
        Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    }
.end annotation


# instance fields
.field private decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private flags:B

.field private final headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

.field private headerSize:I

.field private length:I

.field private final maxChunkSize:I

.field private final maxHeaderSize:I

.field private numHeaders:I

.field private spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

.field private spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

.field private final spdyVersion:I

.field private state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

.field private streamID:I

.field private type:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>(Z)V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxChunkSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxHeaderSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    iput p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    iput p3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->newInstance(I)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    return-void
.end method

.method private decodeHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    iput v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerSize:I

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    if-nez v0, :cond_2

    iput-object v12, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v11, :cond_3

    const/4 v0, 0x2

    :goto_1
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-lt v1, v0, :cond_1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readLengthField()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    if-gez v1, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerSize:I

    :cond_5
    :goto_2
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    if-lez v1, :cond_13

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerSize:I

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readLengthField()I

    move-result v2

    if-gtz v2, :cond_7

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    goto :goto_0

    :cond_7
    add-int/2addr v1, v2

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    if-le v1, v4, :cond_8

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header block exceeds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    goto/16 :goto_0

    :cond_9
    new-array v2, v2, [B

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readLengthField()I

    move-result v5

    if-gez v5, :cond_c

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    goto/16 :goto_0

    :cond_c
    if-nez v5, :cond_d

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v11, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    goto/16 :goto_0

    :cond_d
    add-int v6, v1, v5

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    if-le v6, v1, :cond_e

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header block exceeds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxHeaderSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-direct {p0, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->ensureBytes(I)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->discardReadBytes()V

    goto/16 :goto_0

    :cond_f
    new-array v7, v5, [B

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    move v2, v3

    move v1, v3

    :goto_3
    if-ge v1, v5, :cond_12

    :goto_4
    array-length v8, v7

    if-ge v1, v8, :cond_10

    aget-byte v8, v7, v1

    if-eqz v8, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    array-length v8, v7

    if-ge v1, v8, :cond_11

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_11

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    goto/16 :goto_0

    :cond_11
    new-instance v8, Ljava/lang/String;

    sub-int v9, v1, v2

    const-string v10, "UTF-8"

    invoke-direct {v8, v7, v2, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v2, v4, v8}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->setInvalid()V

    goto/16 :goto_0

    :cond_12
    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->numHeaders:I

    iput v6, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerSize:I

    goto/16 :goto_2

    :cond_13
    iput-object v12, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto/16 :goto_0
.end method

.method private ensureBytes(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-lt v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-lt v1, p1, :cond_2

    move v1, v0

    :goto_1
    if-nez v1, :cond_1

    if-gtz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 2

    const-string v0, "Received invalid control frame"

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "Received invalid SYN_STREAM control frame"

    goto :goto_0

    :pswitch_1
    const-string v0, "Received invalid SYN_REPLY control frame"

    goto :goto_0

    :pswitch_2
    const-string v0, "Received invalid RST_STREAM control frame"

    goto :goto_0

    :pswitch_3
    const-string v0, "Received invalid SETTINGS control frame"

    goto :goto_0

    :pswitch_4
    const-string v0, "Received invalid NOOP control frame"

    goto :goto_0

    :pswitch_5
    const-string v0, "Received invalid PING control frame"

    goto :goto_0

    :pswitch_6
    const-string v0, "Received invalid GOAWAY control frame"

    goto :goto_0

    :pswitch_7
    const-string v0, "Received invalid HEADERS control frame"

    goto :goto_0

    :pswitch_8
    const-string v0, "Received invalid WINDOW_UPDATE control frame"

    goto :goto_0

    :pswitch_9
    const-string v0, "Received invalid CREDENTIAL control frame"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method private isValidControlFrameHeader()Z
    .locals 6

    const/4 v5, 0x3

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v5, :cond_1

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v5, :cond_2

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ge v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-byte v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    if-nez v2, :cond_3

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eq v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_5
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_6
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v5, :cond_4

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v5, :cond_7

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-lt v2, v4, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_8
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private readCommonHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    .locals 5

    const/16 v4, 0x8

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v4, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v1, 0x5

    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    iput-byte v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v2

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eqz v0, :cond_6

    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    and-int/lit16 v0, v0, 0x7fff

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    add-int/lit8 v0, v1, 0x2

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->isValidControlFrameHeader()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->willGenerateControlFrame()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_CONTROL_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_SETTINGS_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eqz v0, :cond_5

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->DISCARD_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    :cond_6
    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readControlFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x4

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {p1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(II)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v2

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyPingFrame;-><init>(I)V

    goto :goto_0

    :pswitch_3
    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    if-ge v3, v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v2

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v4, :cond_4

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    invoke-direct {v0, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(I)V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v3

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;

    invoke-direct {v0, v2, v3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(II)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-static {p1, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {p1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyWindowUpdateFrame;-><init>(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private readHeaderBlockFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x3

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_0

    const/16 v0, 0xc

    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v4

    add-int/lit8 v3, v0, 0x4

    invoke-static {p1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v5

    add-int/lit8 v0, v0, 0x8

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v3, v6, :cond_2

    shr-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_2
    const/16 v3, 0xa

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    add-int/lit8 v3, v3, -0xa

    iput v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v3, v6, :cond_3

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v3, v7, :cond_3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    :cond_3
    new-instance v3, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;

    invoke-direct {v3, v4, v5, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;-><init>(IIB)V

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setLast(Z)V

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :goto_3
    invoke-interface {v3, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;->setUnidirectional(Z)V

    move-object v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :sswitch_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_6

    const/16 v0, 0x8

    :goto_4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    if-ge v4, v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v4

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_8

    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    :cond_8
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_9

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v0, v7, :cond_9

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    :cond_9
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;

    invoke-direct {v0, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySynReplyFrame;-><init>(I)V

    iget-byte v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    :goto_5
    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;->setLast(Z)V

    goto/16 :goto_1

    :cond_a
    move v1, v2

    goto :goto_5

    :sswitch_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_c

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-le v0, v3, :cond_c

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/16 v4, 0x8

    if-ge v0, v4, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v4

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_d

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-eqz v0, :cond_d

    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    :cond_d
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v0, v6, :cond_e

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-ne v0, v7, :cond_e

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p1, v7}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iput v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    :cond_e
    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;

    invoke-direct {v0, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(I)V

    iget-byte v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    :goto_6
    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeadersFrame;->setLast(Z)V

    goto/16 :goto_1

    :cond_f
    move v1, v2

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private readLengthField()I
    .locals 2

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    goto :goto_0
.end method

.method private willGenerateControlFrame()Z
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$spdy$SpdyFrameDecoder$State:[I

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-virtual {v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readCommonHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyVersion:I

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    sget-object v3, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_DATA_FRAME:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    if-nez v2, :cond_3

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v0, "Received invalid data frame"

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    move-object v0, v4

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    invoke-direct {v2, v3}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    iget-byte v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :goto_2
    invoke-interface {v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    :cond_6
    move-object v0, v4

    goto :goto_1

    :pswitch_1
    :try_start_0
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readControlFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    move-object v0, v4

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    if-nez v2, :cond_a

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    if-ge v2, v10, :cond_7

    move-object v0, v4

    goto :goto_1

    :cond_7
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-static {p3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v2

    invoke-interface {p3, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    add-int/lit8 v3, v3, -0x4

    iput v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_8

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    shr-int/lit8 v3, v3, 0x3

    if-eq v3, v2, :cond_9

    :cond_8
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    move-object v0, v4

    goto :goto_1

    :cond_9
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;

    invoke-direct {v2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdySettingsFrame;-><init>()V

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    iget-byte v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    move v2, v0

    :goto_3
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v3, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setClearPreviouslyPersistedSettings(Z)V

    :cond_a
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    shr-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    shr-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v1

    :goto_4
    if-ge v6, v7, :cond_11

    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->version:I

    if-ge v2, v11, :cond_c

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    :goto_5
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    invoke-static {p3, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v8

    invoke-interface {p3, v10}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    if-nez v3, :cond_d

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    move-object v0, v4

    goto/16 :goto_1

    :cond_b
    move v2, v1

    goto :goto_3

    :cond_c
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-static {p3, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->getUnsignedMedium(Lorg/jboss/netty/buffer/ChannelBuffer;I)I

    move-result v3

    invoke-interface {p3, v11}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    goto :goto_5

    :cond_d
    iget-object v5, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v5, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_e

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_f

    move v5, v0

    :goto_6
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    move v2, v0

    :goto_7
    iget-object v9, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    invoke-interface {v9, v3, v8, v5, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;->setValue(IIZZ)V

    :cond_e
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4

    :cond_f
    move v5, v1

    goto :goto_6

    :cond_10
    move v2, v1

    goto :goto_7

    :cond_11
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    mul-int/lit8 v1, v7, 0x8

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_12

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdySettingsFrame:Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;

    goto/16 :goto_1

    :cond_12
    move-object v0, v4

    goto/16 :goto_1

    :pswitch_3
    :try_start_1
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->readHeaderBlockFrame(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_13

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireInvalidControlFrameException(Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    move-object v0, v4

    goto/16 :goto_1

    :cond_13
    :try_start_2
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_HEADER_BLOCK:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_14
    move-object v0, v4

    goto/16 :goto_1

    :pswitch_4
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    :try_start_3
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decodeHeaderBlock(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v1, :cond_1

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto/16 :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decompressed:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {p1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    move-object v0, v4

    goto/16 :goto_1

    :cond_15
    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->spdyHeaderBlock:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    goto/16 :goto_1

    :cond_16
    move-object v0, v4

    goto/16 :goto_1

    :pswitch_5
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    if-nez v2, :cond_17

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->FRAME_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    const-string v0, "Received invalid data frame"

    invoke-static {p1, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->fireProtocolException(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_1

    :cond_17
    iget v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->maxChunkSize:I

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    if-ge v2, v3, :cond_18

    move-object v0, v4

    goto/16 :goto_1

    :cond_18
    new-instance v2, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->streamID:I

    invoke-direct {v2, v4}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(I)V

    invoke-interface {p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget v4, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int v3, v4, v3

    iput v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v3, :cond_19

    iget-byte v3, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->flags:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a

    :goto_8
    invoke-interface {v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)V

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    :cond_19
    move-object v0, v2

    goto/16 :goto_1

    :cond_1a
    move v0, v1

    goto :goto_8

    :pswitch_6
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    sub-int v0, v1, v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->length:I

    if-nez v0, :cond_1b

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;->READ_COMMON_HEADER:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->state:Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder$State;

    :cond_1b
    move-object v0, v4

    goto/16 :goto_1

    :pswitch_7
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    move-object v0, v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->end()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyFrameDecoder;->headerBlockDecompressor:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;->end()V

    throw v0
.end method
