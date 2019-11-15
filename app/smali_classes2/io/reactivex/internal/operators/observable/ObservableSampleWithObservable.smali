.class public final Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;,
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;,
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$a;,
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;
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
.field final b:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<*>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/o",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->b:Lio/reactivex/o;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->c:Z

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

    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->a:Lio/reactivex/o;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->b:Lio/reactivex/o;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;-><init>(Lio/reactivex/q;Lio/reactivex/o;)V

    invoke-interface {v1, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->a:Lio/reactivex/o;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->b:Lio/reactivex/o;

    invoke-direct {v2, v0, v3}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;-><init>(Lio/reactivex/q;Lio/reactivex/o;)V

    invoke-interface {v1, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
