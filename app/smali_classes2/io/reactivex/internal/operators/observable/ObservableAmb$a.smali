.class final Lio/reactivex/internal/operators/observable/ObservableAmb$a;
.super Ljava/lang/Object;
.source "ObservableAmb.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/q;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->a:Lio/reactivex/q;

    new-array v0, p2, [Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->b:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    return-void
.end method


# virtual methods
.method public a([Lio/reactivex/o;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/o",
            "<+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->b:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->a:Lio/reactivex/q;

    invoke-direct {v4, p0, v5, v6}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableAmb$a;ILio/reactivex/q;)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->a:Lio/reactivex/q;

    invoke-interface {v1, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v1, p1, v0

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->b:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-eq v4, p1, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->a()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-eq v2, p1, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public dispose()V
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->b:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
