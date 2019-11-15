.class public interface abstract Lorg/jboss/netty/buffer/ChannelBufferFactory;
.super Ljava/lang/Object;
.source "ChannelBufferFactory.java"


# virtual methods
.method public abstract getBuffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getBuffer(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getBuffer(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getBuffer(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getBuffer([BII)Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getDefaultOrder()Ljava/nio/ByteOrder;
.end method
