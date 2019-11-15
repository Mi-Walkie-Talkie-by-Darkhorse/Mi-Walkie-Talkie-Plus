.class public Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "DelimiterBasedFrameDecoder.java"


# instance fields
.field private final delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

.field private discardingTooLongFrame:Z

.field private final failFast:Z

.field private final lineBasedDecoder:Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;

.field private final maxFrameLength:I

.field private final stripDelimiter:Z

.field private tooLongFrameLength:I


# direct methods
.method public constructor <init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZLorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(IZLorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZZLorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(IZZLorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    invoke-interface {p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    invoke-interface {p4, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public varargs constructor <init>(IZZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    invoke-static {p1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateMaxFrameLength(I)V

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delimiters"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p4

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty delimiters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p4}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->isLineBased([Lorg/jboss/netty/buffer/ChannelBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->isSubclass()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;

    invoke-direct {v0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;-><init>(IZZ)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->lineBasedDecoder:Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;

    iput-object v5, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->failFast:Z

    return-void

    :cond_2
    array-length v0, p4

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v0, 0x0

    :goto_1
    array-length v1, p4

    if-ge v0, v1, :cond_3

    aget-object v1, p4, v0

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v3

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object v5, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->lineBasedDecoder:Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;

    goto :goto_0
.end method

.method public varargs constructor <init>(IZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public varargs constructor <init>(I[Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;-><init>(IZ[Lorg/jboss/netty/buffer/ChannelBuffer;)V

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

    const-string v3, "frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

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

    const-string v3, "frame length exceeds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

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

.method private static indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 6

    const/4 v3, -0x1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    :goto_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x0

    move v2, v0

    :goto_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v4

    invoke-interface {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v4

    if-ne v2, v4, :cond_2

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private static isLineBased([Lorg/jboss/netty/buffer/ChannelBuffer;)Z
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v0, p0

    if-eq v0, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    aget-object v1, p0, v3

    aget-object v0, p0, v2

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_1

    aget-object v1, p0, v2

    aget-object v0, p0, v3

    :cond_1
    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    if-ne v1, v7, :cond_2

    invoke-interface {v0, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private isSubclass()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateDelimiter(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delimiter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static validateMaxFrameLength(I)V
    .locals 3

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxFrameLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->lineBasedDecoder:Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->lineBasedDecoder:Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/LineBasedFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v3, 0x7fffffff

    iget-object v7, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->delimiters:[Lorg/jboss/netty/buffer/ChannelBuffer;

    array-length v8, v7

    move v5, v6

    move-object v1, v4

    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v0, v7, v5

    invoke-static {p3, v0}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v2

    if-ltz v2, :cond_9

    if-ge v2, v3, :cond_9

    move v1, v2

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-eqz v0, :cond_3

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    add-int v0, v3, v1

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    iput v6, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    iget-boolean v1, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->failFast:Z

    if-nez v1, :cond_2

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    :cond_2
    move-object v0, v4

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v3, v0, :cond_4

    add-int v0, v3, v1

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    int-to-long v0, v3

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    move-object v0, v4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    if-eqz v0, :cond_5

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p3, v0, v3}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_3
    add-int/2addr v1, v3

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    goto :goto_0

    :cond_5
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int v2, v3, v1

    invoke-virtual {p0, p3, v0, v2}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-nez v0, :cond_8

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v0, v1, :cond_7

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->failFast:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->fail(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    :cond_7
    :goto_4
    move-object v0, v4

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    goto :goto_4

    :cond_9
    move-object v0, v1

    move v1, v3

    goto/16 :goto_2
.end method
