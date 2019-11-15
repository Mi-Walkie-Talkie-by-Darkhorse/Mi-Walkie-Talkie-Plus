.class public interface abstract Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/HttpData;


# virtual methods
.method public abstract getValue()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
