.class public final Lorg/jboss/netty/handler/codec/socks/UnknownSocksRequest;
.super Lorg/jboss/netty/handler/codec/socks/SocksRequest;
.source "UnknownSocksRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->UNKNOWN:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksRequest;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;)V

    return-void
.end method


# virtual methods
.method public encodeAsByteBuf(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 0

    return-void
.end method
