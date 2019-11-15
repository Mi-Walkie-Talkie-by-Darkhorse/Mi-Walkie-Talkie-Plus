.class final Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableRefCount.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRefCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectionObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34eaf2cbe9908f94L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/disposables/a;

.field final c:Lio/reactivex/disposables/b;

.field final synthetic d:Lio/reactivex/internal/operators/observable/ObservableRefCount;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/q;Lio/reactivex/disposables/a;Lio/reactivex/disposables/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/disposables/a;",
            "Lio/reactivex/disposables/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->a:Lio/reactivex/q;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->b:Lio/reactivex/disposables/a;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->c:Lio/reactivex/disposables/b;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->c:Lio/reactivex/disposables/a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->b:Lio/reactivex/disposables/a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->b:Lio/reactivex/c/a;

    instance-of v0, v0, Lio/reactivex/disposables/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->b:Lio/reactivex/c/a;

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    new-instance v1, Lio/reactivex/disposables/a;

    invoke-direct {v1}, Lio/reactivex/disposables/a;-><init>()V

    iput-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->c:Lio/reactivex/disposables/a;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->d:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public dispose()V
    .locals 1

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->a()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->a()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->b(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method
