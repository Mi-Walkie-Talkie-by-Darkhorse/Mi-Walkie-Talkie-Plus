.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;,
        Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    }
.end annotation


# static fields
.field private static final ALIGN_MASK:I = 0xf

.field private static final ALIGN_SHIFT:I = 0x4

.field private static final DEFAULT_PREALLOCATION_SIZE:I = 0x10000

.field private static final EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# instance fields
.field private current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

.field private poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$EmptySendBuffer;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    return-void
.end method

.method static synthetic access$000(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    return-object p1
.end method

.method private acquire(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .locals 5

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->useGathering()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;-><init>([Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/high16 v2, 0x10000

    if-le v0, v2, :cond_3

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->align(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    invoke-direct {v0, p0, v2, v3}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    :goto_1
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p1, v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    :cond_4
    if-le v1, v3, :cond_5

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v2

    iput-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->align(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    invoke-direct {v0, p0, v2, v3}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_5
    iget v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;

    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, p0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V

    goto :goto_1
.end method

.method private acquire(Lorg/jboss/netty/channel/FileRegion;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .locals 4

    invoke-interface {p1}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->EMPTY_BUFFER:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/FileRegion;)V

    goto :goto_0
.end method

.method private static align(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x4

    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private getPreallocation()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreallocation0()Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_0
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;->next:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    :goto_0
    return-object v0

    :cond_1
    if-nez v1, :cond_0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->poolHead:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    :cond_2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method acquire(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .locals 3

    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Lorg/jboss/netty/buffer/ChannelBuffer;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/channel/FileRegion;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jboss/netty/channel/FileRegion;

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->acquire(Lorg/jboss/netty/channel/FileRegion;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->current:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ByteBufferUtil;->destroy(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
