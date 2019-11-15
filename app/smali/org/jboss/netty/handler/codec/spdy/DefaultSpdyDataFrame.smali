.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyDataFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyDataFrame;


# instance fields
.field private compressed:Z

.field private data:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private last:Z

.field private streamId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setStreamId(I)V

    return-void
.end method


# virtual methods
.method public getData()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getStreamID()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->getStreamId()I

    move-result v0

    return v0
.end method

.method public getStreamId()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId:I

    return v0
.end method

.method public isCompressed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->compressed:Z

    return v0
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->last:Z

    return v0
.end method

.method public setCompressed(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->compressed:Z

    return-void
.end method

.method public setData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const v1, 0xffffff

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data payload cannot exceed 16777215 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public setLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->last:Z

    return-void
.end method

.method public setStreamID(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setStreamId(I)V

    return-void
.end method

.method public setStreamId(I)V
    .locals 3

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream-ID must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; compressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isCompressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
