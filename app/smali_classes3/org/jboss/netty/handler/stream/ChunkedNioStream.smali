.class public Lorg/jboss/netty/handler/stream/ChunkedNioStream;
.super Ljava/lang/Object;
.source "ChunkedNioStream.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final chunkSize:I

.field private final in:Ljava/nio/channels/ReadableByteChannel;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedNioStream;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chunkSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    iput p2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    return-void
.end method

.method public getTransferredBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    return-wide v0
.end method

.method public hasNextChunk()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v3, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isEndOfInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->hasNextChunk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextChunk()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->hasNextChunk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gez v1, :cond_2

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->offset:J

    iget v1, p0, Lorg/jboss/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method
