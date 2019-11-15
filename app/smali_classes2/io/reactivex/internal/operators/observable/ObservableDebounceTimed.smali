.class public final Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDebounceTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;,
        Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$a;
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

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/r;


# direct methods
.method public constructor <init>(Lio/reactivex/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;->d:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$a;

    new-instance v1, Lio/reactivex/observers/e;

    invoke-direct {v1, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;->d:Lio/reactivex/r;

    invoke-virtual {v5}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$a;-><init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;)V

    invoke-interface {v6, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
