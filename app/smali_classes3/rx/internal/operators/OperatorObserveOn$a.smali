.class final Lrx/internal/operators/OperatorObserveOn$a;
.super Lrx/e;
.source "OperatorObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/d$a;

.field final c:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

.field final d:Lrx/internal/operators/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Z

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field volatile i:Ljava/lang/Throwable;

.field final j:Lrx/b/a;


# direct methods
.method public constructor <init>(Lrx/d;Lrx/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            "Lrx/e",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lrx/e;-><init>()V

    invoke-static {}, Lrx/internal/operators/b;->a()Lrx/internal/operators/b;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->d:Lrx/internal/operators/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lrx/internal/operators/OperatorObserveOn$a$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorObserveOn$a$2;-><init>(Lrx/internal/operators/OperatorObserveOn$a;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->j:Lrx/b/a;

    iput-object p2, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    invoke-virtual {p1}, Lrx/d;->a()Lrx/d$a;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->b:Lrx/d$a;

    invoke-static {}, Lrx/internal/util/a/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/a/r;

    sget v1, Lrx/internal/util/d;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/a/r;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->e:Ljava/util/Queue;

    :goto_0
    new-instance v0, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->b:Lrx/d$a;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;-><init>(Lrx/d$a;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->c:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    return-void

    :cond_0
    new-instance v0, Lrx/internal/util/g;

    sget v1, Lrx/internal/util/d;->b:I

    invoke-direct {v0, v1}, Lrx/internal/util/g;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->e:Ljava/util/Queue;

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->c:Lrx/internal/operators/OperatorObserveOn$ScheduledUnsubscribe;

    invoke-virtual {v0, v1}, Lrx/e;->add(Lrx/f;)V

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    new-instance v1, Lrx/internal/operators/OperatorObserveOn$a$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorObserveOn$a$1;-><init>(Lrx/internal/operators/OperatorObserveOn$a;)V

    invoke-virtual {v0, v1}, Lrx/e;->setProducer(Lrx/c;)V

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->b:Lrx/d$a;

    invoke-virtual {v0, v1}, Lrx/e;->add(Lrx/f;)V

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    invoke-virtual {v0, p0}, Lrx/e;->add(Lrx/f;)V

    return-void
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->b:Lrx/d$a;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->j:Lrx/b/a;

    invoke-virtual {v0, v1}, Lrx/d$a;->a(Lrx/b/a;)Lrx/f;

    :cond_0
    return-void
.end method

.method c()V
    .locals 12

    const/4 v0, 0x0

    iget-object v7, p0, Lrx/internal/operators/OperatorObserveOn$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v8, p0, Lrx/internal/operators/OperatorObserveOn$a;->h:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_0
    const-wide/16 v2, 0x1

    invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    :goto_0
    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    invoke-virtual {v1}, Lrx/e;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->f:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->i:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    invoke-virtual {v0, v1}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->onCompleted()V

    goto :goto_1

    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-lez v1, :cond_5

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v6, p0, Lrx/internal/operators/OperatorObserveOn$a;->a:Lrx/e;

    iget-object v9, p0, Lrx/internal/operators/OperatorObserveOn$a;->d:Lrx/internal/operators/b;

    invoke-virtual {v9, v1}, Lrx/internal/operators/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Lrx/e;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    sub-long/2addr v2, v10

    add-int/lit8 v6, v0, 0x1

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    move-wide v4, v0

    move v0, v6

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v1, v2, v10

    if-eqz v1, :cond_6

    neg-long v2, v4

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_6
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorObserveOn$a;->request(J)V

    goto :goto_1
.end method

.method public onCompleted()V
    .locals 1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->f:Z

    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$a;->b()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$a;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lrx/internal/operators/OperatorObserveOn$a;->i:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$a;->unsubscribe()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->f:Z

    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$a;->b()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorObserveOn$a;->e:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OperatorObserveOn$a;->d:Lrx/internal/operators/b;

    invoke-virtual {v1, p1}, Lrx/internal/operators/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorObserveOn$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorObserveOn$a;->b()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    sget v0, Lrx/internal/util/d;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorObserveOn$a;->request(J)V

    return-void
.end method
