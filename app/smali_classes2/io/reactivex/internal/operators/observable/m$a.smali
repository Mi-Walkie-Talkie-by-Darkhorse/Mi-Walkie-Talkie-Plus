.class final Lio/reactivex/internal/operators/observable/m$a;
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
    name = "a"
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

.field final j:I

.field final k:Z

.field final l:Lio/reactivex/r$c;

.field m:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field n:Lio/reactivex/disposables/b;

.field o:Lio/reactivex/disposables/b;

.field p:J

.field q:J


# direct methods
.method constructor <init>(Lio/reactivex/q;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/r$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;",
            "Ljava/util/concurrent/Callable",
            "<TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Lio/reactivex/r$c;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/m$a;->g:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/m$a;->h:J

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/m$a;->i:Ljava/util/concurrent/TimeUnit;

    iput p6, p0, Lio/reactivex/internal/operators/observable/m$a;->j:I

    iput-boolean p7, p0, Lio/reactivex/internal/operators/observable/m$a;->k:Z

    iput-object p8, p0, Lio/reactivex/internal/operators/observable/m$a;->l:Lio/reactivex/r$c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/reactivex/q;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/m$a;->a(Lio/reactivex/q;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lio/reactivex/q;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;TU;)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/m$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/m$a;->c:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->o:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->l:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/m$a;->c:Z

    return v0
.end method

.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->l:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->b:Lio/reactivex/internal/a/f;

    invoke-interface {v1, v0}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/m$a;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->b:Lio/reactivex/internal/a/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->a:Lio/reactivex/q;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/k;->a(Lio/reactivex/internal/a/f;Lio/reactivex/q;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)V

    :cond_0
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
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->l:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    if-nez v0, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, p0, Lio/reactivex/internal/operators/observable/m$a;->j:I

    if-ge v1, v2, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m$a;->p:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/m$a;->p:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/m$a;->k:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->n:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p0}, Lio/reactivex/internal/operators/observable/m$a;->b(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V

    :try_start_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    monitor-enter p0

    :try_start_3
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/m$a;->q:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/m$a;->q:J

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/m$a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->l:Lio/reactivex/r$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m$a;->h:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/m$a;->h:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/m$a;->i:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->n:Lio/reactivex/disposables/b;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m$a;->dispose()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->o:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m$a;->o:Lio/reactivex/disposables/b;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->l:Lio/reactivex/r$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m$a;->h:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/m$a;->h:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/m$a;->i:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->n:Lio/reactivex/disposables/b;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->a:Lio/reactivex/q;

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->l:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->g:Ljava/util/concurrent/Callable;

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
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m$a;->p:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/m$a;->q:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m$a;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m$a;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/m$a;->m:Ljava/util/Collection;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/internal/operators/observable/m$a;->b(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
