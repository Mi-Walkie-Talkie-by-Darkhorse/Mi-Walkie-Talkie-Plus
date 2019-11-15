.class final Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableFlatMap.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final k:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver",
            "<**>;"
        }
    .end annotation
.end field

.field static final l:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver",
            "<**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1d634c9cafb5cc5aL


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I

.field volatile f:Lio/reactivex/internal/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/a/f",
            "<TU;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field final h:Lio/reactivex/internal/util/AtomicThrowable;

.field volatile i:Z

.field final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver",
            "<**>;>;"
        }
    .end annotation
.end field

.field m:Lio/reactivex/disposables/b;

.field n:J

.field o:J

.field p:I

.field q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/reactivex/o",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->k:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    new-array v0, v1, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->l:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b:Lio/reactivex/b/g;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c:Z

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e:I

    const v0, 0x7fffffff

    if-eq p4, v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->q:Ljava/util/Queue;

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->k:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()V

    :cond_0
    return-void
.end method

.method a(Lio/reactivex/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<+TU;>;)V"
        }
    .end annotation

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a(Ljava/util/concurrent/Callable;)V

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;

    if-nez v0, :cond_1

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:I

    monitor-exit p0

    :cond_0
    :goto_1
    return-void

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->n:J

    invoke-direct {v1, p0, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;J)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_1
.end method

.method a(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver",
            "<TT;TU;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lio/reactivex/internal/a/g;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/queue/a;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lio/reactivex/internal/a/g;

    :cond_2
    invoke-interface {v0, p1}, Lio/reactivex/internal/a/g;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()V

    goto :goto_0
.end method

.method a(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<+TU;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->get()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lio/reactivex/internal/a/f;

    if-nez v0, :cond_4

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_5

    new-instance v0, Lio/reactivex/internal/queue/a;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->e:I

    invoke-direct {v0, v2}, Lio/reactivex/internal/queue/a;-><init>(I)V

    :goto_1
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lio/reactivex/internal/a/f;

    :cond_4
    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scalar queue full?!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    invoke-direct {v0, v2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method a(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver",
            "<TT;TU;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->l:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v2

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 14

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/q;

    move v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lio/reactivex/internal/a/f;

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lio/reactivex/internal/a/f;->e_()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    if-nez v3, :cond_3

    :cond_4
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->f:Lio/reactivex/internal/a/f;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    array-length v8, v0

    if-eqz v3, :cond_8

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lio/reactivex/internal/a/f;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    if-nez v8, :cond_8

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_7

    invoke-interface {v7}, Lio/reactivex/q;->onComplete()V

    goto :goto_1

    :cond_6
    invoke-interface {v7, v3}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-interface {v7, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    if-eqz v8, :cond_18

    iget-wide v10, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:J

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    if-le v8, v3, :cond_9

    aget-object v5, v0, v3

    iget-wide v12, v5, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    cmp-long v5, v12, v10

    if-eqz v5, :cond_c

    :cond_9
    if-gt v8, v3, :cond_a

    move v3, v4

    :cond_a
    move v5, v4

    :goto_3
    if-ge v5, v8, :cond_b

    aget-object v6, v0, v3

    iget-wide v12, v6, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    cmp-long v6, v12, v10

    if-nez v6, :cond_11

    :cond_b
    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    aget-object v5, v0, v3

    iget-wide v10, v5, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    iput-wide v10, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:J

    :cond_c
    move v5, v3

    move v6, v4

    move v3, v4

    :goto_4
    if-ge v3, v8, :cond_15

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v9, v0, v5

    :cond_d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lio/reactivex/internal/a/g;

    if-nez v10, :cond_13

    :goto_5
    iget-boolean v10, v9, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->c:Z

    iget-object v11, v9, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->d:Lio/reactivex/internal/a/g;

    if-eqz v10, :cond_f

    if-eqz v11, :cond_e

    invoke-interface {v11}, Lio/reactivex/internal/a/g;->b()Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    invoke-virtual {p0, v9}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v2

    :cond_f
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_10

    move v5, v4

    :cond_10
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v8, :cond_12

    move v3, v4

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_13
    :try_start_0
    invoke-interface {v10}, Lio/reactivex/internal/a/g;->e_()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    if-nez v11, :cond_14

    if-nez v11, :cond_d

    goto :goto_5

    :catch_0
    move-exception v6

    invoke-static {v6}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a()V

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v10, v6}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v9}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V

    add-int/lit8 v3, v3, 0x1

    move v6, v2

    goto :goto_6

    :cond_14
    invoke-interface {v7, v11}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c()Z

    move-result v11

    if-eqz v11, :cond_13

    goto/16 :goto_1

    :cond_15
    iput v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->p:I

    aget-object v0, v0, v5

    iget-wide v8, v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a:J

    iput-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->o:J

    move v0, v6

    :goto_7
    if-eqz v0, :cond_17

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;

    if-nez v0, :cond_16

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:I

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_16
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a(Lio/reactivex/o;)V

    goto/16 :goto_0

    :cond_17
    neg-int v0, v1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto/16 :goto_0

    :cond_18
    move v0, v4

    goto :goto_7
.end method

.method b(Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver",
            "<TT;TU;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    array-length v4, v0

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, -0x1

    move v1, v3

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    if-ne v5, p1, :cond_4

    move v2, v1

    :cond_3
    if-ltz v2, :cond_1

    const/4 v1, 0x1

    if-ne v4, v1, :cond_5

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->k:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v4, -0x1

    new-array v1, v1, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method c()Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->c:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d()Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/q;

    invoke-interface {v2, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->m:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->l:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->l:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->l:[Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;

    if-eq v0, v2, :cond_1

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->h:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a()V

    goto :goto_0

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

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->b:Lio/reactivex/b/g;

    invoke-interface {v0, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:I

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->d:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->q:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->m:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->r:I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a(Lio/reactivex/o;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->m:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->m:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
