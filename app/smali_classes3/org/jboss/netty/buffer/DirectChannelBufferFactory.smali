.class public Lorg/jboss/netty/buffer/DirectChannelBufferFactory;
.super Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;
.source "DirectChannelBufferFactory.java"


# static fields
.field private static final INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

.field private static final INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;


# instance fields
.field private final bigEndianLock:Ljava/lang/Object;

.field private final littleEndianLock:Ljava/lang/Object;

.field private preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private preallocatedBEBufPos:I

.field private final preallocatedBufCapacity:I

.field private preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private preallocatedLEBufPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    new-instance v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    sput-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/AbstractChannelBufferFactory;-><init>(Ljava/nio/ByteOrder;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->bigEndianLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->littleEndianLock:Ljava/lang/Object;

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preallocatedBufCapacity must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    return-void
.end method

.method private allocateBigEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->bigEndianLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    invoke-interface {v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBEBufPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private allocateLittleEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    iget-object v1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->littleEndianLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    invoke-interface {v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget v2, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    invoke-static {v0, v2}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget-object v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBuf:Lorg/jboss/netty/buffer/ChannelBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iput p1, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedLEBufPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    return-object v0
.end method

.method public static getInstance(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_BE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_1

    sget-object v0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->INSTANCE_LE:Lorg/jboss/netty/buffer/DirectChannelBufferFactory;

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "defaultEndianness"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->preallocatedBufCapacity:I

    if-lt p2, v0, :cond_3

    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffers;->directBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_4

    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->allocateBigEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->clear()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->allocateLittleEndianBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public getBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :goto_0
    return-object v0

    :cond_2
    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, p1, p4}, Lorg/jboss/netty/buffer/DirectChannelBufferFactory;->getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([BII)V

    goto :goto_0
.end method
