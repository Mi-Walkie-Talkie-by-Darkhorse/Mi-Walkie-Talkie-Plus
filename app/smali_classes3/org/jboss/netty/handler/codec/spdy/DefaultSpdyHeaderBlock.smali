.class public Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;
.super Ljava/lang/Object;
.source "DefaultSpdyHeaderBlock.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/spdy/SpdyHeaderBlock;


# instance fields
.field private final headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

.field private invalid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected appendHeaders(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->getHeaders()Ljava/util/List;

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

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->clearHeaders()V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeaderNames()Ljava/util/Set;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeaders()Ljava/util/List;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isInvalid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->invalid:Z

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->removeHeader(Ljava/lang/String;)V

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->headers:Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/SpdyHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInvalid()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/DefaultSpdyHeaderBlock;->invalid:Z

    return-void
.end method
