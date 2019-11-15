.class public Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;
.super Ljava/lang/Object;
.source "ThreadLocalUnmarshallerProvider.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/marshalling/UnmarshallerProvider;


# instance fields
.field private final config:Lorg/jboss/marshalling/MarshallingConfiguration;

.field private final factory:Lorg/jboss/marshalling/MarshallerFactory;

.field private final unmarshallers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/jboss/marshalling/Unmarshaller;",
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

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->unmarshallers:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    return-void
.end method


# virtual methods
.method public getUnmarshaller(Lorg/jboss/netty/channel/ChannelHandlerContext;)Lorg/jboss/marshalling/Unmarshaller;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->unmarshallers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/marshalling/Unmarshaller;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->factory:Lorg/jboss/marshalling/MarshallerFactory;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->config:Lorg/jboss/marshalling/MarshallingConfiguration;

    invoke-interface {v0, v1}, Lorg/jboss/marshalling/MarshallerFactory;->createUnmarshaller(Lorg/jboss/marshalling/MarshallingConfiguration;)Lorg/jboss/marshalling/Unmarshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/ThreadLocalUnmarshallerProvider;->unmarshallers:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
