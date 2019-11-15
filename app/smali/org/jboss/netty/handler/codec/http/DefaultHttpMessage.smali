.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;
.super Ljava/lang/Object;
.source "DefaultHttpMessage.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpMessage;


# instance fields
.field private chunked:Z

.field private content:Lorg/jboss/netty/buffer/ChannelBuffer;

.field private final headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

.field private version:Lorg/jboss/netty/handler/codec/http/HttpVersion;


# direct methods
.method protected constructor <init>(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method appendHeaders(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->clearHeaders()V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentLength(J)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getContentLength(Lorg/jboss/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaderNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->version:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->chunked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->isTransferEncodingChunked(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public isKeepAlive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setChunked(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->chunked:Z

    if-eqz p1, :cond_0

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    :cond_0
    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    :cond_0
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-empty content disallowed if this.chunked == true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->content:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->version:Lorg/jboss/netty/handler/codec/http/HttpVersion;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/http/HttpVersion;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keepAlive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->isKeepAlive(Lorg/jboss/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->isChunked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpMessage;->appendHeaders(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lorg/jboss/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
