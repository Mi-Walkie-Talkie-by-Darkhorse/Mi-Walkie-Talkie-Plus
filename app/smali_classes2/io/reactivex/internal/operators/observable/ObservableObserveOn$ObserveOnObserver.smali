.class final Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "ObservableObserveOn.java"

# interfaces
.implements Lio/reactivex/q;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
        "<TT;>;",
        "Lio/reactivex/q",
        "<TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b45d4a143741ca0L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/r$c;

.field final c:Z

.field final d:I

.field e:Lio/reactivex/internal/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/a/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/disposables/b;

.field g:Ljava/lang/Throwable;

.field volatile h:Z

.field volatile i:Z

.field j:I

.field k:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/r$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/r$c;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->c:Z

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->d:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->k:Z

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(ZZLio/reactivex/q;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/q",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    invoke-interface {v1}, Lio/reactivex/internal/a/g;->c()V

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_4

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->g:Ljava/lang/Throwable;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->c:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_4

    if-eqz v1, :cond_1

    invoke-interface {p3, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v1}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    invoke-interface {v2}, Lio/reactivex/internal/a/g;->c()V

    invoke-interface {p3, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v1}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v1}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->c()V

    return-void
.end method

.method d()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v0, p0}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->i:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->c()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 7

    const/4 v1, 0x1

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    move v0, v1

    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    invoke-interface {v3}, Lio/reactivex/internal/a/g;->b()Z

    move-result v5

    invoke-virtual {p0, v2, v5, v4}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a(ZZLio/reactivex/q;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v4, v6}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    :cond_3
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    :try_start_0
    invoke-interface {v3}, Lio/reactivex/internal/a/g;->e_()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-nez v6, :cond_4

    move v2, v1

    :goto_1
    invoke-virtual {p0, v5, v2, v4}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a(ZZLio/reactivex/q;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_2

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-interface {v3}, Lio/reactivex/internal/a/g;->c()V

    invoke-interface {v4, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public e_()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->e_()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 4

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->i:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->g:Ljava/lang/Throwable;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->c:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->g:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->b:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_1

    :cond_4
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->d()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->g:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->d()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    invoke-interface {v0, p1}, Lio/reactivex/internal/a/g;->a(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->d()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->f:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->f:Lio/reactivex/disposables/b;

    instance-of v0, p1, Lio/reactivex/internal/a/b;

    if-eqz v0, :cond_2

    check-cast p1, Lio/reactivex/internal/a/b;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lio/reactivex/internal/a/b;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->j:I

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->h:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->j:I

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/reactivex/internal/queue/a;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->d:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e:Lio/reactivex/internal/a/g;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->e()V

    goto :goto_0
.end method
