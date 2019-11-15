.class public interface abstract Lorg/jboss/netty/handler/codec/http/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/handler/codec/http/Cookie;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getComment()Ljava/lang/String;
.end method

.method public abstract getCommentUrl()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getMaxAge()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPorts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract isDiscard()Z
.end method

.method public abstract isHttpOnly()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract setComment(Ljava/lang/String;)V
.end method

.method public abstract setCommentUrl(Ljava/lang/String;)V
.end method

.method public abstract setDiscard(Z)V
.end method

.method public abstract setDomain(Ljava/lang/String;)V
.end method

.method public abstract setHttpOnly(Z)V
.end method

.method public abstract setMaxAge(I)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setPorts(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract setPorts([I)V
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public abstract setVersion(I)V
.end method
