.class public final Lio/reactivex/internal/operators/observable/al;
.super Lio/reactivex/k;
.source "ObservableFromFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/al;->a:Ljava/util/concurrent/Future;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/al;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/al;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    new-instance v1, Lio/reactivex/internal/observers/DeferredScalarDisposable;

    invoke-direct {v1, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/q;)V

    invoke-interface {p1, v1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/al;->c:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/al;->a:Ljava/util/concurrent/Future;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/al;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/al;->c:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const-string v2, "Future returned null"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->b(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/al;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
