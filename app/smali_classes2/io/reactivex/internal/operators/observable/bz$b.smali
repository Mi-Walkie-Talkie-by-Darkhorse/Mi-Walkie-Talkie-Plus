.class final Lio/reactivex/internal/operators/observable/bz$b;
.super Lio/reactivex/internal/observers/k;
.source "ObservableWindowBoundarySupplier.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/k",
        "<TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/k",
        "<TT;>;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field static final l:Ljava/lang/Object;


# instance fields
.field final g:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+",
            "Lio/reactivex/o",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field final h:I

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

.field k:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/bz$b;->l:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/q;Ljava/util/concurrent/Callable;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;",
            "Ljava/util/concurrent/Callable",
            "<+",
            "Lio/reactivex/o",
            "<TB;>;>;I)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/bz$b;->g:Ljava/util/concurrent/Callable;

    iput p3, p0, Lio/reactivex/internal/operators/observable/bz$b;->h:I

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->c:Z

    return-void
.end method

.method f()V
    .locals 10

    const/4 v4, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->b:Lio/reactivex/internal/a/f;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/bz$b;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/bz$b;->k:Lio/reactivex/subjects/UnicastSubject;

    move v3, v4

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/bz$b;->d:Z

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->e_()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    move v2, v4

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    neg-int v2, v3

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/bz$b;->a(I)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_5
    sget-object v2, Lio/reactivex/internal/operators/observable/bz$b;->l:Ljava/lang/Object;

    if-ne v7, v2, :cond_7

    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_6

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    goto :goto_2

    :cond_6
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->c:Z

    if-nez v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/bz$b;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The ObservableSource supplied is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->h:I

    invoke-static {v2}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v2

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/bz$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->k:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v5, v2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    new-instance v6, Lio/reactivex/internal/operators/observable/bz$a;

    invoke-direct {v6, p0}, Lio/reactivex/internal/operators/observable/bz$a;-><init>(Lio/reactivex/internal/operators/observable/bz$b;)V

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1, v6}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-interface {v5, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-static {v7}, Lio/reactivex/internal/util/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto/16 :goto_0
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->b:Lio/reactivex/internal/a/f;

    sget-object v1, Lio/reactivex/internal/operators/observable/bz$b;->l:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->f()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->c:Z

    return v0
.end method

.method public onComplete()V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->f()V

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/bz$b;->e:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->f()V

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->k:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/bz$b;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->b:Lio/reactivex/internal/a/f;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/bz$b;->f()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->i:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/bz$b;->i:Lio/reactivex/disposables/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/bz$b;->a:Lio/reactivex/q;

    invoke-interface {v1, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bz$b;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The first window ObservableSource supplied is null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->h:I

    invoke-static {v2}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->k:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v1, v2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    new-instance v1, Lio/reactivex/internal/operators/observable/bz$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/observable/bz$a;-><init>(Lio/reactivex/internal/operators/observable/bz$b;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/bz$b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
