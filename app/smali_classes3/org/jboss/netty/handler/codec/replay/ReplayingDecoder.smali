.class public abstract Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "ReplayingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lorg/jboss/netty/handler/codec/frame/FrameDecoder;"
    }
.end annotation


# instance fields
.field private checkpoint:I

.field private needsCleanup:Z

.field private final replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

.field private state:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Enum;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>(Z)V

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;-><init>(Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    return-void
.end method

.method private callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iput v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    if-ne v2, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "null cannot be returned if no data is consumed and state didn\'t change."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    iget v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-ltz v3, :cond_1

    invoke-interface {p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    if-ne v2, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode() method must consume at least one byte if it returned a decoded message (caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0, p1, p5, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkpoint()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    goto :goto_0
.end method

.method protected checkpoint(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->setState(Ljava/lang/Enum;)Ljava/lang/Enum;

    return-void
.end method

.method protected cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->needsCleanup:Z
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->needsCleanup:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminate()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    :cond_2
    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jboss/netty/handler/codec/replay/ReplayError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0
.end method

.method protected final decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/ChannelHandlerContext;",
            "Lorg/jboss/netty/channel/Channel;",
            "Lorg/jboss/netty/buffer/ChannelBuffer;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getState()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    return-object v0
.end method

.method protected internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v3

    instance-of v0, v3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v3, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->needsCleanup:Z

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_3

    iput-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v8

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v9

    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->getMaxCumulationBufferCapacity()I

    move-result v0

    if-le v1, v0, :cond_b

    :goto_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-lez v0, :cond_c

    iget v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    sub-int/2addr v0, v8

    sub-int v0, v9, v0

    if-eqz v6, :cond_d

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v1, v3, v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0

    :cond_2
    iput-object v10, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_2
    throw v0

    :cond_3
    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    :try_start_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->replayable:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1, v3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    throw v0

    :catchall_1
    move-exception v0

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->getMaxCumulationBufferCapacity()I

    move-result v1

    if-le v2, v1, :cond_4

    move v1, v6

    :goto_3
    iget v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-lez v2, :cond_5

    iget v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    sub-int/2addr v2, v8

    sub-int v2, v9, v2

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v4, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v1, v3, v4, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_2

    :cond_4
    move v1, v7

    goto :goto_3

    :cond_5
    iget v2, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1, v9}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v3, v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_2

    :cond_6
    iget v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v3, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_9

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_2

    :cond_8
    invoke-interface {v3, v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto/16 :goto_2

    :cond_9
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto/16 :goto_2

    :cond_a
    iput-object v10, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto/16 :goto_0

    :cond_b
    move v6, v7

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    if-nez v0, :cond_e

    if-eqz v6, :cond_f

    invoke-virtual {p0, p1, v9}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v3, v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto/16 :goto_0

    :cond_d
    iget v1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->checkpoint:I

    invoke-interface {v3, v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto/16 :goto_0

    :cond_e
    if-eqz v6, :cond_10

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto/16 :goto_0

    :cond_f
    invoke-interface {v3, v8, v9}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto/16 :goto_0

    :cond_10
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto/16 :goto_0
.end method

.method protected setState(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->state:Ljava/lang/Enum;

    return-object v0
.end method
