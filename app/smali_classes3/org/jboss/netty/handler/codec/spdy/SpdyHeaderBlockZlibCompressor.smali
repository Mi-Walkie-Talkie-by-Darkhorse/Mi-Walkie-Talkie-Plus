.class Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;
.super Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;
.source "SpdyHeaderBlockZlibCompressor.java"


# instance fields
.field private final compressor:Ljava/util/zip/Deflater;

.field private final out:[B


# direct methods
.method public constructor <init>(II)V
    .locals 3

    const/4 v1, 0x3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    if-le p1, v1, :cond_1

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
    if-ltz p2, :cond_2

    const/16 v0, 0x9

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    if-ge p1, v1, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    goto :goto_0
.end method


# virtual methods
.method public encode(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    array-length v0, v0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    array-length v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->out:[B

    invoke-interface {p1, v1, v4, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method

.method public setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibCompressor;->compressor:Ljava/util/zip/Deflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    return-void
.end method
