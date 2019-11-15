.class public abstract Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "HttpMessageEncoder.java"


# static fields
.field private static final CRLF:[B

.field private static final LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;


# instance fields
.field private volatile transferEncodingChunked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->CRLF:[B

    const-string v0, "0\r\n\r\n"

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    return-void
.end method

.method private static encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    const/16 v0, 0x3a

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    const/16 v0, 0x20

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    const-string v0, "ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    const/16 v0, 0xd

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    return-void
.end method

.method private static encodeHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_0
    return-void
.end method

.method private static encodeTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeader(Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_0
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

    const/4 v7, 0x2

    const/16 v5, 0xd

    const/16 v4, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_6

    check-cast p3, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isContentLengthSet(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->transferEncodingChunked:Z

    invoke-static {p3}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->removeTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    move v0, v1

    :goto_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v3

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    invoke-static {v3, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    invoke-interface {v3, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v5

    if-nez v5, :cond_4

    move-object p3, v3

    :cond_0
    :goto_1
    return-object p3

    :cond_1
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Transfer-Encoding"

    const-string v3, "chunked"

    invoke-interface {p3, v0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->transferEncodingChunked:Z

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->transferEncodingChunked:Z

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpMessage.content must be empty if Transfer-Encoding is chunked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-array v0, v7, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    goto :goto_1

    :cond_6
    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v0, :cond_0

    check-cast p3, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->transferEncodingChunked:Z

    if-eqz v0, :cond_9

    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->transferEncodingChunked:Z

    instance-of v0, p3, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer(Lorg/jboss/netty/buffer/ChannelBufferFactory;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    const/16 v1, 0x30

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    check-cast p3, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    invoke-static {v0, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->encodeTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;)V

    invoke-interface {v0, v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {v0, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    move-object p3, v0

    goto :goto_1

    :cond_7
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->LAST_CHUNK:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    goto :goto_1

    :cond_8
    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->CRLF:[B

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {v0, v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;->CRLF:[B

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    goto/16 :goto_1

    :cond_9
    invoke-interface {p3}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    goto/16 :goto_1
.end method

.method protected abstract encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
