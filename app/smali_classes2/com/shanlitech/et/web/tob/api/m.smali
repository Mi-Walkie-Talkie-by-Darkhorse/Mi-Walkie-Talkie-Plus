.class public Lcom/shanlitech/et/web/tob/api/m;
.super Lcom/shanlitech/et/web/tob/api/b;
.source "UserServiceAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/web/tob/api/m$b;
    }
.end annotation


# instance fields
.field private a:Lcom/shanlitech/et/web/tob/api/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shanlitech/et/web/tob/api/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;-><init>()V

    return-void
.end method

.method public static f()Lcom/shanlitech/et/web/tob/api/m;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/tob/api/m$b;->a:Lcom/shanlitech/et/web/tob/api/m;

    return-object v0
.end method

.method private g()Lcom/shanlitech/et/web/tob/api/l;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/m;->a:Lcom/shanlitech/et/web/tob/api/l;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call initService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected e(Lretrofit2/Retrofit;)V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/tob/api/l;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/tob/api/l;

    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/m;->a:Lcom/shanlitech/et/web/tob/api/l;

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;->g()Lcom/shanlitech/et/web/tob/api/l;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/shanlitech/et/web/tob/api/l;->b(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p6}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    .line 2
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;->g()Lcom/shanlitech/et/web/tob/api/l;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/web/tob/api/l;->d(Ljava/lang/String;Ljava/lang/String;J)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p5}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    .line 2
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;->g()Lcom/shanlitech/et/web/tob/api/l;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/shanlitech/et/web/tob/api/l;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p7}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    .line 3
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public k(Ljava/lang/String;JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;->g()Lcom/shanlitech/et/web/tob/api/l;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/shanlitech/et/web/tob/api/l;->g(Ljava/lang/String;J)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p4}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public l(Ljava/util/List;Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;->g()Lcom/shanlitech/et/web/tob/api/l;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    .line 2
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {p1}, Lcom/blankj/utilcode/util/h;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/shanlitech/et/web/tob/api/l;->a(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {v0, p2}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    .line 4
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public m(Ljava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;->g()Lcom/shanlitech/et/web/tob/api/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shanlitech/et/web/tob/api/l;->e(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {v0, p2}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/m;->g()Lcom/shanlitech/et/web/tob/api/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shanlitech/et/web/tob/api/l;->c(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p3}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    .line 2
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
