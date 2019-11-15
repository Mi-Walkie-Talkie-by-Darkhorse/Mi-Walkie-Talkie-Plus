.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyGoAwayFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyGoAwayFrame;


# instance fields
.field private lastGoodStreamId:I

.field private status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-static {p2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(ILorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setLastGoodStreamId(I)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V

    return-void
.end method


# virtual methods
.method public getLastGoodStreamID()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->getLastGoodStreamId()I

    move-result v0

    return v0
.end method

.method public getLastGoodStreamId()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    return v0
.end method

.method public getStatus()Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0
.end method

.method public setLastGoodStreamID(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setLastGoodStreamId(I)V

    return-void
.end method

.method public setLastGoodStreamId(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last-good-stream-ID cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    return-void
.end method

.method public setStatus(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

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

    const-string v1, "--> Last-good-stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--> Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
