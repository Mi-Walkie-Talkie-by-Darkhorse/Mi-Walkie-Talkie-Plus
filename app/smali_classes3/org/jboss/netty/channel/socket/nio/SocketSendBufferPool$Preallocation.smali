.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;
.super Ljava/lang/Object;
.source "SocketSendBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Preallocation"
.end annotation


# instance fields
.field final buffer:Ljava/nio/ByteBuffer;

.field refCnt:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$Preallocation;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method
