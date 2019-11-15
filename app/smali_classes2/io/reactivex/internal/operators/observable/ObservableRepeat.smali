.class public final Lio/reactivex/internal/operators/observable/ObservableRepeat;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableRepeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J


# direct methods
.method public constructor <init>(Lio/reactivex/k;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->b:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    const-wide v2, 0x7fffffffffffffffL

    new-instance v4, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v4}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    invoke-interface {p1, v4}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->b:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->b:J

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->a:Lio/reactivex/o;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;-><init>(Lio/reactivex/q;JLio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/o;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;->a()V

    return-void
.end method
