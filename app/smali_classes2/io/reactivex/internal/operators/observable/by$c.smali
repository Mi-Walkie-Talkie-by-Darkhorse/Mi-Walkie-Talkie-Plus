.class final Lio/reactivex/internal/operators/observable/by$c;
.super Lio/reactivex/internal/observers/k;
.source "ObservableWindowBoundarySelector.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
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


# instance fields
.field final g:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TB;>;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TB;+",
            "Lio/reactivex/o",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Lio/reactivex/disposables/a;

.field k:Lio/reactivex/disposables/b;

.field final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final n:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/o;Lio/reactivex/b/g;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;",
            "Lio/reactivex/o",
            "<TB;>;",
            "Lio/reactivex/b/g",
            "<-TB;+",
            "Lio/reactivex/o",
            "<TV;>;>;I)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/by$c;->g:Lio/reactivex/o;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/by$c;->h:Lio/reactivex/b/g;

    iput p4, p0, Lio/reactivex/internal/operators/observable/by$c;->i:I

    new-instance v0, Lio/reactivex/disposables/a;

    invoke-direct {v0}, Lio/reactivex/disposables/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->j:Lio/reactivex/disposables/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->m:Ljava/util/List;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/observable/by$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/by$a",
            "<TT;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->j:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->c(Lio/reactivex/disposables/b;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->b:Lio/reactivex/internal/a/f;

    new-instance v1, Lio/reactivex/internal/operators/observable/by$d;

    iget-object v2, p1, Lio/reactivex/internal/operators/observable/by$a;->b:Lio/reactivex/subjects/UnicastSubject;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/observable/by$d;-><init>(Lio/reactivex/subjects/UnicastSubject;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->g()V

    :cond_0
    return-void
.end method

.method public a(Lio/reactivex/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->b:Lio/reactivex/internal/a/f;

    new-instance v1, Lio/reactivex/internal/operators/observable/by$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lio/reactivex/internal/operators/observable/by$d;-><init>(Lio/reactivex/subjects/UnicastSubject;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->g()V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->k:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->j:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/by$c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$c;->c:Z

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->j:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method g()V
    .locals 12

    const/4 v4, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->b:Lio/reactivex/internal/a/f;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/by$c;->a:Lio/reactivex/q;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/by$c;->m:Ljava/util/List;

    move v3, v4

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/by$c;->d:Z

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->e_()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    move v2, v4

    :goto_1
    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->f()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/by$c;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-eqz v2, :cond_6

    neg-int v1, v3

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/by$c;->a(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v3, v1

    goto :goto_0

    :cond_6
    instance-of v2, v1, Lio/reactivex/internal/operators/observable/by$d;

    if-eqz v2, :cond_8

    check-cast v1, Lio/reactivex/internal/operators/observable/by$d;

    iget-object v2, v1, Lio/reactivex/internal/operators/observable/by$d;->a:Lio/reactivex/subjects/UnicastSubject;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lio/reactivex/internal/operators/observable/by$d;->a:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/by$d;->a:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/by$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->f()V

    goto :goto_4

    :cond_7
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/by$c;->c:Z

    if-nez v2, :cond_0

    iget v2, p0, Lio/reactivex/internal/operators/observable/by$c;->i:I

    invoke-static {v2}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v2}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/by$c;->h:Lio/reactivex/b/g;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/by$d;->b:Ljava/lang/Object;

    invoke-interface {v7, v1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "The ObservableSource supplied is null"

    invoke-static {v1, v7}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v7, Lio/reactivex/internal/operators/observable/by$a;

    invoke-direct {v7, p0, v2}, Lio/reactivex/internal/operators/observable/by$a;-><init>(Lio/reactivex/internal/operators/observable/by$c;Lio/reactivex/subjects/UnicastSubject;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/by$c;->j:Lio/reactivex/disposables/a;

    invoke-virtual {v2, v7}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/by$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    invoke-interface {v1, v7}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lio/reactivex/internal/operators/observable/by$c;->c:Z

    invoke-interface {v5, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/UnicastSubject;

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$c;->c:Z

    return v0
.end method

.method public onComplete()V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$c;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$c;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->g()V

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->j:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$c;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/by$c;->e:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$c;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->g()V

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->j:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->a:Lio/reactivex/q;

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

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/by$c;->a(I)I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->b:Lio/reactivex/internal/a/f;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/by$c;->g()V

    goto :goto_1
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->k:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/by$c;->k:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by$c;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/by$c;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/observable/by$b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/by$b;-><init>(Lio/reactivex/internal/operators/observable/by$c;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/by$c;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/by$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/by$c;->g:Lio/reactivex/o;

    invoke-interface {v1, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
