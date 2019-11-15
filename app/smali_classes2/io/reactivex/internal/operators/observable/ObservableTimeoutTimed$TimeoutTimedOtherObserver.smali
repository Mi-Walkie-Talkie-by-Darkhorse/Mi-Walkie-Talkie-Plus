.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableTimeoutTimed.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutTimedOtherObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x401c7afea9c993b3L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/r$c;

.field final e:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field f:Lio/reactivex/disposables/b;

.field final g:Lio/reactivex/internal/disposables/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/disposables/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile h:J

.field volatile i:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;Lio/reactivex/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r$c;",
            "Lio/reactivex/o",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->a:Lio/reactivex/q;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->d:Lio/reactivex/r$c;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->e:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/disposables/f;

    const/16 v1, 0x8

    invoke-direct {v0, p1, p0, v1}, Lio/reactivex/internal/disposables/f;-><init>(Lio/reactivex/q;Lio/reactivex/disposables/b;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->g:Lio/reactivex/internal/disposables/f;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->e:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/observers/h;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->g:Lio/reactivex/internal/disposables/f;

    invoke-direct {v1, v2}, Lio/reactivex/internal/observers/h;-><init>(Lio/reactivex/internal/disposables/f;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method a(J)V
    .locals 5

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->f:Lio/reactivex/disposables/b;

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->d:Lio/reactivex/r$c;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver$a;

    invoke-direct {v1, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;J)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->d:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->d:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->i:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->i:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->g:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/f;->b(Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->d:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->i:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->g:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/disposables/f;->a(Ljava/lang/Throwable;Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->d:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->h:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->g:Lio/reactivex/internal/disposables/f;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-virtual {v2, p1, v3}, Lio/reactivex/internal/disposables/f;->a(Ljava/lang/Object;Lio/reactivex/disposables/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->a(J)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->f:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->f:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->g:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->a(Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->g:Lio/reactivex/internal/disposables/f;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;->a(J)V

    :cond_0
    return-void
.end method
