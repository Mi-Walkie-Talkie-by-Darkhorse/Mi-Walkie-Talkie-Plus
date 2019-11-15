.class public Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingEncoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;
.source "CompatibleMarshallingEncoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final provider:Lorg/jboss/netty/handler/codec/marshalling/MarshallerProvider;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/handler/codec/marshalling/MarshallerProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneEncoder;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingEncoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/MarshallerProvider;

    return-void
.end method


# virtual methods
.method protected encode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/CompatibleMarshallingEncoder;->provider:Lorg/jboss/netty/handler/codec/marshalling/MarshallerProvider;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/marshalling/MarshallerProvider;->getMarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Marshaller;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelConfig;->getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v2

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;-><init>(Lorg/jboss/netty/buffer/ChannelBufferFactory;I)V

    invoke-interface {v0, v1}, Lorg/jboss/marshalling/Marshaller;->start(Lorg/jboss/marshalling/ByteOutput;)V

    invoke-interface {v0, p3}, Lorg/jboss/marshalling/Marshaller;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/jboss/marshalling/Marshaller;->finish()V

    invoke-interface {v0}, Lorg/jboss/marshalling/Marshaller;->close()V

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/marshalling/ChannelBufferByteOutput;->getBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method
