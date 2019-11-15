.class public abstract Lorg/jboss/netty/buffer/AbstractChannelBuffer;
.super Ljava/lang/Object;
.source "AbstractChannelBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBuffer;


# instance fields
.field private markedReaderIndex:I

.field private markedWriterIndex:I

.field private readerIndex:I

.field private writerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesBefore(B)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IB)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 1

    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IIB)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, p1

    goto :goto_0
.end method

.method public bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, p1

    goto :goto_0
.end method

.method public bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method public bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method protected checkReadableBytes(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough readable bytes - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 1

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->compare(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public copy()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    iput v3, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    goto :goto_0
.end method

.method public ensureWritableBytes(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writable bytes exceeded: Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->equals(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/buffer/ChannelBuffer;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    return-void
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 3

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read: Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    return-void
.end method

.method public getBytes(I[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(I[BII)V

    return-void
.end method

.method public getChar(I)C
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getMedium(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedShort(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lorg/jboss/netty/buffer/ChannelBuffers;->hashCode(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IIB)I

    move-result v0

    return v0
.end method

.method public indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->indexOf(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    return v0
.end method

.method public markReaderIndex()V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    return-void
.end method

.method public markWriterIndex()V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    return-void
.end method

.method public readByte()B
    .locals 3

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Readable byte limit exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return v0
.end method

.method public readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    if-nez p1, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-interface {v0, p0, v1, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    goto :goto_0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/io/OutputStream;I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v0

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read: Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex(I)V

    return-void
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-void
.end method

.method public readBytes([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readBytes([BII)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 1

    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getBytes(I[BII)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-void
.end method

.method public readChar()C
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getInt(I)I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return v0
.end method

.method public readLong()J
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-wide v0
.end method

.method public readMedium()I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readUnsignedMedium()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public readShort()S
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getShort(I)S

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return v0
.end method

.method public readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-object v0
.end method

.method public readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()S
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->checkReadableBytes(I)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public readable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readableBytes()I
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readerIndex()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return v0
.end method

.method public readerIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-void
.end method

.method public resetReaderIndex()V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedReaderIndex:I

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex(I)V

    return-void
.end method

.method public resetWriterIndex()V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->markedWriterIndex:I

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V

    return-void
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 3

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to write: Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void
.end method

.method public setBytes(I[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(I[BII)V

    return-void
.end method

.method public setChar(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setShort(II)V

    return-void
.end method

.method public setDouble(ID)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    return-void
.end method

.method public setFloat(IF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    return-void
.end method

.method public setIndex(II)V
    .locals 3

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid writerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iput p2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public setZero(II)V
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be 0 or greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    ushr-int/lit8 v1, p2, 0x3

    and-int/lit8 v0, p2, 0x7

    move v2, v1

    move v1, p1

    :goto_1
    if-lez v2, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    add-int/lit8 p1, v1, 0x8

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, p1

    goto :goto_1

    :cond_3
    if-ne v0, v6, :cond_4

    invoke-virtual {p0, v1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    goto :goto_0

    :cond_4
    if-ge v0, v6, :cond_5

    :goto_2
    if-lez v0, :cond_0

    invoke-virtual {p0, v1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, -0x4

    :goto_3
    if-lez v0, :cond_0

    invoke-virtual {p0, v1, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex(I)V

    sub-int v0, v1, v0

    return v0
.end method

.method public skipBytes(I)V
    .locals 4

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    if-le v0, v1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Readable bytes exceeded - Need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", maximum is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    return-void
.end method

.method public slice()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ridx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0, p4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/jboss/netty/buffer/ChannelBuffers;->decodeString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writable()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writableBytes()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writableBytes()I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeByte(I)V
    .locals 2

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setByte(II)V

    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    :cond_0
    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    :cond_0
    return v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILjava/nio/ByteBuffer;)V

    iget v1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 3

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to write - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeBytes([BII)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setBytes(I[BII)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public writeChar(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeShort(I)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setInt(II)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setLong(IJ)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public writeMedium(I)V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setMedium(II)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public writeShort(I)V
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->setShort(II)V

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method

.method public writeZero(I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be 0 or greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    ushr-int/lit8 v1, p1, 0x3

    and-int/lit8 v0, p1, 0x7

    :goto_1
    if-lez v1, :cond_3

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeLong(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-ne v0, v5, :cond_4

    invoke-virtual {p0, v4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    goto :goto_0

    :cond_4
    if-ge v0, v5, :cond_5

    :goto_2
    if-lez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeByte(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeInt(I)V

    add-int/lit8 v0, v0, -0x4

    :goto_3
    if-lez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writeByte(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public writerIndex()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return v0
.end method

.method public writerIndex(I)V
    .locals 3

    iget v0, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid readerIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->readerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/jboss/netty/buffer/AbstractChannelBuffer;->writerIndex:I

    return-void
.end method
