.class public interface abstract Lorg/jboss/netty/handler/codec/spdy/SpdySynStreamFrame;
.super Ljava/lang/Object;
.source "SpdySynStreamFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;


# virtual methods
.method public abstract getAssociatedToStreamID()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAssociatedToStreamId()I
.end method

.method public abstract getPriority()B
.end method

.method public abstract getStreamID()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getStreamId()I
.end method

.method public abstract isLast()Z
.end method

.method public abstract isUnidirectional()Z
.end method

.method public abstract setAssociatedToStreamID(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAssociatedToStreamId(I)V
.end method

.method public abstract setLast(Z)V
.end method

.method public abstract setPriority(B)V
.end method

.method public abstract setStreamID(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setStreamId(I)V
.end method

.method public abstract setUnidirectional(Z)V
.end method
