.class public Lorg/jboss/netty/handler/codec/marshalling/DefaultMarshallerProvider;
.super Ljava/lang/Object;
.source "DefaultMarshallerProvider.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/marshalling/MarshallerProvider;


# instance fields
.field private final config:Lorg/jboss/marshalling/MarshallingConfiguration;

.field private final factory:Lorg/jboss/marshalling/MarshallerFactory;


# direct methods
.method public constructor <init>(Lorg/jboss/marshalling/MarshallerFactory;Lorg/jboss/marshalling/MarshallingConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/DefaultMarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/marshalling/DefaultMarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    return-void
.end method


# virtual methods
.method public getMarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Marshaller;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/DefaultMarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/DefaultMarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    invoke-interface {v0, v1}, Lorg/jboss/marshalling/MarshallerFactory;->createMarshaller(Lorg/jboss/marshalling/MarshallingConfiguration;)Lorg/jboss/marshalling/Marshaller;

    move-result-object v0

    return-object v0
.end method
