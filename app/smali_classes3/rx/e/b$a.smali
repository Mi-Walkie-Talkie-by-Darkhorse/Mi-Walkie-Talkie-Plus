.class final Lrx/e/b$a;
.super Lrx/d$a;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lrx/f/b;

.field final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    iput-object p1, p0, Lrx/e/b$a;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/e/b$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/e/b$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lrx/f/b;

    invoke-direct {v0}, Lrx/f/b;-><init>()V

    iput-object v0, p0, Lrx/e/b$a;->b:Lrx/f/b;

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 3

    invoke-virtual {p0}, Lrx/e/b$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v1, p0, Lrx/e/b$a;->b:Lrx/f/b;

    invoke-direct {v0, p1, v1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;Lrx/f/b;)V

    iget-object v1, p0, Lrx/e/b$a;->b:Lrx/f/b;

    invoke-virtual {v1, v0}, Lrx/f/b;->a(Lrx/f;)V

    iget-object v1, p0, Lrx/e/b$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lrx/e/b$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lrx/e/b$a;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lrx/e/b$a;->b:Lrx/f/b;

    invoke-virtual {v2, v0}, Lrx/f/b;->b(Lrx/f;)V

    iget-object v0, p0, Lrx/e/b$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/d;->b()Lrx/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrx/d/a;->a(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lrx/e/b$a;->a(Lrx/b/a;)Lrx/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lrx/e/b$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lrx/f/d;->b()Lrx/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrx/e/b$a;->a:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrx/e/b$a;->a:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    :goto_1
    new-instance v2, Lrx/f/c;

    invoke-direct {v2}, Lrx/f/c;-><init>()V

    new-instance v3, Lrx/f/c;

    invoke-direct {v3}, Lrx/f/c;-><init>()V

    invoke-virtual {v3, v2}, Lrx/f/c;->a(Lrx/f;)V

    iget-object v1, p0, Lrx/e/b$a;->b:Lrx/f/b;

    invoke-virtual {v1, v3}, Lrx/f/b;->a(Lrx/f;)V

    new-instance v1, Lrx/e/b$a$1;

    invoke-direct {v1, p0, v3}, Lrx/e/b$a$1;-><init>(Lrx/e/b$a;Lrx/f/c;)V

    invoke-static {v1}, Lrx/f/d;->a(Lrx/b/a;)Lrx/f;

    move-result-object v1

    new-instance v4, Lrx/internal/schedulers/ScheduledAction;

    new-instance v5, Lrx/e/b$a$2;

    invoke-direct {v5, p0, v3, p1, v1}, Lrx/e/b$a$2;-><init>(Lrx/e/b$a;Lrx/f/c;Lrx/b/a;Lrx/f;)V

    invoke-direct {v4, v5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/b/a;)V

    invoke-virtual {v2, v4}, Lrx/f/c;->a(Lrx/f;)V

    :try_start_0
    invoke-interface {v0, v4, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v4, v0}, Lrx/internal/schedulers/ScheduledAction;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lrx/internal/schedulers/b;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lrx/d/d;->a()Lrx/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/d/d;->b()Lrx/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/d/a;->a(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lrx/e/b$a;->b:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lrx/e/b$a;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->run()V

    :cond_1
    iget-object v0, p0, Lrx/e/b$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    iget-object v0, p0, Lrx/e/b$a;->b:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->unsubscribe()V

    return-void
.end method
