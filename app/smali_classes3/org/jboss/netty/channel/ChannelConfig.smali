.class public interface abstract Lorg/jboss/netty/channel/ChannelConfig;
.super Ljava/lang/Object;
.source "ChannelConfig.java"


# virtual methods
.method public abstract getBufferFactory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
.end method

.method public abstract getConnectTimeoutMillis()I
.end method

.method public abstract getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;
.end method

.method public abstract setBufferFactory(Lorg/jboss/netty/buffer/ChannelBufferFactory;)V
.end method

.method public abstract setConnectTimeoutMillis(I)V
.end method

.method public abstract setOption(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract setOptions(Ljava/util/Map;)V
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
.end method

.method public abstract setPipelineFactory(Lorg/jboss/netty/channel/ChannelPipelineFactory;)V
.end method
