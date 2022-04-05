.class public final Lio/reactivex/internal/operators/flowable/FlowableBlockingSubscribe;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static subscribe(Lc/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/util/BlockingIgnoringReceiver;

    invoke-direct {v0}, Lio/reactivex/internal/util/BlockingIgnoringReceiver;-><init>()V

    new-instance v1, Lio/reactivex/internal/subscribers/LambdaSubscriber;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v2

    sget-object v3, Lio/reactivex/internal/functions/Functions;->REQUEST_MAX:Lio/reactivex/functions/Consumer;

    invoke-direct {v1, v2, v0, v0, v3}, Lio/reactivex/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)V

    invoke-interface {p0, v1}, Lc/a/b;->subscribe(Lc/a/c;)V

    invoke-static {v0, v1}, Lio/reactivex/internal/util/BlockingHelper;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lio/reactivex/disposables/Disposable;)V

    iget-object p0, v0, Lio/reactivex/internal/util/BlockingIgnoringReceiver;->error:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static subscribe(Lc/a/b;Lc/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b<",
            "+TT;>;",
            "Lc/a/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lio/reactivex/internal/subscribers/BlockingSubscriber;

    invoke-direct {v1, v0}, Lio/reactivex/internal/subscribers/BlockingSubscriber;-><init>(Ljava/util/Queue;)V

    invoke-interface {p0, v1}, Lc/a/b;->subscribe(Lc/a/c;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    :cond_3
    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    sget-object v2, Lio/reactivex/internal/subscribers/BlockingSubscriber;->TERMINATED:Ljava/lang/Object;

    if-eq p0, v2, :cond_5

    invoke-static {p0, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lc/a/c;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Lio/reactivex/internal/subscribers/BlockingSubscriber;->cancel()V

    invoke-interface {p1, p0}, Lc/a/c;->onError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static subscribe(Lc/a/b;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b<",
            "+TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/subscribers/LambdaSubscriber;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->REQUEST_MAX:Lio/reactivex/functions/Consumer;

    invoke-direct {v0, p1, p2, p3, v1}, Lio/reactivex/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableBlockingSubscribe;->subscribe(Lc/a/b;Lc/a/c;)V

    return-void
.end method

.method public static subscribe(Lc/a/b;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a/b<",
            "+TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "I)V"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "number > 0 required"

    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/internal/subscribers/BoundedSubscriber;

    invoke-static {p4}, Lio/reactivex/internal/functions/Functions;->boundedConsumer(I)Lio/reactivex/functions/Consumer;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/subscribers/BoundedSubscriber;-><init>(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;I)V

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableBlockingSubscribe;->subscribe(Lc/a/b;Lc/a/c;)V

    return-void
.end method
