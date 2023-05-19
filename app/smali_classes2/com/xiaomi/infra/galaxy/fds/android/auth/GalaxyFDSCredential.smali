.class public interface abstract Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;
.super Ljava/lang/Object;
.source "GalaxyFDSCredential.java"


# virtual methods
.method public abstract addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation
.end method

.method public abstract addParam(Ljava/lang/String;)Ljava/lang/String;
.end method
