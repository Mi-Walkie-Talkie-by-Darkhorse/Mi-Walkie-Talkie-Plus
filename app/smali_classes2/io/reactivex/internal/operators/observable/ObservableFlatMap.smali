.class public final Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableFlatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/b/g;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->b:Lio/reactivex/b/g;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->c:Z

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->d:I

    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->e:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->a:Lio/reactivex/o;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->b:Lio/reactivex/b/g;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Lio/reactivex/o;Lio/reactivex/q;Lio/reactivex/b/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->b:Lio/reactivex/b/g;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->c:Z

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->e:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;-><init>(Lio/reactivex/q;Lio/reactivex/b/g;ZII)V

    invoke-interface {v6, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
