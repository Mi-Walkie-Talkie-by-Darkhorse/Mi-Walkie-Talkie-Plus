.class final Lrx/e/a$a;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/e/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/f/b;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lrx/e/a$a;->a:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lrx/f/b;

    invoke-direct {v0}, Lrx/f/b;-><init>()V

    iput-object v0, p0, Lrx/e/a$a;->c:Lrx/f/b;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    invoke-static {}, Lrx/e/a;->d()Lrx/internal/util/RxThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/schedulers/c;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    new-instance v1, Lrx/e/a$a$1;

    invoke-direct {v1, p0}, Lrx/e/a$a$1;-><init>(Lrx/e/a$a;)V

    iget-wide v2, p0, Lrx/e/a$a;->a:J

    iget-wide v4, p0, Lrx/e/a$a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    iput-object v2, p0, Lrx/e/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lrx/e/a$a;->e:Ljava/util/concurrent/Future;

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method a()Lrx/e/a$c;
    .locals 2

    iget-object v0, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lrx/e/a;->a:Lrx/e/a$c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e/a$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    new-instance v0, Lrx/e/a$c;

    invoke-static {}, Lrx/e/a;->e()Lrx/internal/util/RxThreadFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/e/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v1, v0}, Lrx/f/b;->a(Lrx/f;)V

    goto :goto_0
.end method

.method a(Lrx/e/a$c;)V
    .locals 4

    invoke-virtual {p0}, Lrx/e/a$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/e/a$a;->a:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/e/a$c;->a(J)V

    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method b()V
    .locals 6

    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lrx/e/a$a;->c()J

    move-result-wide v2

    iget-object v0, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e/a$c;

    invoke-virtual {v0}, Lrx/e/a$c;->c()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    iget-object v4, p0, Lrx/e/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v4, v0}, Lrx/f/b;->b(Lrx/f;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method c()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lrx/e/a$a;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/e/a$a;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lrx/e/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/e/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v0}, Lrx/f/b;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/e/a$a;->c:Lrx/f/b;

    invoke-virtual {v1}, Lrx/f/b;->unsubscribe()V

    throw v0
.end method
