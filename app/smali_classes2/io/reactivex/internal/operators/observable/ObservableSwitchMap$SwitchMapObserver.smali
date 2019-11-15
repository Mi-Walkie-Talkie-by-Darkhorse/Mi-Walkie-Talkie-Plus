.class final Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableSwitchMap.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSwitchMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapObserver"
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
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final j:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3072c973d405526bL


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

.field final d:Z

.field final e:Lio/reactivex/internal/util/AtomicThrowable;

.field volatile f:Z

.field volatile g:Z

.field h:Lio/reactivex/disposables/b;

.field final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver",
            "<TT;TR;>;>;"
        }
    .end annotation
.end field

.field volatile k:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;JI)V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->j:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->j:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->a()V

    return-void
.end method

.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;",
            "Lio/reactivex/b/g",
            "<-TT;+",
            "Lio/reactivex/o",
            "<+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->b:Lio/reactivex/b/g;

    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->c:I

    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->d:Z

    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->j:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->j:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->j:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->a()V

    :cond_0
    return-void
.end method

.method a(Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver",
            "<TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->b()V

    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b()V
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->a:Lio/reactivex/q;

    move v2, v3

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->f:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    move v1, v3

    :goto_2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->d:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    invoke-interface {v5, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v5}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    if-eqz v0, :cond_c

    iget-object v6, v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->c:Lio/reactivex/internal/queue/a;

    iget-boolean v1, v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->d:Z

    if-eqz v1, :cond_b

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->b()Z

    move-result v7

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->d:Z

    if-eqz v1, :cond_8

    if-eqz v7, :cond_b

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_9
    if-eqz v7, :cond_b

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-interface {v5, v8}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    :cond_b
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_d

    move v0, v3

    :goto_3
    if-nez v0, :cond_2

    :cond_c
    neg-int v0, v2

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v0

    goto/16 :goto_1

    :cond_d
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->d:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_e
    iget-boolean v7, v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->d:Z

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_f

    move v1, v3

    :goto_4
    if-eqz v7, :cond_10

    if-eqz v1, :cond_10

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_3

    :cond_f
    move v1, v4

    goto :goto_4

    :cond_10
    if-eqz v1, :cond_a

    move v0, v4

    goto :goto_3
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->g:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->a()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->g:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->f:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->b()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->e:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->a()V

    :cond_1
    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->f:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->b()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->k:J

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->b:Lio/reactivex/b/g;

    invoke-interface {v0, p1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The ObservableSource returned is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->c:I

    invoke-direct {v4, p0, v2, v3, v1}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;JI)V

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->j:Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapInnerObserver;

    if-ne v1, v2, :cond_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->h:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v4}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->h:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->h:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
