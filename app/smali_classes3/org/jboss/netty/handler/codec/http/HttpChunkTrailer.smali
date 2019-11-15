.class public interface abstract Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;
.super Ljava/lang/Object;
.source "HttpChunkTrailer.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpChunk;


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract clearHeaders()V
.end method

.method public abstract containsHeader(Ljava/lang/String;)Z
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaderNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders()Ljava/util/List;
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
.end method

.method public abstract getHeaders(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract isLast()Z
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/Object;)V
.end method
