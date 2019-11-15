.class public final Lio/reactivex/internal/operators/observable/ObservableUsing;
.super Lio/reactivex/k;
.source "ObservableUsing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TD;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TD;+",
            "Lio/reactivex/o",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/f",
            "<-TD;>;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/b/g;Lio/reactivex/b/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<+TD;>;",
            "Lio/reactivex/b/g",
            "<-TD;+",
            "Lio/reactivex/o",
            "<+TT;>;>;",
            "Lio/reactivex/b/f",
            "<-TD;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->b:Lio/reactivex/b/g;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->c:Lio/reactivex/b/f;

    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->d:Z

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

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->b:Lio/reactivex/b/g;

    invoke-interface {v0, v1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The sourceSupplier returned a null ObservableSource"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->c:Lio/reactivex/b/f;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->d:Z

    invoke-direct {v2, p1, v1, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;-><init>(Lio/reactivex/q;Ljava/lang/Object;Lio/reactivex/b/f;Z)V

    invoke-interface {v0, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    :try_start_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableUsing;->c:Lio/reactivex/b/f;

    invoke-interface {v2, v1}, Lio/reactivex/b/f;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0
.end method
