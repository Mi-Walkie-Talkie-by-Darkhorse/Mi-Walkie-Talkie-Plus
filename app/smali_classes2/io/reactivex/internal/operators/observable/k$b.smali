.class final Lio/reactivex/internal/operators/observable/k$b;
.super Lio/reactivex/internal/observers/k;
.source "ObservableBufferBoundarySupplier.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/k",
        "<TT;TU;TU;>;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final g:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+",
            "Lio/reactivex/o",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field i:Lio/reactivex/disposables/b;

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/q;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;",
            "Ljava/util/concurrent/Callable",
            "<TU;>;",
            "Ljava/util/concurrent/Callable",
            "<+",
            "Lio/reactivex/o",
            "<TB;>;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/k$b;->g:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/k$b;->h:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/reactivex/q;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/k$b;->a(Lio/reactivex/q;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lio/reactivex/q;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;TU;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$b;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k$b;->f()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->b:Lio/reactivex/internal/a/f;

    invoke-interface {v0}, Lio/reactivex/internal/a/f;->c()V

    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method g()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The boundary ObservableSource supplied is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/o;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v3, Lio/reactivex/internal/operators/observable/k$a;

    invoke-direct {v3, p0}, Lio/reactivex/internal/operators/observable/k$a;-><init>(Lio/reactivex/internal/operators/observable/k$b;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/k$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/disposables/b;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/k$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k$b;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/k$b;->c:Z

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->i:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/k$b;->k:Ljava/util/Collection;

    if-nez v2, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->k:Ljava/util/Collection;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1, v3}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, p0}, Lio/reactivex/internal/operators/observable/k$b;->a(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$b;->c:Z

    return v0
.end method

.method public onComplete()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->k:Ljava/util/Collection;

    if-nez v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->k:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->b:Lio/reactivex/internal/a/f;

    invoke-interface {v1, v0}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/k$b;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->b:Lio/reactivex/internal/a/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->a:Lio/reactivex/q;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/k;->a(Lio/reactivex/internal/a/f;Lio/reactivex/q;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/k$b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->k:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->i:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k$b;->i:Lio/reactivex/disposables/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k$b;->a:Lio/reactivex/q;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The buffer supplied is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->k:Ljava/util/Collection;

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k$b;->h:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The boundary ObservableSource supplied is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lio/reactivex/internal/operators/observable/k$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/observable/k$a;-><init>(Lio/reactivex/internal/operators/observable/k$b;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/k$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/k$b;->c:Z

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/k$b;->c:Z

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/k$b;->c:Z

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0
.end method
