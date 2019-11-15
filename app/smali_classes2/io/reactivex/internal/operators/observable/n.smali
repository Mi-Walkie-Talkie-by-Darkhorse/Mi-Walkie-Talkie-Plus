.class public final Lio/reactivex/internal/operators/observable/n;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableCollect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/n$a;
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
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/b",
            "<-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/o;Ljava/util/concurrent/Callable;Lio/reactivex/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Ljava/util/concurrent/Callable",
            "<+TU;>;",
            "Lio/reactivex/b/b",
            "<-TU;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/n;->b:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/n;->c:Lio/reactivex/b/b;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n;->a:Lio/reactivex/o;

    new-instance v2, Lio/reactivex/internal/operators/observable/n$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/n;->c:Lio/reactivex/b/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/n$a;-><init>(Lio/reactivex/q;Ljava/lang/Object;Lio/reactivex/b/b;)V

    invoke-interface {v1, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0
.end method
