.class public abstract Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
.super Ljava/lang/Object;
.source "WebSocketFrame.java"


# instance fields
.field private binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private finalFragment:Z

.field private rsv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->finalFragment:Z

    return-void
.end method


# virtual methods
.method public getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getRsv()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv:I

    return v0
.end method

.method public isFinalFragment()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->finalFragment:Z

    return v0
.end method

.method public setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public setFinalFragment(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->finalFragment:Z

    return-void
.end method

.method public setRsv(I)V
    .locals 0

    iput p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;->rsv:I

    return-void
.end method
