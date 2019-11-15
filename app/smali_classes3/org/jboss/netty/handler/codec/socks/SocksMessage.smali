.class public abstract Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.super Ljava/lang/Object;
.source "SocksMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;,
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;,
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdStatus;,
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;,
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;,
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;,
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;,
        Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;
    }
.end annotation


# instance fields
.field private final messageType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;

.field private final protocolVersion:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;->SOCKS5:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage;->protocolVersion:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "messageType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage;->messageType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;

    return-void
.end method


# virtual methods
.method public abstract encodeAsByteBuf(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getMessageType()Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage;->messageType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksMessage;->protocolVersion:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    return-object v0
.end method
