.class final Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ObservableUsing.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UsingObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51f0e7a17ed319a6L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
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

.field e:Lio/reactivex/disposables/b;


# direct methods
.method constructor <init>(Lio/reactivex/q;Ljava/lang/Object;Lio/reactivex/b/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;TD;",
            "Lio/reactivex/b/f",
            "<-TD;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->b:Ljava/lang/Object;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->c:Lio/reactivex/b/f;

    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->d:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->c:Lio/reactivex/b/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/b/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->e:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->c:Lio/reactivex/b/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/b/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->e:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->e:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->c:Lio/reactivex/b/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/b/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->e:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v3

    aput-object v1, v2, v4

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->e:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a()V

    goto :goto_1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->e:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->e:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableUsing$UsingObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
