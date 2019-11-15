.class public final Lio/reactivex/internal/operators/observable/by;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableWindowBoundarySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/by$a;,
        Lio/reactivex/internal/operators/observable/by$b;,
        Lio/reactivex/internal/operators/observable/by$d;,
        Lio/reactivex/internal/operators/observable/by$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;",
        "Lio/reactivex/k",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TB;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TB;+",
            "Lio/reactivex/o",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/o;Lio/reactivex/b/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/o",
            "<TB;>;",
            "Lio/reactivex/b/g",
            "<-TB;+",
            "Lio/reactivex/o",
            "<TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/by;->b:Lio/reactivex/o;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/by;->c:Lio/reactivex/b/g;

    iput p4, p0, Lio/reactivex/internal/operators/observable/by;->d:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/by;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/by$c;

    new-instance v2, Lio/reactivex/observers/e;

    invoke-direct {v2, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/by;->b:Lio/reactivex/o;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/by;->c:Lio/reactivex/b/g;

    iget v5, p0, Lio/reactivex/internal/operators/observable/by;->d:I

    invoke-direct {v1, v2, v3, v4, v5}, Lio/reactivex/internal/operators/observable/by$c;-><init>(Lio/reactivex/q;Lio/reactivex/o;Lio/reactivex/b/g;I)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
