.class public Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;
.super Ljava/lang/Object;
.source "DefaultWebSocketFrame.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->setData(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method


# virtual methods
.method public getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getTextData()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->type:I

    return v0
.end method

.method public isBinary()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->isText()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getType()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "binaryData"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    invoke-interface {p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {p2, v0, v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a text frame should not contain 0xFF."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->type:I

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->binaryData:Lorg/jboss/netty/buffer/ChannelBuffer;

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

    move-result-object v0

    const-string v1, "(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
