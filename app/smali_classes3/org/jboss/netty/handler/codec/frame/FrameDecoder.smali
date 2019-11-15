.class public abstract Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.super Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;
.source "FrameDecoder.java"

# interfaces
.implements Lorg/jboss/netty/channel/LifeCycleAwareChannelHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private copyThreshold:I

.field private volatile ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field protected cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private maxCumulationBufferComponents:I

.field private unfold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelUpstreamHandler;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    return-void
.end method

.method private callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    if-ne v0, v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode() method must read at least one byte if it returned a frame (caused by: "

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

    :cond_3
    invoke-virtual {p0, p1, p4, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected actualReadableBytes()I
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

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

.method protected appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    sget-boolean v0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    instance-of v0, v1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->numComponents()I

    move-result v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->copy()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

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

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method protected cleanup(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    throw v0
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    return-void
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-object v0
.end method

.method public final getMaxCumulationBufferCapacity()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->copyThreshold:I

    return v0
.end method

.method public final getMaxCumulationBufferComponents()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    return v0
.end method

.method protected internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_0
    return-object v0
.end method

.method public final isUnfold()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    return v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_1

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v1, :cond_2

    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    throw v1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->appendToCumulation(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    :try_start_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->callDecode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, p1, v1}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    throw v0
.end method

.method protected newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Replace cann only be called once the FrameDecoder is added to the ChannelPipeline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1, p2}, Lorg/jboss/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->actualReadableBytes()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {v1, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    throw v0
.end method

.method public final setMaxCumulationBufferCapacity(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCumulationBufferCapacity must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->copyThreshold:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->maxCumulationBufferComponents:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setUnfold(Z)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->unfold:Z

    if-eqz v0, :cond_3

    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p3, [Ljava/lang/Object;

    check-cast p3, [Ljava/lang/Object;

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p3, v0

    invoke-static {p1, v2, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p3, Ljava/lang/Iterable;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/Channels;->fireMessageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    goto :goto_2
.end method

.method protected updateCumulation(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->copyThreshold:I

    if-le v1, v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->newCumulationBuffer(Lorg/jboss/netty/channel/ChannelHandlerContext;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move-object p2, v0

    :goto_0
    return-object p2

    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;->cumulation:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0
.end method
