.class public final Lio/reactivex/internal/observers/InnerQueuedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InnerQueuedObserver.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
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
.field private static final serialVersionUID:J = -0x4b2db39073b2fa8dL


# instance fields
.field final a:Lio/reactivex/internal/observers/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/j",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field c:Lio/reactivex/internal/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/a/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile d:Z

.field e:I


# direct methods
.method public constructor <init>(Lio/reactivex/internal/observers/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/j",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    iput p2, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->d:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->d:Z

    return-void
.end method

.method public c()Lio/reactivex/internal/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/a/g",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lio/reactivex/internal/a/g;

    return-object v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/observers/InnerQueuedObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0, p0}, Lio/reactivex/internal/observers/j;->a(Lio/reactivex/internal/observers/InnerQueuedObserver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/observers/j;->a(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/observers/j;->a(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0}, Lio/reactivex/internal/observers/j;->a()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->b(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/reactivex/internal/a/b;

    if-eqz v0, :cond_2

    check-cast p1, Lio/reactivex/internal/a/b;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lio/reactivex/internal/a/b;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->e:I

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lio/reactivex/internal/a/g;

    iput-boolean v1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->d:Z

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->a:Lio/reactivex/internal/observers/j;

    invoke-interface {v0, p0}, Lio/reactivex/internal/observers/j;->a(Lio/reactivex/internal/observers/InnerQueuedObserver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->e:I

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lio/reactivex/internal/a/g;

    goto :goto_0

    :cond_2
    iget v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->b:I

    neg-int v0, v0

    invoke-static {v0}, Lio/reactivex/internal/util/k;->a(I)Lio/reactivex/internal/a/g;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->c:Lio/reactivex/internal/a/g;

    goto :goto_0
.end method
