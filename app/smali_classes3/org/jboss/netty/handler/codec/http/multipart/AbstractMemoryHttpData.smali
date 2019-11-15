.class public abstract Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;
.super Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;
.source "AbstractMemoryHttpData.java"


# instance fields
.field private channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private chunkPosition:I

.field protected isRenamed:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    return-void
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_3

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    aput-object v2, v0, v1

    aput-object p1, v0, v6

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_4
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .locals 0

    return-void
.end method

.method public get()[B
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    goto :goto_0
.end method

.method public getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iput v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_2
    if-ge v0, p1, :cond_3

    move p1, v0

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->chunkPosition:I

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not represented by a file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isInMemory()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->isRenamed:Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->isRenamed:Z

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public setContent(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File too big to be loaded in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    long-to-int v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    int-to-long v6, v0

    cmp-long v6, v6, v2

    if-gez v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v5}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lorg/jboss/netty/buffer/ChannelBuffers;->dynamicBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v3

    const/16 v0, 0x4000

    new-array v4, v0, [B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    if-lez v2, :cond_1

    invoke-interface {v3, v4, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    add-int/2addr v0, v2

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_1
    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->definedSize:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->channelBuffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->size:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->completed:Z

    return-void
.end method
