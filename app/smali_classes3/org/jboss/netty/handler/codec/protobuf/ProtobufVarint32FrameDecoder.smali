.class public Lorg/jboss/netty/handler/codec/protobuf/ProtobufVarint32FrameDecoder;
.super Lorg/jboss/netty/handler/codec/frame/FrameDecoder;
.source "ProtobufVarint32FrameDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/frame/FrameDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    const/4 v0, 0x5

    new-array v3, v0, [B

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_4

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v4

    aput-byte v4, v3, v0

    aget-byte v4, v3, v0

    if-ltz v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v1, v0}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    if-gez v0, :cond_1

    new-instance v1, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_2

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;

    const-string v1, "length wider than 32-bit"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/frame/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
