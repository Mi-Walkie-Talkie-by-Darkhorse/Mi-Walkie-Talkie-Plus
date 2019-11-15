.class public interface abstract Lorg/jboss/netty/channel/socket/nio/NioSocketChannelConfig;
.super Ljava/lang/Object;
.source "NioSocketChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/socket/SocketChannelConfig;
.implements Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;


# virtual methods
.method public abstract getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
.end method

.method public abstract getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;
.end method

.method public abstract setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V
.end method

.method public abstract setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V
.end method
