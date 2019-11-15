.class public Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;
.super Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;
.source "BinaryWebSocketFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public constructor <init>(ZILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/WebSocketFrame;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;->setFinalFragment(Z)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;->setRsv(I)V

    invoke-virtual {p0, p3}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;->setBinaryData(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;->getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;

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
