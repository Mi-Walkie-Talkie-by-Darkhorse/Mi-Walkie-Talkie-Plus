.class public Lorg/jboss/netty/handler/codec/http/HttpRequestEncoder;
.super Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;
.source "HttpRequestEncoder.java"


# static fields
.field private static final SLASH:C = '/'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/HttpMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v4, 0x2f

    const/16 v3, 0x20

    check-cast p2, Lorg/jboss/netty/handler/codec/http/HttpRequest;

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getMethod()Lorg/jboss/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gt v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-interface {p1, v3}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpRequest;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    return-void
.end method
