.class public interface abstract Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;
.super Ljava/lang/Object;
.source "SpdyDataFrame.java"


# virtual methods
.method public abstract getData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getStreamID()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getStreamId()I
.end method

.method public abstract isCompressed()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isLast()Z
.end method

.method public abstract setCompressed(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract setLast(Z)V
.end method

.method public abstract setStreamID(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setStreamId(I)V
.end method
