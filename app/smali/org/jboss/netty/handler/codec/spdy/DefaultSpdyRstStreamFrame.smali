.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyRstStreamFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyRstStreamFrame;


# instance fields
.field private status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field private streamId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStreamId(I)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V

    return-void
.end method


# virtual methods
.method public getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0
.end method

.method public getStreamID()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->getStreamId()I

    move-result v0

    return v0
.end method

.method public getStreamId()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->streamId:I

    return v0
.end method

.method public setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-void
.end method

.method public setStreamID(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStreamId(I)V

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
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->streamId:I

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

    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
