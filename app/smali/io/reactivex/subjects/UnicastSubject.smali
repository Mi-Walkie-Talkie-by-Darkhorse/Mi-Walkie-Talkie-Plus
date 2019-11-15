.class public final Lio/reactivex/subjects/UnicastSubject;
.super Lio/reactivex/subjects/b;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/q",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field volatile e:Z

.field volatile f:Z

.field g:Ljava/lang/Throwable;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
            "<TT;>;"
        }
    .end annotation
.end field

.field j:Z


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/subjects/b;-><init>()V

    new-instance v0, Lio/reactivex/internal/queue/a;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/a;->a(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "onTerminate"

    invoke-static {p2, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lio/reactivex/subjects/UnicastSubject;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/subjects/b;-><init>()V

    new-instance v0, Lio/reactivex/internal/queue/a;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/a;->a(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p2, p0, Lio/reactivex/subjects/UnicastSubject;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method public static a()Lio/reactivex/subjects/UnicastSubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-static {}, Lio/reactivex/subjects/UnicastSubject;->bufferSize()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/reactivex/subjects/UnicastSubject;-><init>(IZ)V

    return-object v0
.end method

.method public static a(I)Lio/reactivex/subjects/UnicastSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/reactivex/subjects/UnicastSubject;-><init>(IZ)V

    return-object v0
.end method

.method public static a(ILjava/lang/Runnable;)Lio/reactivex/subjects/UnicastSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lio/reactivex/subjects/UnicastSubject;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method a(Lio/reactivex/q;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v6, p0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->d:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    move v3, v1

    move v4, v1

    :cond_0
    :goto_1
    iget-boolean v5, p0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-eqz v5, :cond_3

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v6}, Lio/reactivex/internal/a/g;->c()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    iget-object v5, p0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    invoke-virtual {v5}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    move v5, v1

    :goto_3
    if-eqz v7, :cond_6

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0, v6, p1}, Lio/reactivex/subjects/UnicastSubject;->a(Lio/reactivex/internal/a/g;Lio/reactivex/q;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    :cond_4
    if-eqz v5, :cond_6

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/UnicastSubject;->c(Lio/reactivex/q;)V

    goto :goto_2

    :cond_5
    move v5, v2

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    iget-object v5, p0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_7
    invoke-interface {p1, v8}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method a(Lio/reactivex/internal/a/g;Lio/reactivex/q;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/a/g",
            "<TT;>;",
            "Lio/reactivex/q",
            "<-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/internal/a/g;->c()V

    invoke-interface {p2, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lio/reactivex/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->d:Z

    if-nez v0, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-eqz v3, :cond_3

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->c()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2, p1}, Lio/reactivex/subjects/UnicastSubject;->a(Lio/reactivex/internal/a/g;Lio/reactivex/q;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    invoke-interface {p1, v5}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/UnicastSubject;->c(Lio/reactivex/q;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v1, v1

    invoke-virtual {v3, v1}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method c()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method c(Lio/reactivex/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lio/reactivex/q;->onComplete()V

    goto :goto_0
.end method

.method d()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/q;

    const/4 v1, 0x1

    move v2, v1

    move-object v1, v0

    move v0, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lio/reactivex/subjects/UnicastSubject;->b(Lio/reactivex/q;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lio/reactivex/subjects/UnicastSubject;->a(Lio/reactivex/q;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/q;

    move v2, v1

    move-object v1, v0

    move v0, v2

    goto :goto_1
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->c()V

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->d()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->g:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->c()V

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->d()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->d()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_1
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->d()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0
.end method
