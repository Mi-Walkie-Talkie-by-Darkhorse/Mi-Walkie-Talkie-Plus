.class final Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMapSingle.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x775a28d5b42d01b7L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:Lio/reactivex/disposables/a;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Lio/reactivex/internal/util/AtomicThrowable;

.field final f:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/u",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/queue/a",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/disposables/b;

.field volatile i:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/u",
            "<+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->f:Lio/reactivex/b/g;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->b:Z

    new-instance v0, Lio/reactivex/disposables/a;

    invoke-direct {v0}, Lio/reactivex/disposables/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c:Lio/reactivex/disposables/a;

    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()Lio/reactivex/internal/queue/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/queue/a",
            "<TR;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/a;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method a(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver",
            "<TT;TR;>.InnerObserver;TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/a;->c(Lio/reactivex/disposables/b;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->get()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->a:Lio/reactivex/q;

    invoke-interface {v2, p2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/a;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->a()Lio/reactivex/internal/queue/a;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p2}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver",
            "<TT;TR;>.InnerObserver;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->c(Lio/reactivex/disposables/b;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->b()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->c()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->a:Lio/reactivex/q;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->g:Ljava/util/concurrent/atomic/AtomicReference;

    move v1, v2

    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c()V

    invoke-interface {v6, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/queue/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    :goto_3
    if-nez v5, :cond_5

    move v0, v2

    :goto_4
    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v6, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Lio/reactivex/q;->onComplete()V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    neg-int v0, v1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_8
    invoke-interface {v6, v5}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->i:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->b()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->f:Lio/reactivex/b/g;

    invoke-interface {v0, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null SingleSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/u;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;)V

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->i:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v2, v1}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Lio/reactivex/u;->a(Lio/reactivex/t;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->h:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->h:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
