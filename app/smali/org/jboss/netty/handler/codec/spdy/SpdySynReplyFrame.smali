.class public interface abstract Lorg/jboss/netty/handler/codec/spdy/SpdySynReplyFrame;
.super Ljava/lang/Object;
.source "SpdySynReplyFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;


# virtual methods
.method public abstract getStreamID()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getStreamId()I
.end method

.method public abstract isLast()Z
.end method

.method public abstract setLast(Z)V
.end method

.method public abstract setStreamID(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setStreamId(I)V
.end method
