.class public final Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableScalarXMap.java"

# interfaces
.implements Lio/reactivex/internal/a/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableScalarXMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScalarDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/internal/a/b",
        "<TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x35dc0e519322c4a3L


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
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->set(I)V

    return-void
.end method

.method public e_()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->get()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->lazySet(I)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    :cond_0
    return-void
.end method
