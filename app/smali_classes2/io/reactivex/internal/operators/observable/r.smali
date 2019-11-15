.class public final Lio/reactivex/internal/operators/observable/r;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDebounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/r$a;
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
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<TU;>;>;"
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
            "Lio/reactivex/o",
            "<TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/r;->b:Lio/reactivex/b/g;

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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/r$a;

    new-instance v2, Lio/reactivex/observers/e;

    invoke-direct {v2, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/r;->b:Lio/reactivex/b/g;

    invoke-direct {v1, v2, v3}, Lio/reactivex/internal/operators/observable/r$a;-><init>(Lio/reactivex/q;Lio/reactivex/b/g;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
