.class public Lorg/jboss/netty/buffer/ChannelBufferInputStream;
.super Ljava/io/InputStream;
.source "ChannelBufferInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private final buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final endIndex:I

.field private final lineBuf:Ljava/lang/StringBuilder;

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-le p2, v0, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to be read - Needs "

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

    :cond_2
    iput-object p1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    iget v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->endIndex:I

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    return-void
.end method

.method private checkAvailable(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "fieldSize cannot be a negative number"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldSize is too long! Length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->endIndex:I

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, p1, p2, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->read()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes()I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->lineBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->checkAvailable(I)V

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->skipBytes(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public skipBytes(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->available()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/buffer/ChannelBufferInputStream;->buffer:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    return v0
.end method
