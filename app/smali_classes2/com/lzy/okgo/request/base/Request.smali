.class public abstract Lcom/lzy/okgo/request/base/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/Request;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638f96e7c9b0eb5cL


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected transient c:Lokhttp3/OkHttpClient;

.field protected transient d:Ljava/lang/Object;

.field protected e:I

.field protected f:Lcom/lzy/okgo/cache/CacheMode;

.field protected g:Ljava/lang/String;

.field protected h:J

.field protected i:Lcom/lzy/okgo/model/HttpParams;

.field protected j:Lcom/lzy/okgo/model/HttpHeaders;

.field protected transient k:Lokhttp3/Request;

.field protected transient l:Lb/c/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient m:Lb/c/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient n:Lb/c/a/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/d/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient o:Lcom/lzy/okgo/cache/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient p:Lcom/lzy/okgo/request/base/a$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->i:Lcom/lzy/okgo/model/HttpParams;

    .line 3
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->j:Lcom/lzy/okgo/model/HttpHeaders;

    .line 4
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->a:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->b:Ljava/lang/String;

    .line 6
    invoke-static {}, Lb/c/a/a;->h()Lb/c/a/a;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->c()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 9
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->h()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 11
    :cond_1
    invoke-virtual {p1}, Lb/c/a/a;->e()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/c/a/a;->e()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->r(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    .line 12
    :cond_2
    invoke-virtual {p1}, Lb/c/a/a;->d()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb/c/a/a;->d()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->p(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    .line 13
    :cond_3
    invoke-virtual {p1}, Lb/c/a/a;->j()I

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/request/base/Request;->e:I

    .line 14
    invoke-virtual {p1}, Lb/c/a/a;->b()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->f:Lcom/lzy/okgo/cache/CacheMode;

    .line 15
    invoke-virtual {p1}, Lb/c/a/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->h:J

    return-void
.end method


# virtual methods
.method public a()Lb/c/a/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/b/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->l:Lb/c/a/b/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/c/a/b/a;

    invoke-direct {v0, p0}, Lb/c/a/b/a;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "cacheKey == null"

    .line 1
    invoke-static {p1, v0}, Lb/c/a/g/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->f:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public d(Lb/c/a/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/b<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Lb/c/a/g/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->m:Lb/c/a/c/b;

    .line 3
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->a()Lb/c/a/b/b;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lb/c/a/b/b;->a(Lb/c/a/c/b;)V

    return-void
.end method

.method public abstract e(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract f()Lokhttp3/RequestBody;
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->f:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public j()Lcom/lzy/okgo/cache/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->o:Lcom/lzy/okgo/cache/a/b;

    return-object v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->h:J

    return-wide v0
.end method

.method public l()Lb/c/a/d/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/d/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->n:Lb/c/a/d/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->m:Lb/c/a/c/b;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->n:Lb/c/a/d/a;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->n:Lb/c/a/d/a;

    const-string v1, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    invoke-static {v0, v1}, Lb/c/a/g/b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->n:Lb/c/a/d/a;

    return-object v0
.end method

.method public m()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->i:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public n()Lokhttp3/Call;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->f()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/lzy/okgo/request/base/a;

    iget-object v2, p0, Lcom/lzy/okgo/request/base/Request;->m:Lb/c/a/c/b;

    invoke-direct {v1, v0, v2}, Lcom/lzy/okgo/request/base/a;-><init>(Lokhttp3/RequestBody;Lb/c/a/c/b;)V

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->p:Lcom/lzy/okgo/request/base/a$c;

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/request/base/a;->e(Lcom/lzy/okgo/request/base/a$c;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/lzy/okgo/request/base/Request;->e(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->k:Lokhttp3/Request;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->e(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->k:Lokhttp3/Request;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->c:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    invoke-static {}, Lb/c/a/a;->h()Lb/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/a;->i()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->c:Lokhttp3/OkHttpClient;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->c:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->k:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lzy/okgo/request/base/Request;->e:I

    return v0
.end method

.method public p(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->j:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->k(Lcom/lzy/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->j:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public r(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->i:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->b(Lcom/lzy/okgo/model/HttpParams;)V

    return-object p0
.end method
