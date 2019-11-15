.class public interface abstract Lorg/jboss/netty/handler/codec/http/HttpMessage;
.super Ljava/lang/Object;
.source "HttpMessage.java"


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract clearHeaders()V
.end method

.method public abstract containsHeader(Ljava/lang/String;)Z
.end method

.method public abstract getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
.end method

.method public abstract getContentLength()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getContentLength(J)J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
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

.method public abstract getProtocolVersion()Lorg/jboss/netty/handler/codec/http/HttpVersion;
.end method

.method public abstract isChunked()Z
.end method

.method public abstract isKeepAlive()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract setChunked(Z)V
.end method

.method public abstract setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
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

.method public abstract setProtocolVersion(Lorg/jboss/netty/handler/codec/http/HttpVersion;)V
.end method
