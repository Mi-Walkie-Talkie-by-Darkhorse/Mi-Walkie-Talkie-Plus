.class Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;
.super Ljava/lang/Object;
.source "BodyObservable.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyObserver"
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
            "<-TR;>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/q;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->terminated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->terminated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never happen! Report as a bug with the full stacktrace."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lretrofit2/k;

    invoke-virtual {p0, p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->onNext(Lretrofit2/k;)V

    return-void
.end method

.method public onNext(Lretrofit2/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/k",
            "<TR;>;)V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Lretrofit2/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/q;

    invoke-virtual {p1}, Lretrofit2/k;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->terminated:Z

    new-instance v1, Lcom/jakewharton/retrofit2/adapter/rxjava2/HttpException;

    invoke-direct {v1, p1}, Lcom/jakewharton/retrofit2/adapter/rxjava2/HttpException;-><init>(Lretrofit2/k;)V

    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/q;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/BodyObservable$BodyObserver;->observer:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    return-void
.end method
