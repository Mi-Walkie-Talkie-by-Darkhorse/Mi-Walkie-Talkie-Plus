.class Lcom/lzy/okgo/cache/a/a$a;
.super Ljava/lang/Object;
.source "BaseCachePolicy.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/cache/a/a;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget v0, v0, Lcom/lzy/okgo/cache/a/a;->c:I

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->o()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget p2, p1, Lcom/lzy/okgo/cache/a/a;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/lzy/okgo/cache/a/a;->c:I

    .line 3
    iget-object p1, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget-object p2, p1, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->n()Lokhttp3/Call;

    move-result-object p2

    iput-object p2, p1, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    .line 4
    iget-object p1, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget-boolean p1, p1, Lcom/lzy/okgo/cache/a/a;->b:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget-object p1, p1, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget-object p1, p1, Lcom/lzy/okgo/cache/a/a;->e:Lokhttp3/Call;

    invoke-interface {p1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, p1, v1, p2}, Lcom/lzy/okgo/model/a;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    invoke-interface {p2, p1}, Lcom/lzy/okgo/cache/a/b;->b(Lcom/lzy/okgo/model/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x194

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/cache/a/a;->f(Lokhttp3/Call;Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/a;->a:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->l()Lb/c/a/d/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lb/c/a/d/a;->f(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lzy/okgo/cache/a/a;->a(Lcom/lzy/okgo/cache/a/a;Lokhttp3/Headers;Ljava/lang/Object;)V

    .line 5
    invoke-static {v1, v0, p1, p2}, Lcom/lzy/okgo/model/a;->m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    invoke-interface {v2, v0}, Lcom/lzy/okgo/cache/a/b;->c(Lcom/lzy/okgo/model/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v1, p1, p2, v0}, Lcom/lzy/okgo/model/a;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    invoke-interface {p2, p1}, Lcom/lzy/okgo/cache/a/b;->b(Lcom/lzy/okgo/model/a;)V

    :goto_0
    return-void

    .line 9
    :cond_2
    :goto_1
    invoke-static {}, Lcom/lzy/okgo/exception/HttpException;->b()Lcom/lzy/okgo/exception/HttpException;

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/lzy/okgo/model/a;->c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/lzy/okgo/cache/a/a$a;->a:Lcom/lzy/okgo/cache/a/a;

    invoke-interface {p2, p1}, Lcom/lzy/okgo/cache/a/b;->b(Lcom/lzy/okgo/model/a;)V

    return-void
.end method
