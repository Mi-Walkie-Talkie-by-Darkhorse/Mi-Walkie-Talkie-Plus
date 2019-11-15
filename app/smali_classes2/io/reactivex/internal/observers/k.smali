.class public abstract Lio/reactivex/internal/observers/k;
.super Lio/reactivex/internal/observers/m;
.source "QueueDrainObserver.java"

# interfaces
.implements Lio/reactivex/internal/util/h;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/m;",
        "Lio/reactivex/internal/util/h",
        "<TU;TV;>;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TV;>;"
        }
    .end annotation
.end field

.field protected final b:Lio/reactivex/internal/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/a/f",
            "<TU;>;"
        }
    .end annotation
.end field

.field protected volatile c:Z

.field protected volatile d:Z

.field protected e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TV;>;",
            "Lio/reactivex/internal/a/f",
            "<TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/observers/m;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/k;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/observers/k;->b:Lio/reactivex/internal/a/f;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method public a(Lio/reactivex/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TV;>;TU;)V"
        }
    .end annotation

    return-void
.end method

.method protected final a(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/observers/k;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/observers/k;->b:Lio/reactivex/internal/a/f;

    iget-object v2, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/k;->a(Lio/reactivex/q;Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/k;->a(I)I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1, p1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/k;->a(Lio/reactivex/internal/a/f;Lio/reactivex/q;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->c:Z

    return v0
.end method

.method protected final b(Ljava/lang/Object;ZLio/reactivex/disposables/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "Lio/reactivex/disposables/b;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/observers/k;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/observers/k;->b:Lio/reactivex/internal/a/f;

    iget-object v2, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lio/reactivex/internal/a/f;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/observers/k;->a(Lio/reactivex/q;Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/k;->a(I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1, p1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/k;->a(Lio/reactivex/internal/a/f;Lio/reactivex/q;ZLio/reactivex/disposables/b;Lio/reactivex/internal/util/h;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/observers/k;->c()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/k;->d:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/observers/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/k;->e:Ljava/lang/Throwable;

    return-object v0
.end method
