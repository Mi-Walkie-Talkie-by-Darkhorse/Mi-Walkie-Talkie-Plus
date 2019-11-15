.class public final Lio/reactivex/internal/operators/observable/ObservableRefCount;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRefCount$b;,
        Lio/reactivex/internal/operators/observable/ObservableRefCount$a;,
        Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/c/a",
            "<+TT;>;"
        }
    .end annotation
.end field

.field volatile c:Lio/reactivex/disposables/a;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lio/reactivex/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/c/a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    new-instance v0, Lio/reactivex/disposables/a;

    invoke-direct {v0}, Lio/reactivex/disposables/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->c:Lio/reactivex/disposables/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->b:Lio/reactivex/c/a;

    return-void
.end method

.method private a(Lio/reactivex/q;Ljava/util/concurrent/atomic/AtomicBoolean;)Lio/reactivex/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lio/reactivex/b/f",
            "<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/q;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method

.method private a(Lio/reactivex/disposables/a;)Lio/reactivex/disposables/b;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount$b;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$b;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/disposables/a;)V

    invoke-static {v0}, Lio/reactivex/disposables/c;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lio/reactivex/q;Lio/reactivex/disposables/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/disposables/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->a(Lio/reactivex/disposables/a;)Lio/reactivex/disposables/b;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;

    invoke-direct {v1, p0, p1, p2, v0}, Lio/reactivex/internal/operators/observable/ObservableRefCount$ConnectionObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/q;Lio/reactivex/disposables/a;Lio/reactivex/disposables/b;)V

    invoke-interface {p1, v1}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->b:Lio/reactivex/c/a;

    invoke-virtual {v0, v1}, Lio/reactivex/c/a;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method public subscribeActual(Lio/reactivex/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v2, :cond_2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->b:Lio/reactivex/c/a;

    invoke-direct {p0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->a(Lio/reactivex/q;Ljava/util/concurrent/atomic/AtomicBoolean;)Lio/reactivex/b/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/c/a;->a(Lio/reactivex/b/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->c:Lio/reactivex/disposables/a;

    invoke-virtual {p0, p1, v0}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->a(Lio/reactivex/q;Lio/reactivex/disposables/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
