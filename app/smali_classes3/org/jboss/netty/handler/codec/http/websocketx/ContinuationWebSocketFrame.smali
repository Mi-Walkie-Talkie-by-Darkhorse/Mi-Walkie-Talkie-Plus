.class public Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
.source "ContinuationWebSocketFrame.java"


# instance fields
.field private aggregatedText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setFinalFragment(Z)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setRsv(I)V

    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setFinalFragment(Z)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setRsv(I)V

    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(ZILorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setFinalFragment(Z)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setRsv(I)V

    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    iput-object p4, p0, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->aggregatedText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAggregatedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->aggregatedText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAggregatedText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->aggregatedText:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
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

    const-string v1, "(data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

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
