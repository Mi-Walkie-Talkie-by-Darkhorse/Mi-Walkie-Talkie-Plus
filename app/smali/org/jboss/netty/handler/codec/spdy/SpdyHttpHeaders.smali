.class public final Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;
.super Ljava/lang/Object;
.source "SpdyHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders$Names;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssociatedToStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v0

    return v0
.end method

.method public static getAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .locals 2

    const-string v0, "X-SPDY-Associated-To-Stream-ID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)B
    .locals 2

    const-string v0, "X-SPDY-Priority"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static getScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .locals 1

    const-string v0, "X-SPDY-Scheme"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I

    move-result v0

    return v0
.end method

.method public static getStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)I
    .locals 1

    const-string v0, "X-SPDY-Stream-ID"

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .locals 1

    const-string v0, "X-SPDY-URL"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeAssociatedToStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    return-void
.end method

.method public static removeAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    const-string v0, "X-SPDY-Associated-To-Stream-ID"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public static removePriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    const-string v0, "X-SPDY-Priority"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public static removeScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    const-string v0, "X-SPDY-Scheme"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public static removeStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V

    return-void
.end method

.method public static removeStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    const-string v0, "X-SPDY-Stream-ID"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public static removeUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;)V
    .locals 1

    const-string v0, "X-SPDY-URL"

    invoke-interface {p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public static setAssociatedToStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    return-void
.end method

.method public static setAssociatedToStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .locals 1

    const-string v0, "X-SPDY-Associated-To-Stream-ID"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V

    return-void
.end method

.method public static setPriority(Lorg/jboss/netty/handler/codec/http/HttpMessage;B)V
    .locals 1

    const-string v0, "X-SPDY-Priority"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V

    return-void
.end method

.method public static setScheme(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 1

    const-string v0, "X-SPDY-Scheme"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setStreamID(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHttpHeaders;->setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V

    return-void
.end method

.method public static setStreamId(Lorg/jboss/netty/handler/codec/http/HttpMessage;I)V
    .locals 1

    const-string v0, "X-SPDY-Stream-ID"

    invoke-static {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setIntHeader(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V

    return-void
.end method

.method public static setUrl(Lorg/jboss/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 1

    const-string v0, "X-SPDY-URL"

    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
