.class Lcom/ksyun/ks3/services/g$3;
.super Ljava/lang/Object;
.source "Ks3HttpExector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

.field final synthetic b:Lcom/ksyun/ks3/services/d;

.field final synthetic c:Lcom/loopj/android/http/d;

.field final synthetic d:Lcom/ksyun/ks3/services/g;


# direct methods
.method constructor <init>(Lcom/ksyun/ks3/services/g;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/g$3;->d:Lcom/ksyun/ks3/services/g;

    iput-object p2, p0, Lcom/ksyun/ks3/services/g$3;->a:Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    iput-object p3, p0, Lcom/ksyun/ks3/services/g$3;->b:Lcom/ksyun/ks3/services/d;

    iput-object p4, p0, Lcom/ksyun/ks3/services/g$3;->c:Lcom/loopj/android/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ksyun/ks3/services/g$3;->a:Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    iget-object v1, p0, Lcom/ksyun/ks3/services/g$3;->b:Lcom/ksyun/ks3/services/d;

    iget-object v2, p0, Lcom/ksyun/ks3/services/g$3;->c:Lcom/loopj/android/http/d;

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/ks3/services/request/Ks3HttpRequest;->a(Lcom/ksyun/ks3/services/d;Lcom/loopj/android/http/d;)V
    :try_end_0
    .catch Lcom/ksyun/ks3/exception/Ks3ClientException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ksyun/ks3/services/g$3;->b:Lcom/ksyun/ks3/services/d;

    iput-boolean v3, v1, Lcom/ksyun/ks3/services/d;->a:Z

    iget-object v1, p0, Lcom/ksyun/ks3/services/g$3;->c:Lcom/loopj/android/http/d;

    invoke-virtual {v1, v3, v4, v4, v0}, Lcom/loopj/android/http/d;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0
.end method
