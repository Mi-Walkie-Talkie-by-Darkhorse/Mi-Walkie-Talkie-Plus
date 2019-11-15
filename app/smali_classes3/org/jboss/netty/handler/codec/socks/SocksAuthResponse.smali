.class public final Lorg/jboss/netty/handler/codec/socks/SocksAuthResponse;
.super Lorg/jboss/netty/handler/codec/socks/SocksResponse;
.source "SocksAuthResponse.java"


# static fields
.field private static final SUBNEGOTIATION_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;


# instance fields
.field private final authStatus:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;->AUTH_PASSWORD:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthResponse;->SUBNEGOTIATION_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;)V
    .locals 2

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;->AUTH:Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksResponse;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksResponse$SocksResponseType;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authStatus"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    return-void
.end method


# virtual methods
.method public encodeAsByteBuf(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthResponse;->SUBNEGOTIATION_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;->getByteValue()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;->getByteValue()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    return-void
.end method

.method public getAuthStatus()Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthResponse;->authStatus:Lorg/jboss/netty/handler/codec/socks/SocksMessage$AuthStatus;

    return-object v0
.end method
