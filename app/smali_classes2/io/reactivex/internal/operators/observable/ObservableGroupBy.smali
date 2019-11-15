.class public final Lio/reactivex/internal/operators/observable/ObservableGroupBy;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;,
        Lio/reactivex/internal/operators/observable/ObservableGroupBy$a;,
        Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;",
        "Lio/reactivex/c/b",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/b/g;Lio/reactivex/b/g;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/b/g",
            "<-TT;+TK;>;",
            "Lio/reactivex/b/g",
            "<-TT;+TV;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->b:Lio/reactivex/b/g;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->c:Lio/reactivex/b/g;

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->d:I

    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->e:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/c/b",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->a:Lio/reactivex/o;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->b:Lio/reactivex/b/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->c:Lio/reactivex/b/g;

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->d:I

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;-><init>(Lio/reactivex/q;Lio/reactivex/b/g;Lio/reactivex/b/g;IZ)V

    invoke-interface {v6, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
