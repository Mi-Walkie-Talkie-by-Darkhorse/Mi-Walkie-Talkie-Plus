.class Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;
.super Ljava/lang/Object;
.source "ReplayingDecoderBuffer.java"

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBuffer;


# static fields
.field private static final REPLAY:Ljava/lang/Error;


# instance fields
.field private final parent:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
            "<*>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/ReplayError;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayError;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->parent:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    return-void
.end method

.method private buf()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->parent:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method private checkIndex(II)V
    .locals 2

    add-int v0, p1, p2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return-void
.end method

.method private checkReadableBytes(I)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bytesBefore(B)I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(B)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public bytesBefore(IB)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IB)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public capacity()I
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public copy()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public ensureWritableBytes(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getByte(I)B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

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

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public getBytes(I[B)V
    .locals 1

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    return-void
.end method

.method public getBytes(I[BII)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    return-void
.end method

.method public getChar(I)C
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getMedium(I)I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public indexOf(IIB)I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public isDirect()Z
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public markReaderIndex()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    return-void
.end method

.method public markWriterIndex()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

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

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public readBytes([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    return-void
.end method

.method public readBytes([BII)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    return-void
.end method

.method public readChar()C
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMedium()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readMedium()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()S
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readableBytes()I
    .locals 2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public readerIndex()I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    return v0
.end method

.method public readerIndex(I)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void
.end method

.method public resetReaderIndex()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    return-void
.end method

.method public resetWriterIndex()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setByte(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(I[B)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setBytes(I[BII)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setChar(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setDouble(ID)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setFloat(IF)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setIndex(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setInt(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setLong(IJ)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setMedium(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setShort(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public setZero(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v1

    if-gez v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->REPLAY:Ljava/lang/Error;

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    sub-int v0, v1, v0

    return v0
.end method

.method public skipBytes(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    return-void
.end method

.method public slice()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method terminate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->terminated:Z

    return-void
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toByteBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

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

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->writerIndex()I

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

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->checkIndex(II)V

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writableBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeByte(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes([B)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeBytes([BII)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeChar(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeDouble(D)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeFloat(F)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeInt(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeLong(J)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeMedium(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeShort(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writeZero(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public writerIndex()I
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoderBuffer;->buf()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    return v0
.end method

.method public writerIndex(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method
