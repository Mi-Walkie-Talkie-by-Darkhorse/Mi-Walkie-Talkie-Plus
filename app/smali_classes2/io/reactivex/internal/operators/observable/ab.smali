.class public final Lio/reactivex/internal/operators/observable/ab;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableDoOnLifecycle.java"


# annotations
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
.field private final b:Lio/reactivex/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/f",
            "<-",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/b/a;


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lio/reactivex/b/f;Lio/reactivex/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<TT;>;",
            "Lio/reactivex/b/f",
            "<-",
            "Lio/reactivex/disposables/b;",
            ">;",
            "Lio/reactivex/b/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ab;->b:Lio/reactivex/b/f;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ab;->c:Lio/reactivex/b/a;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ab;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/observers/g;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ab;->b:Lio/reactivex/b/f;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ab;->c:Lio/reactivex/b/a;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/observers/g;-><init>(Lio/reactivex/q;Lio/reactivex/b/f;Lio/reactivex/b/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
