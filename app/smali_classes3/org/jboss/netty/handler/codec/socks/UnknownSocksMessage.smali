.class public final Lorg/jboss/netty/handler/codec/socks/UnknownSocksMessage;
.super Lorg/jboss/netty/handler/codec/socks/SocksMessage;
.source "UnknownSocksMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$MessageType;)V

    return-void
.end method


# virtual methods
.method public encodeAsByteBuf(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    return-void
.end method
