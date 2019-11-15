.class public Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "HttpChunkAggregator.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field private static final CONTINUE:Lorg/jboss/netty/buffer/ChannelBuffer;

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

.field private final maxContentLength:I

.field private maxCumulationBufferComponents:I

.field private tooLongFrameFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HTTP/1.1 100 Continue\r\n\r\n"

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->CONTINUE:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxContentLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    return-void
.end method


# virtual methods
.method public afterAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->numComponents()I

    move-result v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    new-array v2, v5, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->decompose(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    new-array v2, v5, [Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final getMaxCumulationBufferComponents()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    return v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    iput-boolean v3, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->tooLongFrameFound:Z

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->CONTINUE:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->removeTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    invoke-interface {v0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v1, :cond_8

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->tooLongFrameFound:Z

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    iget v4, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v5

    invoke-interface {v5}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->tooLongFrameFound:Z

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP content length exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxContentLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v6, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->currentMessage:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    if-eqz v1, :cond_7

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string v0, "Content-Length"

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCumulationBufferComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpChunkAggregator;->maxCumulationBufferComponents:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
