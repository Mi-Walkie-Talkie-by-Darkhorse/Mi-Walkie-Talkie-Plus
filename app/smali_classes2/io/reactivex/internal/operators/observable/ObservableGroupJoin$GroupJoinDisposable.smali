.class final Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableGroupJoin.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGroupJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupJoinDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;",
        "Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;"
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Integer;

.field static final o:Ljava/lang/Integer;

.field static final p:Ljava/lang/Integer;

.field static final q:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x54414b546f40e739L


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/disposables/a;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TTRight;>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TT",
            "Left;",
            "+",
            "Lio/reactivex/o",
            "<TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final h:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-TTRight;+",
            "Lio/reactivex/o",
            "<TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final i:Lio/reactivex/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/c",
            "<-TT",
            "Left;",
            "-",
            "Lio/reactivex/k",
            "<TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field k:I

.field l:I

.field volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->n:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->o:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->p:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->q:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;Lio/reactivex/b/g;Lio/reactivex/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;",
            "Lio/reactivex/b/g",
            "<-TT",
            "Left;",
            "+",
            "Lio/reactivex/o",
            "<TT",
            "LeftEnd;",
            ">;>;",
            "Lio/reactivex/b/g",
            "<-TTRight;+",
            "Lio/reactivex/o",
            "<TTRightEnd;>;>;",
            "Lio/reactivex/b/c",
            "<-TT",
            "Left;",
            "-",
            "Lio/reactivex/k",
            "<TTRight;>;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a:Lio/reactivex/q;

    new-instance v0, Lio/reactivex/disposables/a;

    invoke-direct {v0}, Lio/reactivex/disposables/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/a;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b:Lio/reactivex/internal/queue/a;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->g:Lio/reactivex/b/g;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->h:Lio/reactivex/b/g;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->i:Lio/reactivex/b/c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    return-void
.end method

.method public a(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightObserver;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->c(Lio/reactivex/disposables/b;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b()V

    return-void
.end method

.method a(Lio/reactivex/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/Throwable;Lio/reactivex/q;Lio/reactivex/internal/queue/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/q",
            "<*>;",
            "Lio/reactivex/internal/queue/a",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p3}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a()V

    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a(Lio/reactivex/q;)V

    return-void
.end method

.method public a(ZLio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b:Lio/reactivex/internal/queue/a;

    if-eqz p1, :cond_0

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->p:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1, v0, p2}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b()V

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->q:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(ZLjava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b:Lio/reactivex/internal/queue/a;

    if-eqz p1, :cond_0

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->n:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1, v0, p2}, Lio/reactivex/internal/queue/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b()V

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->o:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b()V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b:Lio/reactivex/internal/queue/a;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a:Lio/reactivex/q;

    move v2, v3

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->m:Z

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a()V

    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a(Lio/reactivex/q;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v5, v3

    :goto_3
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_4

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/disposables/a;->dispose()V

    invoke-interface {v7}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_8
    if-eqz v5, :cond_9

    neg-int v0, v2

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v0

    goto :goto_1

    :cond_9
    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->n:Ljava/lang/Integer;

    if-ne v0, v5, :cond_b

    invoke-static {}, Lio/reactivex/subjects/UnicastSubject;->a()Lio/reactivex/subjects/UnicastSubject;

    move-result-object v5

    iget v8, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->k:I

    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->k:I

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->g:Lio/reactivex/b/g;

    invoke-interface {v0, v1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v9, "The leftEnd returned a null ObservableSource"

    invoke-static {v0, v9}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v9, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    invoke-direct {v9, p0, v3, v8}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;ZI)V

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v8, v9}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    invoke-interface {v0, v9}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a()V

    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a(Lio/reactivex/q;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, v7, v6}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;Lio/reactivex/internal/queue/a;)V

    goto/16 :goto_0

    :cond_a
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->i:Lio/reactivex/b/c;

    invoke-interface {v0, v1, v5}, Lio/reactivex/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The resultSelector returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-interface {v7, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0, v7, v6}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;Lio/reactivex/internal/queue/a;)V

    goto/16 :goto_0

    :cond_b
    sget-object v5, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->o:Ljava/lang/Integer;

    if-ne v0, v5, :cond_d

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->l:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->l:I

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->e:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->h:Lio/reactivex/b/g;

    invoke-interface {v0, v1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "The rightEnd returned a null ObservableSource"

    invoke-static {v0, v8}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v8, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    invoke-direct {v8, p0, v4, v5}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableGroupJoin$a;ZI)V

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v5, v8}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    invoke-interface {v0, v8}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a()V

    invoke-virtual {p0, v7}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a(Lio/reactivex/q;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0, v7, v6}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a(Ljava/lang/Throwable;Lio/reactivex/q;Lio/reactivex/internal/queue/a;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    sget-object v5, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->p:Ljava/lang/Integer;

    if-ne v0, v5, :cond_e

    move-object v0, v1

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->d:Ljava/util/Map;

    iget v5, v0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v5, v0}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto/16 :goto_1

    :cond_e
    sget-object v5, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->q:Ljava/lang/Integer;

    if-ne v0, v5, :cond_2

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->e:Ljava/util/Map;

    iget v5, v1, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightEndObserver;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/a;->b(Lio/reactivex/disposables/b;)Z

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lio/reactivex/d/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->m:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->a()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->c()V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupJoin$GroupJoinDisposable;->m:Z

    return v0
.end method
