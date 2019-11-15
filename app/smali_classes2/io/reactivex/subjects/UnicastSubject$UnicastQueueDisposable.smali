.class final Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UnicastQueueDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e022e8b5b1c1e37L


# instance fields
.field final synthetic a:Lio/reactivex/subjects/UnicastSubject;


# direct methods
.method constructor <init>(Lio/reactivex/subjects/UnicastSubject;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/subjects/UnicastSubject;->j:Z

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->c()V

    return-void
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-boolean v0, v0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->c()V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->c()V

    :cond_0
    return-void
.end method

.method public e_()Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, v0, Lio/reactivex/subjects/UnicastSubject;->a:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;->a:Lio/reactivex/subjects/UnicastSubject;

    iget-boolean v0, v0, Lio/reactivex/subjects/UnicastSubject;->e:Z

    return v0
.end method
