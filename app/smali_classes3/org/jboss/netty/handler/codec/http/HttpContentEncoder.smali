.class public abstract Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;
.source "HttpContentEncoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final acceptEncodingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    return-void
.end method

.method private encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->finish()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;->pollAll([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_1
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

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

.method public channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method protected abstract getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-nez v1, :cond_0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "identity"

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0
.end method

.method protected abstract newContentEncoder(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder",
            "<",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, v1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_7

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->acceptEncodingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot send more responses than requests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v5, "identity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    move v2, v4

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->newContentEncoder(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    if-eqz v2, :cond_5

    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->getTargetContentEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    const-string v2, "Content-Length"

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Content-Length"

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    instance-of v0, v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    if-eqz v0, :cond_b

    check-cast v1, Lorg/jboss/netty/handler/codec/http/HttpChunk;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->getContent()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encoder:Lorg/jboss/netty/handler/codec/embedder/EncoderEmbedder;

    if-eqz v2, :cond_a

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->encode(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpContentEncoder;->finishEncode()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lorg/jboss/netty/channel/Channels;->write(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_9
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0

    :cond_b
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendDownstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto/16 :goto_0
.end method
