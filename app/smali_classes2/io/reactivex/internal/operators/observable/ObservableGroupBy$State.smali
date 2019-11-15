.class final Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableGroupBy.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/o",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x35762a4bbab31538L


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver",
            "<*TK;TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field volatile e:Z

.field f:Ljava/lang/Throwable;

.field final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/q",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver",
            "<*TK;TT;>;TK;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b:Lio/reactivex/internal/queue/a;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->a:Ljava/lang/Object;

    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->e:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->f:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->e:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b()V

    return-void
.end method

.method a(ZZLio/reactivex/q;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/q",
            "<-TT;>;Z)Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->c()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->f:Ljava/lang/Throwable;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    invoke-interface {p3, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->f:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->c()V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b:Lio/reactivex/internal/queue/a;

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->d:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/q;

    move-object v2, v0

    move v3, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->e:Z

    invoke-virtual {v4}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, v6, v0, v2, v5}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->a(ZZLio/reactivex/q;Z)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_5

    :cond_3
    neg-int v0, v3

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->addAndGet(I)I

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/q;

    move-object v2, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v2, v7}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->c:Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public subscribe(Lio/reactivex/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->b()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Observer allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0
.end method
