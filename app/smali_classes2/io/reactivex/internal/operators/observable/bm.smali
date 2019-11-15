.class public final Lio/reactivex/internal/operators/observable/bm;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableSkip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/bm$a;
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
.method public constructor <init>(Lio/reactivex/o;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/bm;->b:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bm;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/bm$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/bm;->b:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/bm$a;-><init>(Lio/reactivex/q;J)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
