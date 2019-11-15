.class public Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;
.super Ljava/lang/Object;
.source "ThreadLocalMarshallerProvider.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/marshalling/MarshallerProvider;


# instance fields
.field private final config:Lorg/jboss/marshalling/MarshallingConfiguration;

.field private final factory:Lorg/jboss/marshalling/MarshallerFactory;

.field private final marshallers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/jboss/marshalling/Marshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jboss/marshalling/MarshallerFactory;Lorg/jboss/marshalling/MarshallingConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;->marshallers:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;->marshallers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/marshalling/Marshaller;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    invoke-interface {v0, v1}, Lorg/jboss/marshalling/MarshallerFactory;->createMarshaller(Lorg/jboss/marshalling/MarshallingConfiguration;)Lorg/jboss/marshalling/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalMarshallerProvider;->marshallers:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
