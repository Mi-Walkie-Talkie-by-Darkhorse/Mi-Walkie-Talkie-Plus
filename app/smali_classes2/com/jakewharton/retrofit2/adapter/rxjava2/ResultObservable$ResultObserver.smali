.class Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;
.super Ljava/lang/Object;
.source "ResultObservable.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/q",
        "<",
        "Lretrofit2/k",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field private final observer:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-",
            "Lcom/jakewharton/retrofit2/adapter/rxjava2/Result",
            "<TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lcom/jakewharton/retrofit2/adapter/rxjava2/Result",
            "<TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->observer:Lio/reactivex/q;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->observer:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->observer:Lio/reactivex/q;

    invoke-static {p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;->error(Ljava/lang/Throwable;)Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->observer:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->observer:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lretrofit2/k;

    invoke-virtual {p0, p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->onNext(Lretrofit2/k;)V

    return-void
.end method

.method public onNext(Lretrofit2/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/k",
            "<TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->observer:Lio/reactivex/q;

    invoke-static {p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;->response(Lretrofit2/k;)Lcom/jakewharton/retrofit2/adapter/rxjava2/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/ResultObservable$ResultObserver;->observer:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    return-void
.end method
