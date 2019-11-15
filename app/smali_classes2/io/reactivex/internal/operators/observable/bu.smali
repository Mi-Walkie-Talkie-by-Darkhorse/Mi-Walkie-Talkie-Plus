.class public final Lio/reactivex/internal/operators/observable/bu;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableTimeInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/bu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;",
        "Lio/reactivex/e/b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/r;

.field final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/o;Ljava/util/concurrent/TimeUnit;Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/bu;->b:Lio/reactivex/r;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/bu;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/e/b",
            "<TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bu;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/bu$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/bu;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/bu;->b:Lio/reactivex/r;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/bu$a;-><init>(Lio/reactivex/q;Ljava/util/concurrent/TimeUnit;Lio/reactivex/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
