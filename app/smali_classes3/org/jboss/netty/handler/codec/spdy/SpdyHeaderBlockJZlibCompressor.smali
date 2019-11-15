.class Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;
.super Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;
.source "SpdyHeaderBlockJZlibCompressor.java"


# instance fields
.field private final z:Lorg/jboss/netty/util/internal/jzlib/ZStream;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4

    const/4 v2, 0x3

    const/16 v1, 0x9

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockCompressor;-><init>()V

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_1

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

    if-le p2, v1, :cond_3

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
    if-lt p3, v1, :cond_4

    const/16 v0, 0xf

    if-le p3, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x1

    if-lt p4, v0, :cond_6

    if-le p4, v1, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/JZlib;->W_ZLIB:Ljava/lang/Enum;

    invoke-virtual {v0, p2, p3, p4, v1}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateInit(IIILjava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to initialize an SPDY header block deflater: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-ge p1, v2, :cond_9

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateSetDictionary([BI)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_a

    new-instance v1, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set the SPDY dictionary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateSetDictionary([BI)I

    move-result v0

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public encode(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    array-length v0, v0

    int-to-double v0, v0

    const-wide v2, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xc

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v2, 0x0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v2, v0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_out:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflate(I)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/compression/CompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compression failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/compression/CompressionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v1, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iget v2, v2, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out_index:I

    invoke-interface {p1, v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v4, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    return-void
.end method

.method public end()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/jzlib/ZStream;->deflateEnd()I

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_out:[B

    return-void
.end method

.method public setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    iput-object v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in:[B

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    const/4 v2, 0x0

    iput v2, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->next_in_index:I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockJZlibCompressor;->z:Lorg/jboss/netty/util/internal/jzlib/ZStream;

    array-length v0, v0

    iput v0, v1, Lorg/jboss/netty/util/internal/jzlib/ZStream;->avail_in:I

    return-void
.end method
