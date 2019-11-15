.class public Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;
.super Ljava/lang/Object;
.source "MixedFileUpload.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;


# instance fields
.field private final definedSize:J

.field private fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

.field private final limitSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJ)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v2, p6, v2

    if-lez v2, :cond_0

    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    :goto_0
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    return-void

    :cond_0
    new-instance v2, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    goto :goto_0
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    check-cast v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    :cond_0
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->delete()V

    return-void
.end method

.method public get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/File;)V

    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryFileUpload;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v2}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v3}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v4}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v5}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    iget-wide v6, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->definedSize:J

    invoke-direct/range {v0 .. v7}, Lorg/jboss/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContentTransferEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;->setFilename(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedFileUpload;->fileUpload:Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
