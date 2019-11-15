.class public final Lio/reactivex/internal/operators/observable/ObservablePublish;
.super Lio/reactivex/c/a;
.source "ObservablePublish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservablePublish$b;,
        Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;,
        Lio/reactivex/internal/operators/observable/ObservablePublish$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/c/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/reactivex/o;Lio/reactivex/o;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/o",
            "<TT;>;",
            "Lio/reactivex/o",
            "<TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$a",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/c/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->c:Lio/reactivex/o;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->a:Lio/reactivex/o;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Lio/reactivex/o;)Lio/reactivex/c/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/o",
            "<TT;>;)",
            "Lio/reactivex/c/a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublish$b;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservablePublish$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservablePublish;

    invoke-direct {v2, v1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservablePublish;-><init>(Lio/reactivex/o;Lio/reactivex/o;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v2}, Lio/reactivex/d/a;->a(Lio/reactivex/c/a;)Lio/reactivex/c/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lio/reactivex/b/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b/f",
            "<-",
            "Lio/reactivex/disposables/b;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublish$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublish$a;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v4}, Lio/reactivex/internal/operators/observable/ObservablePublish$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservablePublish$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lio/reactivex/b/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->a:Lio/reactivex/o;

    invoke-interface {v1, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish;->c:Lio/reactivex/o;

    invoke-interface {v0, p1}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method
