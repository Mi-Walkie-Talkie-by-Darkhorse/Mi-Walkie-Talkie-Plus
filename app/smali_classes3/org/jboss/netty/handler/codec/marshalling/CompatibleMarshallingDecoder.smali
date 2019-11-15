.class public Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "CompatibleMarshallingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/replay/VoidEnum;",
        ">;"
    }
.end annotation


# instance fields
.field private discardingTooLongFrame:Z

.field protected final maxObjectSize:I

.field protected final provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;I)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    iput p2, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p4, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->discardingTooLongFrame:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->actualReadableBytes()I

    move-result v0

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->checkpoint()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;->getUnmarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v2

    new-instance v1, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;

    invoke-direct {v1, p3}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteInput;-><init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iget v0, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_1

    new-instance v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;

    iget v3, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->maxObjectSize:I

    int-to-long v4, v3

    invoke-direct {v0, v1, v4, v5}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;-><init>(Lorg/jboss/marshalling/ByteInput;J)V

    :goto_1
    :try_start_0
    invoke-interface {v2, v0}, Lorg/jboss/marshalling/Unmarshaller;->start(Lorg/jboss/marshalling/ByteInput;)V

    invoke-interface {v2}, Lorg/jboss/marshalling/Unmarshaller;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2}, Lorg/jboss/marshalling/Unmarshaller;->finish()V
    :try_end_0
    .catch Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->discardingTooLongFrame:Z

    new-instance v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lorg/jboss/marshalling/Unmarshaller;->close()V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p4, Lorg/jboss/netty/handler/codec/replay/VoidEnum;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/replay/VoidEnum;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/jboss/netty/handler/codec/frame/TooLongFrameException;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V

    goto :goto_0
.end method
