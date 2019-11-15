.class public Lorg/jboss/netty/handler/codec/rtsp/RtspResponseEncoder;
.super Lorg/jboss/netty/handler/codec/rtsp/RtspMessageEncoder;
.source "RtspResponseEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/rtsp/RtspMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected encodeInitialLine(Lorg/jboss/netty/buffer/ChannelBuffer;Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v2, 0x20

    check-cast p2, Lorg/jboss/netty/handler/codec/http/HttpResponse;

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeBytes([B)V

    invoke-interface {p1, v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writeByte(I)V

    invoke-interface {p2}, Lorg/jboss/netty/handler/codec/http/HttpResponse;->getStatus()Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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
