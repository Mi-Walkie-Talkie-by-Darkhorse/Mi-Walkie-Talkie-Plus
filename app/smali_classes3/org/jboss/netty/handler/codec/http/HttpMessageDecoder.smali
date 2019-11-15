.class public abstract Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "HttpMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;,
        Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:J

.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private contentRead:I

.field private headerSize:I

.field private final maxChunkSize:I

.field private final maxHeaderSize:I

.field private final maxInitialLineLength:I

.field private message:Lorg/jboss/netty/handler/codec/http/HttpMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    const/16 v1, 0x2000

    const/16 v0, 0x1000

    invoke-direct {p0, v0, v1, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;-><init>(III)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 3

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;Z)V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxInitialLineLength must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxHeaderSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxChunkSize must be a positive integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    iput p2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    iput p3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    return-void
.end method

.method private static findEndOfString(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static findNonWhitespace(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static findWhitespace(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static getChunkSize(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private readFixedLengthContent(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v2

    sget-boolean v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    long-to-int v0, v2

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v0

    :cond_1
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->contentRead:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v1, v6}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    aput-object v3, v1, v2

    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    aput-object v2, v1, v6

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_4

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_1
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    long-to-int v1, v2

    invoke-interface {v0, p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    goto :goto_1
.end method

.method private readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v1

    int-to-char v1, v1

    add-int/lit8 v2, v0, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_1
    iget v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    if-lt v0, v2, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP header is larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxHeaderSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    int-to-char v0, v0

    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    :goto_2
    iput v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    move v1, v2

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x0

    iput v6, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->clearHeaders()V

    move-object v2, v1

    move-object v1, v0

    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v1, :cond_3

    if-eq v4, v7, :cond_1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_2

    invoke-interface {v3, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    :goto_1
    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v3, v1, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v6

    const/4 v2, 0x1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    goto :goto_1

    :cond_6
    const-wide/16 v0, -0x1

    invoke-static {v3, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    goto :goto_1

    :cond_7
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    goto :goto_1
.end method

.method private static readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    const/16 v4, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-lt v0, p1, :cond_3

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An HTTP line is larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private readTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;
        }
    .end annotation

    const/4 v7, 0x0

    iput v7, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->headerSize:I

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;

    invoke-direct {v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;-><init>()V

    move-object v2, v0

    :goto_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v1, :cond_3

    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    :cond_0
    invoke-interface {v3, v1}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeader(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_3
    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v7

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Trailer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v3, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method private reset()Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_0
    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    return-object v0
.end method

.method private static skipControlCharacters(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void
.end method

.method private static splitHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v5}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findEndOfString(Ljava/lang/String;)I

    move-result v3

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_2
.end method

.method private static splitInitialLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0, v7}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findWhitespace(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findWhitespace(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0, v3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v4

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->findEndOfString(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v1, 0x2

    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v6, v1

    return-object v6

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected abstract createMessage([Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p4, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static {p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->skipControlCharacters(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_INITIAL:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint()V

    :pswitch_1
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    invoke-static {p3, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->splitInitialLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint()V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->createMessage([Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_HEADER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_2
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->SKIP_CONTROL_CHARS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-string v1, "Transfer-Encoding"

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->isDecodingRequest()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$http$HttpMessageDecoder$State:[I

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_FIXED_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_VARIABLE_LENGTH_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    :cond_8
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->isChunked()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setChunked(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->message:Lorg/jboss/netty/handler/codec/http/HttpMessage;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    aput-object v3, v1, v2

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v0, v1, :cond_a

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    :cond_a
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    aput-object v2, v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readFixedLengthContent(Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v0, v1, :cond_d

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    :cond_d
    int-to-long v2, v0

    cmp-long v1, v2, v4

    if-lez v1, :cond_e

    long-to-int v0, v4

    :cond_e
    new-instance v2, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-lez v1, :cond_f

    int-to-long v0, v0

    sub-long v0, v4, v0

    :goto_1
    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_10

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpChunk;->LAST_CHUNK:Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    aput-object v2, v0, v1

    goto/16 :goto_0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_10
    move-object v0, v2

    goto/16 :goto_0

    :pswitch_9
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxInitialLineLength:I

    invoke-static {p3, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readLine(Lorg/jboss/netty/buffer/ChannelBuffer;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->getChunkSize(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    if-nez v0, :cond_11

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_FOOTER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v0, v1, :cond_12

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT_AS_CHUNKS:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    :goto_2
    :pswitch_a
    sget-boolean v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNKED_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    goto :goto_2

    :cond_13
    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    long-to-int v1, v2

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    goto/16 :goto_0

    :pswitch_b
    sget-boolean v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    long-to-int v2, v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->actualReadableBytes()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_15
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-le v2, v1, :cond_1c

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    :goto_3
    if-le v1, v0, :cond_1b

    :goto_4
    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunk;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    if-le v2, v0, :cond_17

    sub-int v0, v2, v0

    :goto_5
    int-to-long v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->chunkSize:J

    if-nez v0, :cond_16

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_DELIMITER:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    :cond_16
    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/HttpChunk;->isLast()Z

    move-result v0

    if-nez v0, :cond_18

    move-object v0, v1

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_5

    :cond_18
    :pswitch_c
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_19

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_18

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xa

    if-ne v0, v1, :cond_18

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;->READ_CHUNK_SIZE:Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->checkpoint(Ljava/lang/Enum;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_d
    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->readTrailingHeaders(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->maxChunkSize:I

    if-nez v1, :cond_1a

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageDecoder;->reset()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1c
    move v1, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected isContentAlwaysEmpty(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-interface {p1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract isDecodingRequest()Z
.end method
