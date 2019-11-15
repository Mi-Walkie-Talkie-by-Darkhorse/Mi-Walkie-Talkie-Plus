.class public Lorg/jboss/netty/buffer/DynamicChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "DynamicChannelBuffer.java"


# instance fields
.field private buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final endianness:Ljava/nio/ByteOrder;

.field private final factory:Lorg/jboss/netty/buffer/ChannelBufferFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .locals 1

    invoke-static {p1}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "estimatedLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "endianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->factory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    iput-object p1, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->endianness:Ljava/nio/ByteOrder;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    new-instance v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    iget-object v1, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->setIndex(II)V

    return-object v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/buffer/DuplicatedChannelBuffer;

    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/DuplicatedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-object v0
.end method

.method public ensureWritableBytes(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->writableBytes()I

    move-result v0

    if-gt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->writerIndex()I

    move-result v1

    add-int/2addr v1, p1

    :cond_1
    if-ge v0, v1, :cond_3

    shl-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum size of 2gb exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->capacity()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->writerIndex()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    iput-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->factory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    return-object v0
.end method

.method public getByte(I)B
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    return-void
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public getBytes(I[BII)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    return-void
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->endianness:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setByte(II)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public setBytes(I[BII)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    return-void
.end method

.method public setInt(II)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setLong(IJ)V

    return-void
.end method

.method public setMedium(II)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setMedium(II)V

    return-void
.end method

.method public setShort(II)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;

    invoke-direct {v0, p0, p2}, Lorg/jboss/netty/buffer/TruncatedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public writeByte(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeByte(I)V

    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 0

    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes([BII)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeLong(J)V

    return-void
.end method

.method public writeMedium(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeMedium(I)V

    return-void
.end method

.method public writeShort(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeShort(I)V

    return-void
.end method

.method public writeZero(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;->ensureWritableBytes(I)V

    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeZero(I)V

    return-void
.end method
