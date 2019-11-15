.class final Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/HttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

.field before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

.field final hash:I

.field final key:Ljava/lang/String;

.field next:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->hash:I

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    iput-object p3, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addBefore(Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, p1, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object p0, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    return-void
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->value:Ljava/lang/String;

    return-object v0
.end method

.method remove()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->after:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    iput-object v1, v0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->before:Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/handler/codec/http/HttpCodecUtil;->validateHeaderValue(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->value:Ljava/lang/String;

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpHeaders$HeaderEntry;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
