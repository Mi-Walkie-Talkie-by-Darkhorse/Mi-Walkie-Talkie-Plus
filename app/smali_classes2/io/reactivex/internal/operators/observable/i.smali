.class public final Lio/reactivex/internal/operators/observable/i;
.super Ljava/lang/Object;
.source "ObservableBlockingSubscribe.java"


# direct methods
.method public static a(Lio/reactivex/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o",
            "<+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/util/d;

    invoke-direct {v0}, Lio/reactivex/internal/util/d;-><init>()V

    new-instance v1, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->b()Lio/reactivex/b/f;

    move-result-object v2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->b()Lio/reactivex/b/f;

    move-result-object v3

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lio/reactivex/b/f;Lio/reactivex/b/f;Lio/reactivex/b/a;Lio/reactivex/b/f;)V

    invoke-interface {p0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    invoke-static {v0, v1}, Lio/reactivex/internal/util/c;->a(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/disposables/b;)V

    iget-object v0, v0, Lio/reactivex/internal/util/d;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Lio/reactivex/o;Lio/reactivex/b/f;Lio/reactivex/b/f;Lio/reactivex/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o",
            "<+TT;>;",
            "Lio/reactivex/b/f",
            "<-TT;>;",
            "Lio/reactivex/b/f",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/b/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->b()Lio/reactivex/b/f;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lio/reactivex/b/f;Lio/reactivex/b/f;Lio/reactivex/b/a;Lio/reactivex/b/f;)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/i;->a(Lio/reactivex/o;Lio/reactivex/q;)V

    return-void
.end method

.method public static a(Lio/reactivex/o;Lio/reactivex/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o",
            "<+TT;>;",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Lio/reactivex/internal/observers/BlockingObserver;

    invoke-direct {v2, v1}, Lio/reactivex/internal/observers/BlockingObserver;-><init>(Ljava/util/Queue;)V

    invoke-interface {p1, v2}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-interface {p0, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :cond_0
    invoke-virtual {v2}, Lio/reactivex/internal/observers/BlockingObserver;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    invoke-virtual {v2}, Lio/reactivex/internal/observers/BlockingObserver;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lio/reactivex/internal/observers/BlockingObserver;->a:Ljava/lang/Object;

    if-eq p0, v3, :cond_1

    invoke-static {v0, p1}, Lio/reactivex/internal/util/NotificationLite;->b(Ljava/lang/Object;Lio/reactivex/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Lio/reactivex/internal/observers/BlockingObserver;->dispose()V

    invoke-interface {p1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
