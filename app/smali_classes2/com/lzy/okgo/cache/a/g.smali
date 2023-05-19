.class public Lcom/lzy/okgo/cache/a/g;
.super Lcom/lzy/okgo/cache/a/a;
.source "RequestFailedCachePolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/cache/a/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 0
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
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/a/a;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/lzy/okgo/model/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->g:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->e()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->f()Lokhttp3/Response;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/lzy/okgo/model/a;->m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/lzy/okgo/cache/a/g$b;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/g$b;-><init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/a;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/lzy/okgo/cache/a/g$c;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/g$c;-><init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/a;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/lzy/okgo/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/cache/a/g$a;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/g$a;-><init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/a;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lcom/lzy/okgo/cache/CacheEntity;Lb/c/a/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lb/c/a/c/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/lzy/okgo/cache/a/a;->f:Lb/c/a/c/b;

    .line 2
    new-instance p1, Lcom/lzy/okgo/cache/a/g$d;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/a/g$d;-><init>(Lcom/lzy/okgo/cache/a/g;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/a/a;->i(Ljava/lang/Runnable;)V

    return-void
.end method
