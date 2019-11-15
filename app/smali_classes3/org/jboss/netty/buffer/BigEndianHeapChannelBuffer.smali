.class public Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;
.super Lorg/jboss/netty/buffer/HeapChannelBuffer;
.source "BigEndianHeapChannelBuffer.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/HeapChannelBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/HeapChannelBuffer;-><init>([B)V

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/HeapChannelBuffer;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many bytes to copy - Need "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, p2, [B

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    invoke-direct {v1, v0}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>([B)V

    return-object v1
.end method

.method public duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 4

    new-instance v0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->readerIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->writerIndex()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;-><init>([BII)V

    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public getInt(I)I
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getLong(I)J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v3, p1, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v3, p1, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v3, p1, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v3, p1, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getShort(I)S
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public setInt(II)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    return-void
.end method

.method public setLong(IJ)V
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    const/16 v1, 0x38

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x7

    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public setMedium(II)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    return-void
.end method

.method public setShort(II)V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    iget-object v0, p0, Lorg/jboss/netty/buffer/BigEndianHeapChannelBuffer;->array:[B

    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    return-void
.end method
