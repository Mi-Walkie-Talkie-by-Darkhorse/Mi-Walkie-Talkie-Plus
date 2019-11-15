.class public interface abstract Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;
.super Ljava/lang/Object;
.source "SpdyRstStreamFrame.java"


# virtual methods
.method public abstract getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;
.end method

.method public abstract getStreamID()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getStreamId()I
.end method

.method public abstract setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
.end method

.method public abstract setStreamID(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setStreamId(I)V
.end method
