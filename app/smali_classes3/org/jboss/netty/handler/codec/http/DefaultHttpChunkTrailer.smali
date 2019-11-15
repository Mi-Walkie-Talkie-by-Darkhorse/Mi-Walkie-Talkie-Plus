.class public Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;
.super Ljava/lang/Object;
.source "DefaultHttpChunkTrailer.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;


# instance fields
.field private final headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer$1;

    invoke-direct {v0, p0}, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer$1;-><init>(Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public clearHeaders()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->clearHeaders()V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/DefaultHttpChunkTrailer;->headers:Lorg/jboss/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/handler/codec/http/HttpHeaders;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
