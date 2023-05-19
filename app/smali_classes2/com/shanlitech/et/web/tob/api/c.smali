.class Lcom/shanlitech/et/web/tob/api/c;
.super Ljava/lang/Object;
.source "CallbackWrapper.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/shanlitech/et/web/tob/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shanlitech/et/web/tob/api/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 0
    .param p1    # Lcom/shanlitech/et/web/tob/api/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/c;->a:Lcom/shanlitech/et/web/tob/api/g;

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/c;->a:Lcom/shanlitech/et/web/tob/api/g;

    invoke-interface {p1, p2}, Lcom/shanlitech/et/web/tob/api/g;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "TT;>;>;",
            "Lretrofit2/Response<",
            "Lcom/shanlitech/et/web/tob/api/RespWrapper<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/c;->a:Lcom/shanlitech/et/web/tob/api/g;

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shanlitech/et/web/tob/api/RespWrapper;

    invoke-interface {p1, v0, v1, p2}, Lcom/shanlitech/et/web/tob/api/g;->a(ILjava/lang/String;Lcom/shanlitech/et/web/tob/api/RespWrapper;)V

    return-void
.end method
