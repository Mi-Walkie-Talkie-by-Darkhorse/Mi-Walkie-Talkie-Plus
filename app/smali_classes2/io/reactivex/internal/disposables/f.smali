.class public final Lio/reactivex/internal/disposables/f;
.super Lio/reactivex/internal/disposables/c;
.source "ObserverFullArbiter.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/disposables/c;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile d:Lio/reactivex/disposables/b;

.field e:Lio/reactivex/disposables/b;

.field volatile f:Z


# direct methods
.method public constructor <init>(Lio/reactivex/q;Lio/reactivex/disposables/b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/disposables/b;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/disposables/c;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/disposables/f;->b:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/disposables/f;->e:Lio/reactivex/disposables/b;

    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-direct {v0, p3}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/disposables/f;->c:Lio/reactivex/internal/queue/a;

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->a:Lio/reactivex/internal/disposables/EmptyDisposable;

    iput-object v0, p0, Lio/reactivex/internal/disposables/f;->d:Lio/reactivex/disposables/b;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/disposables/f;->e:Lio/reactivex/disposables/b;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/disposables/f;->e:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;Lio/reactivex/disposables/b;)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/disposables/f;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/disposables/f;->c:Lio/reactivex/internal/queue/a;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/f;->b()V

    goto :goto_0
.end method

.method public a(Lio/reactivex/disposables/b;)Z
    .locals 3

    iget-boolean v0, p0, Lio/reactivex/internal/disposables/f;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/disposables/f;->c:Lio/reactivex/internal/queue/a;

    iget-object v1, p0, Lio/reactivex/internal/disposables/f;->d:Lio/reactivex/disposables/b;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Lio/reactivex/disposables/b;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/f;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lio/reactivex/disposables/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex/disposables/b;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/disposables/f;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/disposables/f;->c:Lio/reactivex/internal/queue/a;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/f;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lio/reactivex/internal/disposables/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/disposables/f;->c:Lio/reactivex/internal/queue/a;

    iget-object v3, p0, Lio/reactivex/internal/disposables/f;->b:Lio/reactivex/q;

    move v0, v1

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lio/reactivex/internal/disposables/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lio/reactivex/internal/disposables/f;->d:Lio/reactivex/disposables/b;

    if-ne v4, v6, :cond_1

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->d(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->g(Ljava/lang/Object;)Lio/reactivex/disposables/b;

    move-result-object v4

    iget-object v5, p0, Lio/reactivex/internal/disposables/f;->d:Lio/reactivex/disposables/b;

    invoke-interface {v5}, Lio/reactivex/disposables/b;->dispose()V

    iget-boolean v5, p0, Lio/reactivex/internal/disposables/f;->f:Z

    if-nez v5, :cond_3

    iput-object v4, p0, Lio/reactivex/internal/disposables/f;->d:Lio/reactivex/disposables/b;

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Lio/reactivex/disposables/b;->dispose()V

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/f;->a()V

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    iget-boolean v5, p0, Lio/reactivex/internal/disposables/f;->f:Z

    if-nez v5, :cond_5

    iput-boolean v1, p0, Lio/reactivex/internal/disposables/f;->f:Z

    invoke-interface {v3, v4}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/f;->a()V

    iget-boolean v4, p0, Lio/reactivex/internal/disposables/f;->f:Z

    if-nez v4, :cond_1

    iput-boolean v1, p0, Lio/reactivex/internal/disposables/f;->f:Z

    invoke-interface {v3}, Lio/reactivex/q;->onComplete()V

    goto :goto_1

    :cond_7
    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Lio/reactivex/disposables/b;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/disposables/f;->c:Lio/reactivex/internal/queue/a;

    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/f;->b()V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/disposables/f;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/disposables/f;->f:Z

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/f;->a()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/disposables/f;->e:Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/f;->f:Z

    goto :goto_0
.end method
