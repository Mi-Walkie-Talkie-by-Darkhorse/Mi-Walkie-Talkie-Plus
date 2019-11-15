.class public Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "SocksInitRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$1;,
        Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SOCKS_INIT_REQUEST_DECODER"


# instance fields
.field private authSchemeNum:B

.field private final authSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

.field private version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->authSchemes:Ljava/util/List;

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_REQUEST:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SOCKS_INIT_REQUEST_DECODER"

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

    check-cast p4, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksInitRequestDecoder$State:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    return-object v0

    :pswitch_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;->SOCKS5:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;->READ_AUTH_SCHEMES:Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->authSchemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->authSchemeNum:B

    const/4 v0, 0x0

    :goto_1
    iget-byte v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->authSchemeNum:B

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->authSchemes:Ljava/util/List;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthScheme;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequest;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->authSchemes:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/socks/SocksInitRequest;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksInitRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
