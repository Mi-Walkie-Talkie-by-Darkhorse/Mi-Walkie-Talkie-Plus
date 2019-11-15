.class public Lio/reactivex/internal/schedulers/e;
.super Lio/reactivex/r$c;
.source "NewThreadWorker.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# instance fields
.field volatile a:Z

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/r$c;-><init>()V

    invoke-static {p1}, Lio/reactivex/internal/schedulers/g;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex/internal/schedulers/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/e;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->a:Lio/reactivex/internal/disposables/EmptyDisposable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;
    .locals 4
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/reactivex/internal/disposables/a;
        .annotation build Lio/reactivex/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;

    invoke-direct {v0, v1, p5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/a;)V

    if-eqz p5, :cond_0

    invoke-interface {p5, v0}, Lio/reactivex/internal/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p5, :cond_1

    invoke-interface {p5, v0}, Lio/reactivex/internal/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    :cond_1
    invoke-static {v1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public b(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 8

    const-wide/16 v4, 0x0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    cmp-long v1, p4, v4

    if-gtz v1, :cond_1

    new-instance v1, Lio/reactivex/internal/schedulers/b;

    iget-object v2, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/schedulers/b;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    cmp-long v0, p2, v4

    if-gtz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lio/reactivex/internal/schedulers/b;->a(Ljava/util/concurrent/Future;)V

    :goto_1
    return-object v1

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    sget-object v1, Lio/reactivex/internal/disposables/EmptyDisposable;->a:Lio/reactivex/internal/disposables/EmptyDisposable;

    goto :goto_1

    :cond_1
    new-instance v1, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;-><init>(Ljava/lang/Runnable;)V

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/schedulers/ScheduledDirectPeriodicTask;->a(Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    sget-object v1, Lio/reactivex/internal/disposables/EmptyDisposable;->a:Lio/reactivex/internal/disposables/EmptyDisposable;

    goto :goto_1
.end method

.method public b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;
    .locals 4

    new-instance v0, Lio/reactivex/internal/schedulers/ScheduledDirectTask;

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/ScheduledDirectTask;->a(Ljava/util/concurrent/Future;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->a:Lio/reactivex/internal/disposables/EmptyDisposable;

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/e;->a:Z

    iget-object v0, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/e;->a:Z

    iget-object v0, p0, Lio/reactivex/internal/schedulers/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/e;->a:Z

    return v0
.end method
