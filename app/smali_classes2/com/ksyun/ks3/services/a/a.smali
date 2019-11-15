.class public abstract Lcom/ksyun/ks3/services/a/a;
.super Lcom/ksyun/ks3/services/a/c;
.source "CompleteMultipartUploadResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public abstract onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 6

    new-instance v2, Lcom/ksyun/ks3/exception/a;

    invoke-direct {v2, p1, p3, p4}, Lcom/ksyun/ks3/exception/a;-><init>(I[BLjava/lang/Throwable;)V

    if-nez p3, :cond_0

    const-string v4, ""

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/ks3/services/a/a;->onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public final onFinish()V
    .locals 0

    return-void
.end method

.method public final onProgress(II)V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/a;)V
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    new-instance v0, Lcom/ksyun/ks3/model/a/a;

    invoke-direct {v0}, Lcom/ksyun/ks3/model/a/a;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/a/a;->onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/a/a;)V

    return-void
.end method
