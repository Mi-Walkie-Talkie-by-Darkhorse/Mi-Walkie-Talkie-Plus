.class final Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable;
.super Lio/reactivex/k;
.source "CallObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable$CallDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k",
        "<",
        "Lretrofit2/k",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/b",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable;->originalCall:Lretrofit2/b;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lretrofit2/k",
            "<TT;>;>;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable;->originalCall:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->d()Lretrofit2/b;

    move-result-object v4

    new-instance v0, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable$CallDisposable;

    invoke-direct {v0, v4}, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable$CallDisposable;-><init>(Lretrofit2/b;)V

    invoke-interface {p1, v0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :try_start_0
    invoke-interface {v4}, Lretrofit2/b;->a()Lretrofit2/k;

    move-result-object v0

    invoke-interface {v4}, Lretrofit2/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v4}, Lretrofit2/b;->c()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {p1}, Lio/reactivex/q;->onComplete()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move v1, v2

    :goto_1
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_2

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lretrofit2/b;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_2
    invoke-interface {p1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v4}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move v1, v3

    goto :goto_1
.end method
