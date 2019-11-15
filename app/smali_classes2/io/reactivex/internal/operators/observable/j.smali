.class public final Lio/reactivex/internal/operators/observable/j;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableBufferBoundary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/j$b;,
        Lio/reactivex/internal/operators/observable/j$c;,
        Lio/reactivex/internal/operators/observable/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TOpen;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TOpen;+",
            "Lio/reactivex/o",
            "<+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/o;Lio/reactivex/b/g;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/o",
            "<+TOpen;>;",
            "Lio/reactivex/b/g",
            "<-TOpen;+",
            "Lio/reactivex/o",
            "<+TClose;>;>;",
            "Ljava/util/concurrent/Callable",
            "<TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j;->c:Lio/reactivex/o;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/j;->d:Lio/reactivex/b/g;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/j;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/j;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/j$a;

    new-instance v2, Lio/reactivex/observers/e;

    invoke-direct {v2, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/j;->c:Lio/reactivex/o;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/j;->d:Lio/reactivex/b/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/j;->b:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v2, v3, v4, v5}, Lio/reactivex/internal/operators/observable/j$a;-><init>(Lio/reactivex/q;Lio/reactivex/o;Lio/reactivex/b/g;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
