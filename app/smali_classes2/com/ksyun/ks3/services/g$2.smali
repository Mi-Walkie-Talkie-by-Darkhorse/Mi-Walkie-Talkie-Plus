.class Lcom/ksyun/ks3/services/g$2;
.super Lcom/ksyun/ks3/services/d;
.source "Ks3HttpExector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/model/acl/b;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Lcom/loopj/android/http/d;Lcom/ksyun/ks3/services/f;Landroid/content/Context;Ljava/lang/String;Lcom/ksyun/ks3/services/b;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/loopj/android/http/d;

.field final synthetic e:Lcom/ksyun/ks3/services/g;


# direct methods
.method constructor <init>(Lcom/ksyun/ks3/services/g;Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Landroid/content/Context;Lcom/loopj/android/http/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/ks3/services/g$2;->e:Lcom/ksyun/ks3/services/g;

    iput-object p2, p0, Lcom/ksyun/ks3/services/g$2;->b:Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    iput-object p3, p0, Lcom/ksyun/ks3/services/g$2;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/ksyun/ks3/services/g$2;->d:Lcom/loopj/android/http/d;

    invoke-direct {p0}, Lcom/ksyun/ks3/services/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/ks3/auth/a;)V
    .locals 4

    iget-object v0, p0, Lcom/ksyun/ks3/services/g$2;->e:Lcom/ksyun/ks3/services/g;

    iget-object v1, p0, Lcom/ksyun/ks3/services/g$2;->b:Lcom/ksyun/ks3/services/request/Ks3HttpRequest;

    iget-object v2, p0, Lcom/ksyun/ks3/services/g$2;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/ksyun/ks3/services/g$2;->d:Lcom/loopj/android/http/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ksyun/ks3/services/g;->a(Lcom/ksyun/ks3/services/request/Ks3HttpRequest;Landroid/content/Context;Lcom/loopj/android/http/d;)V

    return-void
.end method

.method public b(Lcom/ksyun/ks3/auth/a;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ksyun/ks3/services/g$2;->d:Lcom/loopj/android/http/d;

    const/4 v1, 0x0

    new-instance v2, Lcom/ksyun/ks3/exception/Ks3ClientException;

    invoke-virtual {p1}, Lcom/ksyun/ks3/auth/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ksyun/ks3/exception/Ks3ClientException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/loopj/android/http/d;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    return-void
.end method
