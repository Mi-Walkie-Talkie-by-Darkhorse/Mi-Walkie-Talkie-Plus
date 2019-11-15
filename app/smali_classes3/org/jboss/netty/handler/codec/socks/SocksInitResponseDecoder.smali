.class public Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "SocksInitResponseDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$1;,
        Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SOCKS_INIT_RESPONSE_DECODER"


# instance fields
.field private authScheme:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;

.field private msg:Lorg/jboss/netty/handler/codec/socks/SocksResponse;

.field private version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_RESPONSE:Lorg/jboss/netty/handler/codec/socks/SocksResponse;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksResponse;

    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SOCKS_INIT_RESPONSE_DECODER"

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Ljava/lang/Enum;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p4, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksInitResponseDecoder$State:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksResponse;

    return-object v0

    :pswitch_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;->SOCKS5:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;->READ_PREFFERED_AUTH_TYPE:Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->authScheme:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponse;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->authScheme:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/socks/SocksInitResponse;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitResponseDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksResponse;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
