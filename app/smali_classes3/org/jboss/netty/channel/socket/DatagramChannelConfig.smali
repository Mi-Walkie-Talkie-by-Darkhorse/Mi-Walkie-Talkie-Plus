.class public interface abstract Lorg/jboss/netty/channel/socket/DatagramChannelConfig;
.super Ljava/lang/Object;
.source "DatagramChannelConfig.java"

# interfaces
.implements Lorg/jboss/netty/channel/ChannelConfig;


# virtual methods
.method public abstract getInterface()Ljava/net/InetAddress;
.end method

.method public abstract getNetworkInterface()Ljava/net/NetworkInterface;
.end method

.method public abstract getReceiveBufferSize()I
.end method

.method public abstract getReceiveBufferSizePredictor()Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;
.end method

.method public abstract getReceiveBufferSizePredictorFactory()Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;
.end method

.method public abstract getSendBufferSize()I
.end method

.method public abstract getTimeToLive()I
.end method

.method public abstract getTrafficClass()I
.end method

.method public abstract isBroadcast()Z
.end method

.method public abstract isLoopbackModeDisabled()Z
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract setBroadcast(Z)V
.end method

.method public abstract setInterface(Ljava/net/InetAddress;)V
.end method

.method public abstract setLoopbackModeDisabled(Z)V
.end method

.method public abstract setNetworkInterface(Ljava/net/NetworkInterface;)V
.end method

.method public abstract setReceiveBufferSize(I)V
.end method

.method public abstract setReceiveBufferSizePredictor(Lorg/jboss/netty/channel/ReceiveBufferSizePredictor;)V
.end method

.method public abstract setReceiveBufferSizePredictorFactory(Lorg/jboss/netty/channel/ReceiveBufferSizePredictorFactory;)V
.end method

.method public abstract setReuseAddress(Z)V
.end method

.method public abstract setSendBufferSize(I)V
.end method

.method public abstract setTimeToLive(I)V
.end method

.method public abstract setTrafficClass(I)V
.end method
