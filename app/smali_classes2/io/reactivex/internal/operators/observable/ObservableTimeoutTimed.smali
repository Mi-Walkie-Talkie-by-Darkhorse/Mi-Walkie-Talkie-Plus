.class public final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableTimeoutTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$a;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;,
        Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;
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


# static fields
.field static final f:Lio/reactivex/disposables/b;


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/r;

.field final e:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$a;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$a;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->f:Lio/reactivex/disposables/b;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;Lio/reactivex/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            "Lio/reactivex/o",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->d:Lio/reactivex/r;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->e:Lio/reactivex/o;

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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->e:Lio/reactivex/o;

    if-nez v0, :cond_0

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;

    new-instance v1, Lio/reactivex/observers/e;

    invoke-direct {v1, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->d:Lio/reactivex/r;

    invoke-virtual {v5}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedObserver;-><init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;)V

    invoke-interface {v6, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->d:Lio/reactivex/r;

    invoke-virtual {v1}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v5

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;->e:Lio/reactivex/o;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTimedOtherObserver;-><init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;Lio/reactivex/o;)V

    invoke-interface {v7, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
