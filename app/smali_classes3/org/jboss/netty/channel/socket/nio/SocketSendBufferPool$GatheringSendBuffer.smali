.class Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GatheringSendBuffer"
.end annotation


# instance fields
.field private final buffers:[Ljava/nio/ByteBuffer;

.field private final last:I

.field private final total:I

.field private written:J


# direct methods
.method constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->last:I

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->total:I

    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->last:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public totalBytes()J
    .locals 2

    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->total:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    int-to-long v0, v0

    return-wide v0

    :cond_1
    add-int/2addr v0, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/nio/channels/GatheringByteChannel;

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->buffers:[Ljava/nio/ByteBuffer;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public writtenBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$GatheringSendBuffer;->written:J

    return-wide v0
.end method
