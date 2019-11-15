.class public Lorg/jboss/netty/channel/DefaultChannelConfig;
.super Ljava/lang/Object;
.source "DefaultChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelConfig;


# instance fields
.field private volatile bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

.field private volatile connectTimeoutMillis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/jboss/netty/buffer/HeapChannelBufferFactory;->getInstance()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelConfig;->bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    const/16 v0, 0x2710

    iput v0, p0, Lorg/jboss/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return-void
.end method


# virtual methods
.method public getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/DefaultChannelConfig;->bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return v0
.end method

.method public getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bufferFactory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/channel/DefaultChannelConfig;->bufferFactory:Lorg/jboss/netty/buffer/ChannelBufferFactory;

    return-void
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "pipelineFactory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lorg/jboss/netty/channel/ChannelPipelineFactory;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "connectTimeoutMillis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/jboss/netty/util/internal/ConversionUtil;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)V

    goto :goto_0

    :cond_2
    const-string v0, "bufferFactory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Lorg/jboss/netty/buffer/ChannelBufferFactory;

    invoke-virtual {p0, p2}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/jboss/netty/channel/DefaultChannelConfig;->setOption(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V
    .locals 0

    return-void
.end method
