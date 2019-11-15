.class final Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;
.super Ljava/lang/Object;
.source "SocketReceiveBufferAllocator.java"

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# instance fields
.field private buf:Ljava/nio/ByteBuffer;

.field private exceedCount:I

.field private final maxExceedCount:I

.field private final percentual:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->maxExceedCount:I

    iput p2, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->percentual:I

    return-void
.end method

.method private newBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->exceedCount:I

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ByteBufferUtil;->destroy(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->normalizeCapacity(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private static normalizeCapacity(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0xa

    and-int/lit16 v1, p0, 0x3ff

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0xa

    return v0
.end method


# virtual methods
.method get(I)Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->newBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->newBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->percentual:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    if-le v0, p1, :cond_3

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->exceedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->exceedCount:I

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->maxExceedCount:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->newBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->exceedCount:I

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public releaseExternalResources()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketReceiveBufferAllocator;->buf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ByteBufferUtil;->destroy(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
