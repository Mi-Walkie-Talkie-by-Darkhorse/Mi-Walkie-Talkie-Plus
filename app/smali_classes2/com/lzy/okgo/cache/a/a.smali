.class public abstract Lcom/lzy/okgo/cache/a/a;
.super Ljava/lang/Object;
.source "BaseCachePolicy.java"

# interfaces
.implements Lcom/lzy/okgo/cache/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/cache/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile b:Z

.field protected volatile c:I

.field protected d:Z

.field protected e:Lokhttp3/Call;

.field protected f:Lb/c/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected g:Lcom/lzy/okgo/cache/CacheEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/lzy/okgo/cache/a/a;->c:I

    .line 3
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/cache/a/a;Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lzy/okgo/cache/a/a;->j(Lokhttp3/Headers;Ljava/lang/Object;)V

    return-void
.end method

.method private j(Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->i()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->b:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->i()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lb/c/a/g/a;->b(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, Lb/c/a/e/b;->l()Lb/c/a/e/b;

    move-result-object p1

    iget-object p2, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/c/a/e/b;->n(Ljava/lang/String;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lb/c/a/e/b;->l()Lb/c/a/e/b;

    move-result-object p2

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lb/c/a/e/b;->o(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;

    :goto_0
    return-void
.end method


# virtual methods
.method public e()Lcom/lzy/okgo/cache/CacheEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->m()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v2

    iget-object v2, v2, Lcom/lzy/okgo/model/HttpParams;->a:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lb/c/a/g/b;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->i()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->b:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->c(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->i()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v2

    .line 6
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->b:Lcom/lzy/okgo/cache/CacheMode;

    if-eq v2, v0, :cond_2

    .line 7
    invoke-static {}, Lb/c/a/e/b;->l()Lb/c/a/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/a/e/b;->j(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    .line 8
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-static {v1, v0, v2}, Lb/c/a/g/a;->a(Lcom/lzy/okgo/request/base/Request;Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/cache/CacheMode;)V

    .line 9
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->k()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/lzy/okgo/cache/CacheEntity;->a(Lcom/lzy/okgo/cache/CacheMode;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/cache/CacheEntity;->j(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->f()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    return-object v0
.end method

.method public f(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized g()Lokhttp3/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/lzy/okgo/cache/a/a;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/lzy/okgo/cache/a/a;->d:Z

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->n()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    .line 4
    iget-boolean v0, p0, Lcom/lzy/okgo/cache/a/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "Already executed!"

    .line 6
    invoke-static {v0}, Lcom/lzy/okgo/exception/HttpException;->a(Ljava/lang/String;)Lcom/lzy/okgo/exception/HttpException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    new-instance v1, Lcom/lzy/okgo/cache/a/a$a;

    invoke-direct {v1, p0}, Lcom/lzy/okgo/cache/a/a$a;-><init>(Lcom/lzy/okgo/cache/a/a;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method protected i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lb/c/a/a;->h()Lb/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/a;->g()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
