.class public interface abstract Lorg/jboss/netty/handler/codec/http/multipart/HttpDataFactory;
.super Ljava/lang/Object;
.source "HttpDataFactory.java"


# virtual methods
.method public abstract cleanAllHttpDatas()V
.end method

.method public abstract cleanRequestHttpDatas(Lorg/jboss/netty/handler/codec/http/HttpRequest;)V
.end method

.method public abstract createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
.end method

.method public abstract createAttribute(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/Attribute;
.end method

.method public abstract createFileUpload(Lorg/jboss/netty/handler/codec/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)Lorg/jboss/netty/handler/codec/http/multipart/FileUpload;
.end method

.method public abstract removeHttpDataFromClean(Lorg/jboss/netty/handler/codec/http/HttpRequest;Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)V
.end method
