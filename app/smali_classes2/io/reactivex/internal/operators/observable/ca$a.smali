.class final Lio/reactivex/internal/operators/observable/ca$a;
.super Lio/reactivex/internal/observers/k;
.source "ObservableWindowTimed.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ca$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/k",
        "<TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/k",
        "<TT;>;>;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# instance fields
.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Lio/reactivex/r;

.field final j:I

.field final k:Z

.field final l:J

.field final m:Lio/reactivex/r$c;

.field n:J

.field o:J

.field p:Lio/reactivex/disposables/b;

.field q:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile r:Z

.field final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/disposables/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/q;JLjava/util/concurrent/TimeUnit;Lio/reactivex/r;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r;",
            "IJZ)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->s:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ca$a;->h:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ca$a;->i:Lio/reactivex/r;

    iput p6, p0, Lio/reactivex/internal/operators/observable/ca$a;->j:I

    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/ca$a;->l:J

    iput-boolean p9, p0, Lio/reactivex/internal/operators/observable/ca$a;->k:Z

    if-eqz p9, :cond_0

    invoke-virtual {p5}, Lio/reactivex/r;->a()Lio/reactivex/r$c;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->m:Lio/reactivex/r$c;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->m:Lio/reactivex/r$c;

    goto :goto_0
.end method

.method static synthetic a(Lio/reactivex/internal/operators/observable/ca$a;)Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->c:Z

    return v0
.end method

.method static synthetic b(Lio/reactivex/internal/operators/observable/ca$a;)Lio/reactivex/internal/a/f;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->b:Lio/reactivex/internal/a/f;

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->c:Z

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->m:Lio/reactivex/r$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    :cond_0
    return-void
.end method

.method g()V
    .locals 12

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->b:Lio/reactivex/internal/a/f;

    move-object v7, v0

    check-cast v7, Lio/reactivex/internal/queue/MpscLinkedQueue;

    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ca$a;->a:Lio/reactivex/q;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->q:Lio/reactivex/subjects/UnicastSubject;

    const/4 v0, 0x1

    move v9, v0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->p:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {v7}, Lio/reactivex/internal/queue/MpscLinkedQueue;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->f()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ca$a;->d:Z

    invoke-virtual {v7}, Lio/reactivex/internal/queue/MpscLinkedQueue;->e_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :goto_2
    instance-of v4, v0, Lio/reactivex/internal/operators/observable/ca$a$a;

    if-eqz v3, :cond_6

    if-nez v2, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->q:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v7}, Lio/reactivex/internal/queue/MpscLinkedQueue;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->f()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    neg-int v0, v9

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ca$a;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v9, v0

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_9

    check-cast v0, Lio/reactivex/internal/operators/observable/ca$a$a;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->k:Z

    if-nez v2, :cond_8

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    iget-wide v4, v0, Lio/reactivex/internal/operators/observable/ca$a$a;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :cond_8
    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->n:J

    iget v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->j:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->q:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v11, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$a;->l:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_b

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->n:J

    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    iget v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->j:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v10

    iput-object v10, p0, Lio/reactivex/internal/operators/observable/ca$a;->q:Lio/reactivex/subjects/UnicastSubject;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->a:Lio/reactivex/q;

    invoke-interface {v0, v10}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->k:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/reactivex/disposables/b;

    invoke-interface {v8}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->m:Lio/reactivex/r$c;

    new-instance v1, Lio/reactivex/internal/operators/observable/ca$a$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/ca$a$a;-><init>(JLio/reactivex/internal/operators/observable/ca$a;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca$a;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_a
    move-object v0, v10

    :goto_3
    move-object v1, v0

    goto/16 :goto_0

    :cond_b
    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->n:J

    move-object v0, v1

    goto :goto_3

    :cond_c
    move-object v0, v10

    goto :goto_3
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->c:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->g()V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ca$a;->e:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->g()V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->f()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v6, 0x1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->q:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->n:J

    add-long/2addr v2, v6

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$a;->l:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->n:J

    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    iget v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->j:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->q:Lio/reactivex/subjects/UnicastSubject;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->m:Lio/reactivex/r$c;

    new-instance v1, Lio/reactivex/internal/operators/observable/ca$a$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/ca$a$a;-><init>(JLio/reactivex/internal/operators/observable/ca$a;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca$a;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    :cond_2
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ca$a;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->g()V

    goto :goto_0

    :cond_4
    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->n:J

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->b:Lio/reactivex/internal/a/f;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->p:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ca$a;->p:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->j:I

    invoke-static {v1}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->q:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v0, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    new-instance v1, Lio/reactivex/internal/operators/observable/ca$a$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->o:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/ca$a$a;-><init>(JLio/reactivex/internal/operators/observable/ca$a;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->m:Lio/reactivex/r$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca$a;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$a;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$a;->i:Lio/reactivex/r;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$a;->g:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca$a;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    move-result-object v0

    goto :goto_1
.end method
