.class public abstract Lcom/ksyun/ks3/services/a/e;
.super Lcom/ksyun/ks3/services/a/c;
.source "PutObjectResponseHandler.java"

# interfaces
.implements Lcom/ksyun/ks3/model/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/ks3/services/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "PutObjectResponseHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PutObjectResponseHandler finalize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/a/e;->onTaskCancel()V

    return-void
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

    invoke-virtual/range {v0 .. v5}, Lcom/ksyun/ks3/services/a/e;->onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public final onFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/a/e;->onTaskFinish()V

    return-void
.end method

.method public final onProgress(II)V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/a/e;->onTaskStart()V

    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ksyun/ks3/services/a/e;->onTaskSuccess(I[Lorg/apache/http/Header;)V

    return-void
.end method

.method public abstract onTaskCancel()V
.end method

.method public abstract onTaskFailure(ILcom/ksyun/ks3/exception/a;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onTaskFinish()V
.end method

.method public abstract onTaskStart()V
.end method

.method public abstract onTaskSuccess(I[Lorg/apache/http/Header;)V
.end method
