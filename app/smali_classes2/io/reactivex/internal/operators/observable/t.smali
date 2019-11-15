.class public final Lio/reactivex/internal/operators/observable/t;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/t$a;
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

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/o;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/t;->b:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/t;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/t;->d:Lio/reactivex/r;

    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/t;->e:Z

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

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/t;->e:Z

    if-eqz v0, :cond_0

    move-object v1, p1

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t;->d:Lio/reactivex/r;

    invoke-virtual {v0}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v5

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/t;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/t$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/t;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/t;->c:Ljava/util/concurrent/TimeUnit;

    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/t;->e:Z

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/t$a;-><init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;Z)V

    invoke-interface {v7, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void

    :cond_0
    new-instance v1, Lio/reactivex/observers/e;

    invoke-direct {v1, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    goto :goto_0
.end method
