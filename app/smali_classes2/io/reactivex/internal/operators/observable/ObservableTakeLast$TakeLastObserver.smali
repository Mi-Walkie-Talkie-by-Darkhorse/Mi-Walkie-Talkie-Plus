.class final Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;
.super Ljava/util/ArrayDeque;
.source "ObservableTakeLast.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeLast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayDeque",
        "<TT;>;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6479cc5265c56d72L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Lio/reactivex/disposables/b;

.field volatile d:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/q;

    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->b:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->c:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/q;

    :goto_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->d:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->b:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->poll()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->c:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->c:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeLast$TakeLastObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
