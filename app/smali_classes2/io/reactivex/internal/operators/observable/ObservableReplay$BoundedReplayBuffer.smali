.class abstract Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$Node;",
        ">;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$e",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field a:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

.field b:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->a:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b:I

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    return-void
.end method

.method public final a(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->e()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    move-result-object v0

    iput-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->c:Ljava/lang/Object;

    :cond_2
    move-object v2, v0

    :goto_2
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    if-eqz v0, :cond_4

    iget-object v2, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->a:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->b:Lio/reactivex/q;

    invoke-static {v2, v3}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;Lio/reactivex/q;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    iput-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_2

    :cond_4
    iput-object v2, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->c:Ljava/lang/Object;

    neg-int v0, v1

    invoke-virtual {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_1
.end method

.method final a(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->a:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->set(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->a:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->a(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->c()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->a(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->d()V

    return-void
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->a(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->d()V

    return-void
.end method

.method final b(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    return-void
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method abstract c()V
.end method

.method d()V
    .locals 0

    return-void
.end method

.method e()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    return-object v0
.end method
