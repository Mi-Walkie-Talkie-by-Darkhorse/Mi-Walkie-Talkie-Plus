.class public Lorg/jboss/netty/handler/stream/ChunkedStream;
.super Ljava/lang/Object;
.source "ChunkedStream.java"

# interfaces
.implements Lorg/jboss/netty/handler/stream/ChunkedInput;


# static fields
.field static final DEFAULT_CHUNK_SIZE:I = 0x2000


# instance fields
.field private final chunkSize:I

.field private final in:Ljava/io/PushbackInputStream;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/stream/ChunkedStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
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
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/io/PushbackInputStream;

    iput-object p1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    :goto_0
    iput p2, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    return-void

    :cond_2
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public getTransferredBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    return-wide v0
.end method

.method public hasNextChunk()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEndOfInput()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedStream;->hasNextChunk()Z

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/stream/ChunkedStream;->hasNextChunk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    :goto_1
    new-array v3, v0, [B

    move v1, v2

    :cond_1
    iget-object v4, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    sub-int v5, v0, v1

    invoke-virtual {v4, v3, v1, v5}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_3

    :goto_2
    invoke-static {v3, v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->chunkSize:I

    iget-object v1, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_3
    add-int/2addr v1, v4

    iget-wide v6, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/jboss/netty/handler/stream/ChunkedStream;->offset:J

    if-ne v1, v0, :cond_1

    goto :goto_2
.end method
