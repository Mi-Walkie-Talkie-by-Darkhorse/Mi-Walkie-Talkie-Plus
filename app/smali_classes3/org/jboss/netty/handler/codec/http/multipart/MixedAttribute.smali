.class public Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;
.super Ljava/lang/Object;
.source "MixedAttribute.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/Attribute;


# instance fields
.field private attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

.field private final limitSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_2
    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v1, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    :cond_0
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->delete()V

    return-void
.end method

.method public get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->get()[B

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChannelBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getCharset()Ljava/nio/charset/Charset;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getChunk(I)Lorg/jboss/netty/buffer/ChannelBuffer;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getString()Ljava/lang/String;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->length()J

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setContent(Ljava/io/File;)V

    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
