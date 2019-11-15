.class final Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableConcatMapEager.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/internal/observers/j;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableConcatMapEager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapEagerMainObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/internal/observers/j",
        "<TR;>;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7023f1bcc236905eL


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Lio/reactivex/internal/util/ErrorMode;

.field final f:Lio/reactivex/internal/util/AtomicThrowable;

.field final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lio/reactivex/internal/observers/InnerQueuedObserver",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field h:Lio/reactivex/internal/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/a/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field i:Lio/reactivex/disposables/b;

.field volatile j:Z

.field k:I

.field volatile l:Z

.field m:Lio/reactivex/internal/observers/InnerQueuedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/InnerQueuedObserver",
            "<TR;>;"
        }
    .end annotation
.end field

.field n:I


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;IILio/reactivex/internal/util/ErrorMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TR;>;>;II",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b:Lio/reactivex/b/g;

    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->c:I

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->d:I

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->e:Lio/reactivex/internal/util/ErrorMode;

    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->g:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->h:Lio/reactivex/internal/a/g;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->g:Ljava/util/ArrayDeque;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a:Lio/reactivex/q;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->e:Lio/reactivex/internal/util/ErrorMode;

    move v1, v2

    :goto_1
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->n:I

    move v3, v0

    :goto_2
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->c:I

    if-eq v3, v0, :cond_4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->l:Z

    if-eqz v0, :cond_2

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    goto :goto_0

    :cond_2
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->a:Lio/reactivex/internal/util/ErrorMode;

    if-ne v8, v0, :cond_3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v7, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {v5}, Lio/reactivex/internal/a/g;->e_()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->n:I

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->l:Z

    if-eqz v0, :cond_6

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b:Lio/reactivex/b/g;

    invoke-interface {v9, v0}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v9, "The mapper returned a null ObservableSource"

    invoke-static {v0, v9}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v9, Lio/reactivex/internal/observers/InnerQueuedObserver;

    iget v10, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->d:I

    invoke-direct {v9, p0, v10}, Lio/reactivex/internal/observers/InnerQueuedObserver;-><init>(Lio/reactivex/internal/observers/j;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-interface {v0, v9}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v7, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->a:Lio/reactivex/internal/util/ErrorMode;

    if-ne v8, v0, :cond_7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_7

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v7, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->m:Lio/reactivex/internal/observers/InnerQueuedObserver;

    if-nez v0, :cond_c

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->b:Lio/reactivex/internal/util/ErrorMode;

    if-ne v8, v0, :cond_8

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_8

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v7, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->j:Z

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/observers/InnerQueuedObserver;

    if-nez v0, :cond_9

    move v3, v2

    :goto_3
    if-eqz v9, :cond_b

    if-eqz v3, :cond_b

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v7, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    invoke-interface {v7}, Lio/reactivex/q;->onComplete()V

    goto/16 :goto_0

    :cond_b
    if-nez v3, :cond_c

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->m:Lio/reactivex/internal/observers/InnerQueuedObserver;

    :cond_c
    move-object v3, v0

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lio/reactivex/internal/observers/InnerQueuedObserver;->c()Lio/reactivex/internal/a/g;

    move-result-object v9

    :goto_4
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->l:Z

    if-eqz v0, :cond_d

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v3}, Lio/reactivex/internal/observers/InnerQueuedObserver;->a()Z

    move-result v10

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->a:Lio/reactivex/internal/util/ErrorMode;

    if-ne v8, v0, :cond_e

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_e

    invoke-interface {v5}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v7, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    invoke-interface {v9}, Lio/reactivex/internal/a/g;->e_()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    if-nez v11, :cond_f

    move v0, v2

    :goto_5
    if-eqz v10, :cond_10

    if-eqz v0, :cond_10

    iput-object v12, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->m:Lio/reactivex/internal/observers/InnerQueuedObserver;

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->n:I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    iput-object v12, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->m:Lio/reactivex/internal/observers/InnerQueuedObserver;

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->n:I

    goto/16 :goto_1

    :cond_f
    move v0, v4

    goto :goto_5

    :cond_10
    if-eqz v0, :cond_12

    :cond_11
    neg-int v0, v1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v0

    goto/16 :goto_1

    :cond_12
    invoke-interface {v7, v11}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public a(Lio/reactivex/internal/observers/InnerQueuedObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/InnerQueuedObserver",
            "<TR;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lio/reactivex/internal/observers/InnerQueuedObserver;->b()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a()V

    return-void
.end method

.method public a(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/InnerQueuedObserver",
            "<TR;>;TR;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lio/reactivex/internal/observers/InnerQueuedObserver;->c()Lio/reactivex/internal/a/g;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/reactivex/internal/a/g;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a()V

    return-void
.end method

.method public a(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/InnerQueuedObserver",
            "<TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->e:Lio/reactivex/internal/util/ErrorMode;

    sget-object v1, Lio/reactivex/internal/util/ErrorMode;->a:Lio/reactivex/internal/util/ErrorMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    invoke-virtual {p1}, Lio/reactivex/internal/observers/InnerQueuedObserver;->b()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->m:Lio/reactivex/internal/observers/InnerQueuedObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/observers/InnerQueuedObserver;->dispose()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/observers/InnerQueuedObserver;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/observers/InnerQueuedObserver;->dispose()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->l:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->h:Lio/reactivex/internal/a/g;

    invoke-interface {v0}, Lio/reactivex/internal/a/g;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->b()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->l:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->j:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->f:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->j:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->h:Lio/reactivex/internal/a/g;

    invoke-interface {v0, p1}, Lio/reactivex/internal/a/g;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->i:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->i:Lio/reactivex/disposables/b;

    instance-of v0, p1, Lio/reactivex/internal/a/b;

    if-eqz v0, :cond_2

    check-cast p1, Lio/reactivex/internal/a/b;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lio/reactivex/internal/a/b;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->k:I

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->h:Lio/reactivex/internal/a/g;

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->j:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->k:I

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->h:Lio/reactivex/internal/a/g;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->d:I

    invoke-static {v0}, Lio/reactivex/internal/util/k;->a(I)Lio/reactivex/internal/a/g;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->h:Lio/reactivex/internal/a/g;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    goto :goto_0
.end method
