.class public Lorg/jboss/netty/handler/codec/marshalling/ContextBoundUnmarshallerProvider;
.super Lorg/jboss/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;
.source "ContextBoundUnmarshallerProvider.java"


# direct methods
.method public constructor <init>(Lorg/jboss/marshalling/MarshallerFactory;Lorg/jboss/marshalling/MarshallingConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;-><init>(Lorg/jboss/marshalling/MarshallerFactory;Lorg/jboss/marshalling/MarshallingConfiguration;)V

    return-void
.end method


# virtual methods
.method public getUnmarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/marshalling/Unmarshaller;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/jboss/netty/handler/codec/marshalling/DefaultUnmarshallerProvider;->getUnmarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
