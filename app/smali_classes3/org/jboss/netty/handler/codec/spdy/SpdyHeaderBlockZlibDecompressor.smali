.class Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;
.super Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;
.source "SpdyHeaderBlockZlibDecompressor.java"


# instance fields
.field private final decompressor:Ljava/util/zip/Inflater;

.field private final out:[B

.field private final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockDecompressor;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

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
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->version:I

    return-void
.end method


# virtual methods
.method public decode(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->version:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->setDictionary([B)V

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->out:[B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    return v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->setDictionary([B)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;

    const-string v2, "Received invalid header block"

    invoke-direct {v1, v2, v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-void
.end method

.method public setInput(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlockZlibDecompressor;->decompressor:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    return-void
.end method
