.class public final Lio/reactivex/internal/operators/observable/ObservableInterval;
.super Lio/reactivex/k;
.source "ObservableInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/k",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/r;

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/r;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->b:J

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->c:J

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->a:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;-><init>(Lio/reactivex/q;)V

    invoke-interface {p1, v1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->a:Lio/reactivex/r;

    instance-of v2, v0, Lio/reactivex/internal/schedulers/i;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;->a(Lio/reactivex/disposables/b;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;->a(Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method
