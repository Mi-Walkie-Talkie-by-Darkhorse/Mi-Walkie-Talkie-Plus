.class public final Lio/reactivex/internal/operators/observable/cb;
.super Lio/reactivex/k;
.source "ObservableZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/cb$a;
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
        "Lio/reactivex/k",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/c",
            "<-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/k;Ljava/lang/Iterable;Lio/reactivex/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<TU;>;",
            "Lio/reactivex/b/c",
            "<-TT;-TU;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/cb;->a:Lio/reactivex/k;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/cb;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/cb;->c:Lio/reactivex/b/c;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TV;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/cb;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "The iterator returned by other is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Lio/reactivex/q;)V

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

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/cb;->a:Lio/reactivex/k;

    new-instance v2, Lio/reactivex/internal/operators/observable/cb$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/cb;->c:Lio/reactivex/b/c;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/cb$a;-><init>(Lio/reactivex/q;Ljava/util/Iterator;Lio/reactivex/b/c;)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method
