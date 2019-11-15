.class public abstract Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;
.super Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;
.source "AbstractDiskHttpData.java"


# instance fields
.field protected file:Ljava/io/File;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private isRenamed:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    return-void
.end method

.method private static readFrom(Ljava/io/File;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File too big to be loaded in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    long-to-int v0, v2

    new-array v4, v0, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    int-to-long v6, v0

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    return-object v4
.end method

.method private tempFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getDiskFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getBaseDirectory()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->deleteOnExit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPostfix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getPrefix()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getBaseDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    :cond_2
    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    :cond_4
    if-eqz p2, :cond_8

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    :cond_5
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    :cond_6
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    :cond_7
    return-void

    :cond_8
    if-nez p1, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method protected abstract deleteOnExit()Z
.end method

.method public get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getBaseDirectory()Ljava/lang/String;
.end method

.method public getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->fileChannel:Ljava/nio/channels/FileChannel;

    :cond_3
    if-nez v1, :cond_5

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_4
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v3}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    goto :goto_0
.end method

.method protected abstract getDiskFilename()Ljava/lang/String;
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    return-object v0
.end method

.method protected abstract getPostfix()Ljava/lang/String;
.end method

.method protected abstract getPrefix()Ljava/lang/String;
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->readFrom(Ljava/io/File;)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public isInMemory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const/16 v0, 0x2004

    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    int-to-long v4, v0

    iget-wide v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    sub-long/2addr v8, v2

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    sub-long/2addr v4, v2

    long-to-int v0, v4

    :cond_1
    int-to-long v4, v0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    iput-boolean v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    move v0, v7

    :goto_1
    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    iput-boolean v7, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    move v0, v7

    goto :goto_1
.end method

.method public setContent(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->delete()V

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    iput-boolean v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->delete()V

    :cond_1
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/16 v0, 0x4000

    new-array v4, v0, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    if-lez v2, :cond_2

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->isRenamed:Z

    iput-boolean v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->definedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->tempFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :goto_0
    return-void

    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->file:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    move v0, v1

    :goto_1
    int-to-long v6, v0

    iget-wide v8, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->size:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v4

    add-int/2addr v0, v4

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    invoke-virtual {v3, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->completed:Z

    goto :goto_0
.end method
