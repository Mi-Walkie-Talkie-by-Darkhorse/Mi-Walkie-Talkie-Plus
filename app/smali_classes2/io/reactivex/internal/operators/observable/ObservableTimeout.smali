.class public final Lio/reactivex/internal/operators/observable/ObservableTimeout;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;,
        Lio/reactivex/internal/operators/observable/ObservableTimeout$b;,
        Lio/reactivex/internal/operators/observable/ObservableTimeout$a;,
        Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
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

.field final c:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Lio/reactivex/o;Lio/reactivex/b/g;Lio/reactivex/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/o",
            "<TU;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<TV;>;>;",
            "Lio/reactivex/o",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->b:Lio/reactivex/o;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->c:Lio/reactivex/b/g;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->d:Lio/reactivex/o;

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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->d:Lio/reactivex/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;

    new-instance v2, Lio/reactivex/observers/e;

    invoke-direct {v2, p1}, Lio/reactivex/observers/e;-><init>(Lio/reactivex/q;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->b:Lio/reactivex/o;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->c:Lio/reactivex/b/g;

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver;-><init>(Lio/reactivex/q;Lio/reactivex/o;Lio/reactivex/b/g;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->a:Lio/reactivex/o;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->b:Lio/reactivex/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->c:Lio/reactivex/b/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimeout;->d:Lio/reactivex/o;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableTimeout$TimeoutOtherObserver;-><init>(Lio/reactivex/q;Lio/reactivex/o;Lio/reactivex/b/g;Lio/reactivex/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
