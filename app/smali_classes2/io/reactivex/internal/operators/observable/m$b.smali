.class final Lio/reactivex/internal/operators/observable/m$b;
.super Lio/reactivex/internal/observers/k;
.source "ObservableBufferTimed.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/m;
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
        "<-TT;>;>",
        "Lio/reactivex/internal/observers/k",
        "<TT;TU;TU;>;",
        "Lio/reactivex/disposables/b;",
        "Ljava/lang/Runnable;"
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

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;

.field final j:Lio/reactivex/r;

.field k:Lio/reactivex/disposables/b;

.field l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final m:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/q;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;",
            "Ljava/util/concurrent/Callable",
            "<TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/m$b;->g:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/m$b;->h:J

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/m$b;->i:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/m$b;->j:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/reactivex/q;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/m$b;->a(Lio/reactivex/q;Ljava/util/Collection;)V

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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->k:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->a:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->l:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/m$b;->l:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$b;->b:Lio/reactivex/internal/a/f;

    invoke-interface {v1, v0}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/m$b;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->b:Lio/reactivex/internal/a/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$b;->a:Lio/reactivex/q;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/k;->a(Lio/reactivex/internal/a/f;Lio/reactivex/q;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

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

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->l:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->l:Ljava/util/Collection;

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
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->k:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m$b;->k:Lio/reactivex/disposables/b;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->l:Ljava/util/Collection;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/m$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->j:Lio/reactivex/r;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m$b;->h:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/m$b;->h:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/m$b;->i:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m$b;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$b;->a:Lio/reactivex/q;

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$b;->l:Ljava/util/Collection;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->l:Ljava/util/Collection;

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$b;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$b;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m$b;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/internal/operators/observable/m$b;->a(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V

    goto :goto_0
.end method
