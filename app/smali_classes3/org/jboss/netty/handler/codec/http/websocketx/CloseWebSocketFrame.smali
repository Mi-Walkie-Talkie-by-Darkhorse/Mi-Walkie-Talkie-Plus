.class public Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
.source "CloseWebSocketFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;-><init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setFinalFragment(Z)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setRsv(I)V

    new-array v0, v3, [B

    if-eqz p4, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lorg/jboss/netty/buffer/ChannelBuffers;->buffer(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeShort(I)V

    array-length v2, v0

    if-lez v2, :cond_1

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    :cond_1
    invoke-interface {v1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    invoke-virtual {p0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setFinalFragment(Z)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setRsv(I)V

    if-nez p3, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method public getReasonText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-gt v0, v2, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/CloseWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    invoke-interface {v1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
