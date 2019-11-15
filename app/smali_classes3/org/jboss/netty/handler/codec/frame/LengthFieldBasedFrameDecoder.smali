.class public Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "LengthFieldBasedFrameDecoder.java"


# instance fields
.field private bytesToDiscard:J

.field private discardingTooLongFrame:Z

.field private final failFast:Z

.field private final initialBytesToStrip:I

.field private final lengthAdjustment:I

.field private final lengthFieldEndOffset:I

.field private final lengthFieldLength:I

.field private final lengthFieldOffset:I

.field private final maxFrameLength:I

.field private tooLongFrameLength:J


# direct methods
.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFrameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lengthFieldOffset must be a non-negative integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialBytesToStrip must be a non-negative integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lengthFieldLength must be either 1, 2, 3, 4, or 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sub-int v0, p1, p3

    if-le p2, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFrameLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "must be equal to or greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lengthFieldOffset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lengthFieldLength ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    iput p2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    iput p3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    iput p4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    add-int v0, p2, p3

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    iput p5, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    iput-boolean p6, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    return-void
.end method

.method private fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusted frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - discarded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusted frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - discarding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private failIfNecessary(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failFast:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    goto :goto_0
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failIfNecessary(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    if-lt v1, v2, :cond_0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldLength:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v1

    int-to-long v2, v1

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "negative pre-adjustment length field: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedShort(I)I

    move-result v1

    int-to-long v2, v1

    goto :goto_1

    :pswitch_3
    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v1

    int-to-long v2, v1

    goto :goto_1

    :pswitch_4
    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v2

    goto :goto_1

    :pswitch_5
    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthAdjustment:I

    iget v4, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    add-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adjusted frame length ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is less "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "than lengthFieldEndOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->lengthFieldEndOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->maxFrameLength:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->discardingTooLongFrame:Z

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->tooLongFrameLength:J

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->bytesToDiscard:J

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    invoke-direct {p0, p1, v6}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->failIfNecessary(Lorg/jboss/netty/channel/ChannelHandlerContext;Z)V

    goto/16 :goto_0

    :cond_4
    long-to-int v1, v2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    if-lt v4, v1, :cond_0

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    if-le v0, v1, :cond_5

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adjusted frame length ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is less "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "than initialBytesToStrip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->initialBytesToStrip:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, p3, v2, v1}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
