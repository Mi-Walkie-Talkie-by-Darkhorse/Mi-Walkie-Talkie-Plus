.class Lcom/lzy/okgo/cache/a/d$c;
.super Ljava/lang/Object;
.source "FirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/d;->d(Lcom/lzy/okgo/cache/CacheEntity;Lb/c/a/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/cache/CacheEntity;

.field final synthetic b:Lcom/lzy/okgo/cache/a/d;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/d;Lcom/lzy/okgo/cache/CacheEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    iput-object p2, p0, Lcom/lzy/okgo/cache/a/d$c;->a:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    iget-object v1, v0, Lcom/lzy/okgo/cache/a/a;->f:Lb/c/a/c/b;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v1, v0}, Lb/c/a/c/b;->d(Lcom/lzy/okgo/request/base/Request;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/a/a;->g()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$c;->a:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->c()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    iget-object v3, v3, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    invoke-static {v2, v1, v3, v0}, Lcom/lzy/okgo/model/a;->m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/a;->f:Lb/c/a/c/b;

    invoke-interface {v1, v0}, Lb/c/a/c/b;->g(Lcom/lzy/okgo/model/a;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/a/a;->h()V

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    iget-object v3, v3, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    invoke-static {v2, v3, v0, v1}, Lcom/lzy/okgo/model/a;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$c;->b:Lcom/lzy/okgo/cache/a/d;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/a;->f:Lb/c/a/c/b;

    invoke-interface {v1, v0}, Lb/c/a/c/b;->b(Lcom/lzy/okgo/model/a;)V

    return-void
.end method
