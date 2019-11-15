.class public final Lio/reactivex/internal/operators/observable/ObservableCache;
.super Lio/reactivex/internal/operators/observable/a;
.source "ObservableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;,
        Lio/reactivex/internal/operators/observable/ObservableCache$a;
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
.field final b:Lio/reactivex/internal/operators/observable/ObservableCache$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lio/reactivex/k;Lio/reactivex/internal/operators/observable/ObservableCache$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k",
            "<TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableCache$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/o;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Lio/reactivex/k;)Lio/reactivex/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/k",
            "<TT;>;)",
            "Lio/reactivex/k",
            "<TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->a(Lio/reactivex/k;I)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lio/reactivex/k;I)Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/k",
            "<TT;>;I)",
            "Lio/reactivex/k",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/a;->a(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCache$a;-><init>(Lio/reactivex/k;I)V

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCache;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;-><init>(Lio/reactivex/k;Lio/reactivex/internal/operators/observable/ObservableCache$a;)V

    invoke-static {v1}, Lio/reactivex/d/a;->a(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;-><init>(Lio/reactivex/q;Lio/reactivex/internal/operators/observable/ObservableCache$a;)V

    invoke-interface {p1, v0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$a;->a(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)Z

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->b:Lio/reactivex/internal/operators/observable/ObservableCache$a;

    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableCache$a;->a()V

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->a()V

    return-void
.end method
