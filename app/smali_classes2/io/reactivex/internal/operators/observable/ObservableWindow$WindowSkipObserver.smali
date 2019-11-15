.class final Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ObservableWindow.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2eb9e739d805fc76L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:J

.field final d:I

.field final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field f:J

.field volatile g:Z

.field h:J

.field i:Lio/reactivex/disposables/b;

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/q;JJI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;JJI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->a:Lio/reactivex/q;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->b:J

    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->c:J

    iput p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->d:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->e:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->g:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->e:Ljava/util/ArrayDeque;

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->e:Ljava/util/ArrayDeque;

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v10, 0x1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->e:Ljava/util/ArrayDeque;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->f:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->c:J

    rem-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->d:I

    invoke-static {v0, p0}, Lio/reactivex/subjects/UnicastSubject;->a(ILjava/lang/Runnable;)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->a:Lio/reactivex/q;

    invoke-interface {v6, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    :cond_0
    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->h:J

    add-long/2addr v6, v10

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->b:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :goto_1
    return-void

    :cond_2
    sub-long v0, v6, v4

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->h:J

    :goto_2
    add-long v0, v2, v10

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->f:J

    goto :goto_1

    :cond_3
    iput-wide v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->h:J

    goto :goto_2
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->i:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->i:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method
