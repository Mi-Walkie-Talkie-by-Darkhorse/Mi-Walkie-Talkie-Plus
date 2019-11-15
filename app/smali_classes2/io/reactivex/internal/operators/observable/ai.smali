.class public final Lio/reactivex/internal/operators/observable/ai;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableFlattenIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ai$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ai;->b:Lio/reactivex/b/g;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ai;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/ai$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ai;->b:Lio/reactivex/b/g;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ai$a;-><init>(Lio/reactivex/q;Lio/reactivex/b/g;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
