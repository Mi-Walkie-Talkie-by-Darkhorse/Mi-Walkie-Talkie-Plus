.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;
.super Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PooledSendBuffer"
.end annotation


# instance fields
.field private final parent:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

.field final synthetic this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0, p3}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$UnpooledSendBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->parent:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 5

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->parent:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->refCnt:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->access$000(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PooledSendBuffer;->this$0:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-static {v4}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->access$100(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;)V

    invoke-static {v1, v2}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->access$102(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$PreallocationRef;

    :cond_0
    return-void
.end method
