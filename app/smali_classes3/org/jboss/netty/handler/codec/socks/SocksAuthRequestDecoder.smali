.class public Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;
.super Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;
.source "SocksAuthRequestDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$1;,
        Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder",
        "<",
        "Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SOCKS_AUTH_REQUEST_DECODER"


# instance fields
.field private fieldLength:I

.field private msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->CHECK_PROTOCOL_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;-><init>(Ljava/lang/Enum;)V

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_REQUEST:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SOCKS_AUTH_REQUEST_DECODER"

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

    check-cast p4, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$1;->$SwitchMap$org$jboss$netty$handler$codec$socks$SocksAuthRequestDecoder$State:[I

    invoke-virtual {p4}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    return-object v0

    :pswitch_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;->fromByte(B)Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->version:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    sget-object v1, Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;->AUTH_PASSWORD:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->READ_USERNAME:Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->fieldLength:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->fieldLength:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->username:Ljava/lang/String;

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;->READ_PASSWORD:Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder$State;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->checkpoint(Ljava/lang/Enum;)V

    :pswitch_2
    invoke-interface {p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    iput v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->fieldLength:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->fieldLength:I

    invoke-interface {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->password:Ljava/lang/String;

    new-instance v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->username:Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequestDecoder;->msg:Lorg/jboss/netty/handler/codec/socks/SocksRequest;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
