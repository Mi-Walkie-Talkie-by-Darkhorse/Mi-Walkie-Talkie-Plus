.class public final Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;
.super Lorg/jboss/netty/handler/codec/socks/SocksRequest;
.source "SocksAuthRequest.java"


# static fields
.field private static final SUBNEGOTIATION_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

.field private static final asciiEncoder:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0}, Lorg/jboss/netty/util/CharsetUtil;->getEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;->AUTH_PASSWORD:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    sput-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->SUBNEGOTIATION_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0xff

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;->AUTH:Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/socks/SocksRequest;-><init>(Lorg/jboss/netty/handler/codec/socks/SocksRequest$SocksRequestType;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values should be in pure ascii"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds 255 char limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds 255 char limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->username:Ljava/lang/String;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeAsByteBuf(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->SUBNEGOTIATION_VERSION:Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/socks/SocksMessage$SubnegotiationVersion;->getByteValue()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->username:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->password:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    return-void
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/socks/SocksAuthRequest;->username:Ljava/lang/String;

    return-object v0
.end method
