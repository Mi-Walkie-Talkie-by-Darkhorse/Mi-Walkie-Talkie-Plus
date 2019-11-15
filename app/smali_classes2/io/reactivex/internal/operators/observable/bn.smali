.class public final Lio/reactivex/internal/operators/observable/bn;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableSkipUntil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/bn$a;,
        Lio/reactivex/internal/operators/observable/bn$b;
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
.field final b:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/o",
            "<TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/bn;->b:Lio/reactivex/o;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/observers/e;

    invoke-direct {v0, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    new-instance v1, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    invoke-virtual {v0, v1}, Lio/reactivex/observers/e;->onSubscribe(Lio/reactivex/disposables/b;)V

    new-instance v2, Lio/reactivex/internal/operators/observable/bn$b;

    invoke-direct {v2, v0, v1}, Lio/reactivex/internal/operators/observable/bn$b;-><init>(Lio/reactivex/q;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/bn;->b:Lio/reactivex/o;

    new-instance v4, Lio/reactivex/internal/operators/observable/bn$a;

    invoke-direct {v4, p0, v1, v2, v0}, Lio/reactivex/internal/operators/observable/bn$a;-><init>(Lio/reactivex/internal/operators/observable/bn;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/internal/operators/observable/bn$b;Lio/reactivex/observers/e;)V

    invoke-interface {v3, v4}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/bn;->a:Lio/reactivex/o;

    invoke-interface {v0, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
