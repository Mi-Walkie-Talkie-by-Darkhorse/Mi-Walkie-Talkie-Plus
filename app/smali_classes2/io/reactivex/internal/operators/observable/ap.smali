.class public final Lio/reactivex/internal/operators/observable/ap;
.super Lio/reactivex/k;
.source "ObservableGenerate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
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
            "<TS;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/c",
            "<TS;",
            "Lio/reactivex/d",
            "<TT;>;TS;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/f",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/b/c;Lio/reactivex/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TS;>;",
            "Lio/reactivex/b/c",
            "<TS;",
            "Lio/reactivex/d",
            "<TT;>;TS;>;",
            "Lio/reactivex/b/f",
            "<-TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ap;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ap;->b:Lio/reactivex/b/c;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ap;->c:Lio/reactivex/b/f;

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

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ap;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ap$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ap;->b:Lio/reactivex/b/c;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ap;->c:Lio/reactivex/b/f;

    invoke-direct {v1, p1, v2, v3, v0}, Lio/reactivex/internal/operators/observable/ap$a;-><init>(Lio/reactivex/q;Lio/reactivex/b/c;Lio/reactivex/b/f;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ap$a;->b()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0
.end method
