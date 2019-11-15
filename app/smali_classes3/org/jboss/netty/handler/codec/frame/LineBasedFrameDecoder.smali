.class public Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "LineBasedFrameDecoder.java"


# instance fields
.field private discardedBytes:I

.field private discarding:Z

.field private final failFast:Z

.field private final maxLength:I

.field private final stripDelimiter:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->maxLength:I

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->failFast:Z

    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->stripDelimiter:Z

    return-void
.end method

.method private fail(Lorg/jboss/netty/channel/ChannelHandlerContext;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void
.end method

.method private fail(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exceeds the allowed maximum ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->maxLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static findEndOfLine(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 5

    const/16 v4, 0xa

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0xd

    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p3}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->findEndOfLine(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v3

    iget-boolean v4, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discarding:Z

    if-nez v4, :cond_5

    if-ltz v3, :cond_3

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    sub-int v4, v3, v4

    invoke-interface {p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    if-ne v5, v7, :cond_0

    :goto_0
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->maxLength:I

    if-le v4, v1, :cond_1

    add-int/2addr v0, v3

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    invoke-direct {p0, p1, v4}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;I)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->stripDelimiter:Z

    if-eqz v1, :cond_2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {p0, p3, v1, v4}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_2
    add-int/2addr v0, v4

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int v2, v4, v0

    invoke-virtual {p0, p3, v1, v2}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_2

    :catchall_0
    move-exception v1

    add-int/2addr v0, v4

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    throw v1

    :cond_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->maxLength:I

    if-le v0, v3, :cond_4

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discardedBytes:I

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discarding:Z

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->failFast:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discardedBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    if-ltz v3, :cond_8

    iget v4, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discardedBytes:I

    add-int/2addr v4, v3

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {p3, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    if-ne v5, v7, :cond_7

    :goto_3
    add-int/2addr v0, v3

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    iput v6, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discardedBytes:I

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discarding:Z

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->failFast:Z

    if-nez v0, :cond_6

    invoke-direct {p0, p1, v4}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;I)V

    :cond_6
    :goto_4
    move-object v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->discardedBytes:I

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_4
.end method
