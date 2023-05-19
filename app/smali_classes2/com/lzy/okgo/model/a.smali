.class public final Lcom/lzy/okgo/model/a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Throwable;

.field private c:Lokhttp3/Call;

.field private d:Lokhttp3/Response;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/a;

    invoke-direct {v0}, Lcom/lzy/okgo/model/a;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/a;->j(Z)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/a;->k(Lokhttp3/Call;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/a;->l(Lokhttp3/Response;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/a;->i(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static m(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/a;

    invoke-direct {v0}, Lcom/lzy/okgo/model/a;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/a;->j(Z)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/a;->h(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/a;->k(Lokhttp3/Call;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/a;->l(Lokhttp3/Response;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->d:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public e()Lokhttp3/Call;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->c:Lokhttp3/Call;

    return-object v0
.end method

.method public f()Lokhttp3/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->d:Lokhttp3/Response;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/a;->d:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method public k(Lokhttp3/Call;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->c:Lokhttp3/Call;

    return-void
.end method

.method public l(Lokhttp3/Response;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/a;->d:Lokhttp3/Response;

    return-void
.end method
