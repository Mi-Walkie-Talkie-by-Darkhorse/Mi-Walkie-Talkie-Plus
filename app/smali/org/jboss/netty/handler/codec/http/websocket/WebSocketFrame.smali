.class public interface abstract Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;
.super Ljava/lang/Object;
.source "WebSocketFrame.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CLOSING_HANDSHAKE:Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;

    const/16 v1, 0xff

    sget-object v2, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/websocket/DefaultWebSocketFrame;-><init>(ILorg/jboss/netty/buffer/ChannelBuffer;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;->CLOSING_HANDSHAKE:Lorg/jboss/netty/handler/codec/http/websocket/WebSocketFrame;

    return-void
.end method


# virtual methods
.method public abstract getBinaryData()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getTextData()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract isBinary()Z
.end method

.method public abstract isText()Z
.end method

.method public abstract setData(ILorg/jboss/netty/buffer/ChannelBuffer;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
