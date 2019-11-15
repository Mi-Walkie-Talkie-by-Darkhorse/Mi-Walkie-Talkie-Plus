.class final Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCache.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61f4da70baa2c698L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/observable/ObservableCache$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:[Ljava/lang/Object;

.field d:I

.field e:I

.field volatile f:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/internal/operators/observable/ObservableCache$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableCache$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->a:Lio/reactivex/q;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableCache$a;->c()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->c:[Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableCache$a;->b()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->c:[Ljava/lang/Object;

    :cond_2
    array-length v2, v0

    add-int/lit8 v6, v2, -0x1

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->e:I

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->d:I

    move v8, v2

    move-object v2, v0

    move v0, v8

    :goto_1
    if-ge v3, v5, :cond_4

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->f:Z

    if-nez v7, :cond_0

    if-ne v0, v6, :cond_3

    aget-object v0, v2, v6

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v8, v2

    move-object v2, v0

    move v0, v8

    :cond_3
    aget-object v7, v2, v0

    invoke-static {v7, v4}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;Lio/reactivex/q;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->f:Z

    if-nez v5, :cond_0

    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->e:I

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->d:I

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->c:[Ljava/lang/Object;

    :cond_5
    neg-int v0, v1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->f:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCache$a;->b(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->f:Z

    return v0
.end method
