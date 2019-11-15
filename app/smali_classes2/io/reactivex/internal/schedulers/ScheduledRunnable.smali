.class public final Lio/reactivex/internal/schedulers/ScheduledRunnable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ScheduledRunnable.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/b;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final b:Ljava/lang/Object;

.field static final c:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x54ef67182406fc25L


# instance fields
.field final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/a;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-ne v0, v3, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v3, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_4

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lio/reactivex/internal/disposables/a;

    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/a;->c(Lio/reactivex/disposables/b;)Z

    goto :goto_1
.end method

.method public isDisposed()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v2, v5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex/internal/disposables/a;

    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/a;->c(Lio/reactivex/disposables/b;)Z

    :cond_0
    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    invoke-virtual {p0, v4, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {p0, v2, v5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Lio/reactivex/internal/disposables/a;

    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/a;->c(Lio/reactivex/disposables/b;)Z

    :cond_2
    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->b:Ljava/lang/Object;

    if-eq v0, v2, :cond_3

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->c:Ljava/lang/Object;

    invoke-virtual {p0, v4, v0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    throw v1
.end method
