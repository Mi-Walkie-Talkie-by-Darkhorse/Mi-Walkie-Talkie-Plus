.class public Lorg/jboss/netty/handler/codec/base64/Base64Decoder;
.super Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;
.source "Base64Decoder.java"


# annotations
.annotation runtime Lorg/jboss/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final dialect:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/base64/Base64Decoder;-><init>(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/handler/codec/base64/Base64Dialect;)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/oneone/OneToOneDecoder;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dialect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/base64/Base64Decoder;->dialect:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    return-void
.end method


# virtual methods
.method protected decode(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/Channel;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p3, v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/handler/codec/base64/Base64Decoder;->dialect:Lorg/jboss/netty/handler/codec/base64/Base64Dialect;

    invoke-static {v0, v1, v2, v3}, Lorg/jboss/netty/handler/codec/base64/Base64;->decode(Lorg/jboss/netty/buffer/ChannelBuffer;IILorg/jboss/netty/handler/codec/base64/Base64Dialect;)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object p3

    :cond_0
    return-object p3

    :cond_1
    instance-of v0, p3, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_0

    move-object v0, p3

    goto :goto_0
.end method
