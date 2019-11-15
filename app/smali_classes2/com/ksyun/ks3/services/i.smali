.class public Lcom/ksyun/ks3/services/i;
.super Ljava/lang/Object;
.source "SyncHttpClientFactory.java"


# static fields
.field private static a:Lcom/loopj/android/http/k;


# direct methods
.method static a()Lcom/loopj/android/http/k;
    .locals 1

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loopj/android/http/k;

    invoke-direct {v0}, Lcom/loopj/android/http/k;-><init>()V

    sput-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    :cond_0
    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    return-object v0
.end method

.method static a(Lcom/ksyun/ks3/services/f;)Lcom/loopj/android/http/k;
    .locals 5

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loopj/android/http/k;

    invoke-direct {v0}, Lcom/loopj/android/http/k;-><init>()V

    sput-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/k;->c(I)V

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/k;->b(I)V

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/k;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/k;->a(I)V

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/k;->a(II)V

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->h()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->h()I

    move-result v2

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ksyun/ks3/services/f;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/http/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/ksyun/ks3/services/i;->a:Lcom/loopj/android/http/k;

    return-object v0
.end method
