.class public Lorg/jboss/netty/buffer/SlicedChannelBuffer;
.super Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.source "SlicedChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/WrappedChannelBuffer;


# instance fields
.field private final adjustment:I

.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final length:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 3

    invoke-direct {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;-><init>()V

    if-ltz p2, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p2, p3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid combined index of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput p2, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    iput p3, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->length:I

    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->writerIndex(I)V

    return-void
.end method

.method private checkIndex(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->capacity()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkIndex(II)V
    .locals 3

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "startIndex cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index too big - Bytes needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->length:I

    return v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    new-instance v0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v2, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    iget v3, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->length:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setIndex(II)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 2

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(I)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    return-void
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 2

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public getBytes(I[BII)V
    .locals 2

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    return-void
.end method

.method public getInt(I)I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(I)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setByte(II)V

    return-void
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 2

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public setBytes(I[BII)V
    .locals 2

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->setBytes(I[BII)V

    return-void
.end method

.method public setInt(II)V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setInt(II)V

    return-void
.end method

.method public setLong(IJ)V
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->setLong(IJ)V

    return-void
.end method

.method public setMedium(II)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setMedium(II)V

    return-void
.end method

.method public setShort(II)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->setShort(II)V

    return-void
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    if-nez p2, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v2, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    goto :goto_0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->checkIndex(II)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->adjustment:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/SlicedChannelBuffer;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method
