.class interface abstract Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SendBuffer"
.end annotation


# virtual methods
.method public abstract finished()Z
.end method

.method public abstract release()V
.end method

.method public abstract totalBytes()J
.end method

.method public abstract transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writtenBytes()J
.end method
