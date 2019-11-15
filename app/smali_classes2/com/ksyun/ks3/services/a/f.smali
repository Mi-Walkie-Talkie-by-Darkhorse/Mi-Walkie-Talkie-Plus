.class public abstract Lcom/ksyun/ks3/services/a/f;
.super Lcom/ksyun/ks3/services/a/c;
.source "UploadPartResponceHandler.java"

# interfaces
.implements Lcom/ksyun/ks3/model/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/c;-><init>()V

    return-void
.end method

.method private parse([Lorg/apache/http/Header;)Lcom/ksyun/ks3/model/d;
    .locals 5

    new-instance v1, Lcom/ksyun/ks3/model/d;

    invoke-direct {v1}, Lcom/ksyun/ks3/model/d;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ksyun/ks3/model/HttpHeaders;->A:Lcom/ksyun/ks3/model/HttpHeaders;

    invoke-virtual {v4}, Lcom/ksyun/ks3/model/HttpHeaders;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksyun/ks3/model/d;->a(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
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

    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/ks3/services/a/f;->onFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

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

.method public abstract onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/d;)V
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/ksyun/ks3/services/a/f;->parse([Lorg/apache/http/Header;)Lcom/ksyun/ks3/model/d;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ksyun/ks3/services/a/f;->onSuccess(I[Lorg/apache/http/Header;Lcom/ksyun/ks3/model/d;)V

    return-void
.end method
