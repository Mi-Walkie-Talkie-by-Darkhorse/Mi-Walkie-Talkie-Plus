.class final Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeout.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/internal/operators/observable/ObservableTimeout$a;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutOtherObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/internal/operators/observable/ObservableTimeout$a;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1b2b8cce8b3b5a72L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/internal/disposables/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/disposables/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/disposables/b;

.field g:Z

.field volatile h:J


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/o;Lio/reactivex/b/g;Lio/reactivex/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/o",
            "<TU;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<TV;>;>;",
            "Lio/reactivex/o",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->b:Lio/reactivex/o;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->c:Lio/reactivex/b/g;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->d:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/disposables/f;

    const/16 v1, 0x8

    invoke-direct {v0, p1, p0, v1}, Lio/reactivex/internal/disposables/f;-><init>(Lio/reactivex/q;Lio/reactivex/disposables/b;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->h:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->d:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/observers/h;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    invoke-direct {v1, v2}, Lio/reactivex/internal/observers/h;-><init>(Lio/reactivex/internal/disposables/f;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->g:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->b(Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->g:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/disposables/f;->a(Ljava/lang/Throwable;Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->h:J

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/disposables/f;->a(Ljava/lang/Object;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->c:Lio/reactivex/b/g;

    invoke-interface {v1, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "The ObservableSource returned is null"

    invoke-static {v1, v4}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;

    invoke-direct {v4, p0, v2, v3}, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$a;J)V

    invoke-virtual {p0, v0, v4}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v4}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 6

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->f:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->a(Lio/reactivex/disposables/b;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->b:Lio/reactivex/o;

    if-eqz v1, :cond_1

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;

    const-wide/16 v4, 0x0

    invoke-direct {v2, p0, v4, v5}, Lio/reactivex/internal/operators/observable/ObservableTimeout$b;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeout$a;J)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    invoke-interface {v0, v3}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-interface {v1, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;->e:Lio/reactivex/internal/disposables/f;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method
