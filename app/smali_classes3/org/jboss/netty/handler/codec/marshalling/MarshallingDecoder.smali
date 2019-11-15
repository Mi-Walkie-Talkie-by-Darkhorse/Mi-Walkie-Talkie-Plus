.class public Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;
.super Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;
.source "MarshallingDecoder.java"


# instance fields
.field private final provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;)V
    .locals 1

    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;-><init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;I)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;I)V
    .locals 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p2

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;-><init>(IIIII)V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/LengthFieldBasedFrameDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/MarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    invoke-interface {v1, p1}, Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;->getUnmarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v1

    new-instance v2, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;

    invoke-direct {v2, v0}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :try_start_0
    invoke-interface {v1, v2}, Lorg/jboss/marshalling/Unmarshaller;->start(Lorg/jboss/marshalling/ByteInput;)V

    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    throw v0
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/ChannelBuffer;II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-interface {p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
