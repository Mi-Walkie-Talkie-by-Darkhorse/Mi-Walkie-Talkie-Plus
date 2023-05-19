.class public Lcom/lzy/okgo/cache/a/e;
.super Lcom/lzy/okgo/cache/a/a;
.source "NoCachePolicy.java"


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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/cache/a/e$b;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/e$b;-><init>(Lcom/lzy/okgo/cache/a/e;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/a;->i(Ljava/lang/Runnable;)V

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
    new-instance v0, Lcom/lzy/okgo/cache/a/e$a;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/e$a;-><init>(Lcom/lzy/okgo/cache/a/e;Lcom/lzy/okgo/model/a;)V

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
    new-instance p1, Lcom/lzy/okgo/cache/a/e$c;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/a/e$c;-><init>(Lcom/lzy/okgo/cache/a/e;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/a/a;->i(Ljava/lang/Runnable;)V

    return-void
.end method
