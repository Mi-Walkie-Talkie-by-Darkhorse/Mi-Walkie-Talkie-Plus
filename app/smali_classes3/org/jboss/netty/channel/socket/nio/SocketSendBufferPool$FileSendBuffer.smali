.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FileSendBuffer"
.end annotation


# instance fields
.field private final file:Lorg/jboss/netty/channel/FileRegion;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

.field private writtenBytes:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/FileRegion;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 4

    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    invoke-interface {v2}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    instance-of v0, v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    check-cast v0, Lorg/jboss/netty/channel/DefaultFileRegion;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/DefaultFileRegion;->releaseAfterTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    invoke-interface {v0}, Lorg/jboss/netty/channel/FileRegion;->releaseExternalResources()V

    :cond_0
    return-void
.end method

.method public totalBytes()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    invoke-interface {v0}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->file:Lorg/jboss/netty/channel/FileRegion;

    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    invoke-interface {v0, p1, v2, v3}, Lorg/jboss/netty/channel/FileRegion;->transferTo(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    return-wide v0
.end method

.method public writtenBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$FileSendBuffer;->writtenBytes:J

    return-wide v0
.end method
