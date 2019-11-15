.class final Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCombineLatest.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final c:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Z

.field volatile g:Z

.field volatile h:Z

.field final i:Lio/reactivex/internal/util/AtomicThrowable;

.field j:I

.field k:I


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;",
            "Lio/reactivex/b/g",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->i:Lio/reactivex/internal/util/AtomicThrowable;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->b:Lio/reactivex/b/g;

    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->f:Z

    new-array v0, p3, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->d:[Ljava/lang/Object;

    new-array v0, p3, [Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;

    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-direct {v0, p4}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->e:Lio/reactivex/internal/queue/a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lio/reactivex/internal/queue/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/a",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->b(Lio/reactivex/internal/queue/a;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a()V

    return-void
.end method

.method a(Ljava/lang/Object;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;

    aget-object v5, v2, p2

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g:Z

    if-eqz v2, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->d:[Ljava/lang/Object;

    array-length v6, v2

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->d:[Ljava/lang/Object;

    aget-object v7, v2, p2

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->j:I

    if-nez v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->j:I

    :cond_2
    move v4, v2

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->k:I

    if-nez p1, :cond_7

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->k:I

    move v3, v2

    :goto_1
    if-ne v4, v6, :cond_8

    move v2, v1

    :goto_2
    if-eq v3, v6, :cond_3

    if-nez p1, :cond_4

    if-nez v7, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-nez v0, :cond_a

    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->e:Lio/reactivex/internal/queue/a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_6

    if-nez p1, :cond_0

    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->b()V

    goto :goto_0

    :cond_7
    :try_start_1
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->d:[Ljava/lang/Object;

    aput-object p1, v3, p2

    move v3, v2

    goto :goto_1

    :cond_8
    move v2, v0

    goto :goto_2

    :cond_9
    if-nez p1, :cond_5

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->i:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->h:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->i:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a([Lio/reactivex/o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/o",
            "<+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;

    invoke-direct {v4, p0, v1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;I)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a:Lio/reactivex/q;

    invoke-interface {v1, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :goto_1
    if-ge v0, v3, :cond_1

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g:Z

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v1, p1, v0

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method a(ZZLio/reactivex/q;Lio/reactivex/internal/queue/a;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/q",
            "<*>;",
            "Lio/reactivex/internal/queue/a",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a(Lio/reactivex/internal/queue/a;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p5, :cond_2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a(Lio/reactivex/internal/queue/a;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->i:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->i:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a(Lio/reactivex/internal/queue/a;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->i:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p3, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->e:Lio/reactivex/internal/queue/a;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->b(Lio/reactivex/internal/queue/a;)V

    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->e:Lio/reactivex/internal/queue/a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a:Lio/reactivex/q;

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->f:Z

    move v6, v7

    :goto_1
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->h:Z

    invoke-virtual {v4}, Lio/reactivex/internal/queue/a;->b()Z

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a(ZZLio/reactivex/q;Lio/reactivex/internal/queue/a;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->h:Z

    invoke-virtual {v4}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$a;

    if-nez v0, :cond_2

    move v2, v7

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a(ZZLio/reactivex/q;Lio/reactivex/internal/queue/a;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    neg-int v0, v6

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->b:Lio/reactivex/b/g;

    invoke-interface {v1, v0}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The combiner returned a null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-interface {v3, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g:Z

    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a(Lio/reactivex/internal/queue/a;)V

    invoke-interface {v3, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Lio/reactivex/internal/queue/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/a",
            "<*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lio/reactivex/internal/queue/a;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->a()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->e:Lio/reactivex/internal/queue/a;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->b(Lio/reactivex/internal/queue/a;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->g:Z

    return v0
.end method
