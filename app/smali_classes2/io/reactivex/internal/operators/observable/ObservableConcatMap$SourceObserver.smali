.class final Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMap.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableConcatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7a85719c209ca572L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TU;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final c:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<TU;>;"
        }
    .end annotation
.end field

.field final e:I

.field f:Lio/reactivex/internal/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/a/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field g:Lio/reactivex/disposables/b;

.field volatile h:Z

.field volatile i:Z

.field volatile j:Z

.field k:I


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TU;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TU;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->c:Lio/reactivex/b/g;

    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->e:I

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver$a;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver$a;-><init>(Lio/reactivex/q;Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->d:Lio/reactivex/q;

    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->h:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->b()V

    return-void
.end method

.method a(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->a(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method b()V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->c()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->h:Z

    if-nez v0, :cond_4

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->j:Z

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->e_()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->i:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    invoke-interface {v1}, Lio/reactivex/internal/a/g;->c()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->c:Lio/reactivex/b/g;

    invoke-interface {v0, v3}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "The mapper returned a null ObservableSource"

    invoke-static {v0, v2}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->h:Z

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->d:Lio/reactivex/q;

    invoke-interface {v0, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    invoke-interface {v1}, Lio/reactivex/internal/a/g;->c()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->i:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->b:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->g:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->c()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->i:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->j:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->b()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->j:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    invoke-interface {v0, p1}, Lio/reactivex/internal/a/g;->a(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->b()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->g:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->g:Lio/reactivex/disposables/b;

    instance-of v0, p1, Lio/reactivex/internal/a/b;

    if-eqz v0, :cond_2

    check-cast p1, Lio/reactivex/internal/a/b;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lio/reactivex/internal/a/b;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->k:I

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->j:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->k:I

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/reactivex/internal/queue/a;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->e:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->f:Lio/reactivex/internal/a/g;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method
