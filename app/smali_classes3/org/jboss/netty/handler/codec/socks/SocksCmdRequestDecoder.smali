.class public Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "SocksCmdRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$1;,
        Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SOCKS_CMD_REQUEST_DECODER"


# instance fields
.field private addressType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

.field private cmdType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

.field private fieldLength:I

.field private host:Ljava/lang/String;

.field private msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

.field private port:I

.field private reserved:B

.field private version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_REQUEST:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SOCKS_CMD_REQUEST_DECODER"

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

    check-cast p4, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksCmdRequestDecoder$State:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    return-object v0

    :pswitch_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;->SOCKS5:Lorg/jboss/netty/handler/codec/socks/SocksMessage$ProtocolVersion;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;->READ_CMD_HEADER:Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->cmdType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->reserved:B

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->addressType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;->READ_CMD_ADDRESS:Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_2
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksMessage$AddressType:[I

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->addressType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->host:Ljava/lang/String;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->port:I

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequest;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->cmdType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->addressType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->host:Ljava/lang/String;

    iget v4, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->port:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequest;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    goto :goto_0

    :pswitch_4
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->fieldLength:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->fieldLength:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->host:Ljava/lang/String;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->port:I

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequest;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->cmdType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->addressType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->host:Ljava/lang/String;

    iget v4, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->port:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequest;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    goto/16 :goto_0

    :pswitch_5
    const/16 v0, 0x10

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->ipv6toStr([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->host:Ljava/lang/String;

    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->port:I

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequest;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->cmdType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->addressType:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->host:Ljava/lang/String;

    iget v4, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->port:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequest;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$CmdType;Lorg/jboss/netty/handler/codec/socks/SocksMessage$AddressType;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksCmdRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
