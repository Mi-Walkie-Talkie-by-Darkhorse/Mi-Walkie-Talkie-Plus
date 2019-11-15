.class Lorg/jboss/netty/handler/codec/replay/UnsafeDynamicChannelBuffer;
.super Lorg/jboss/netty/buffer/DynamicChannelBuffer;
.source "UnsafeDynamicChannelBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/UnsafeDynamicChannelBuffer;-><init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;I)V

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;I)V
    .locals 1

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBufferFactory;->getDefaultOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lorg/jboss/netty/buffer/DynamicChannelBuffer;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/ChannelBufferFactory;)V

    return-void
.end method


# virtual methods
.method protected checkReadableBytes(I)V
    .locals 0

    return-void
.end method
