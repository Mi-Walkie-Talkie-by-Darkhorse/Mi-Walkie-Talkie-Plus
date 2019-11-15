.class final Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableSequenceEqualSingle.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final a:Lio/reactivex/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/t",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/d",
            "<-TT;-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final d:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final f:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/t;ILio/reactivex/o;Lio/reactivex/o;Lio/reactivex/b/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/o",
            "<+TT;>;",
            "Lio/reactivex/o",
            "<+TT;>;",
            "Lio/reactivex/b/d",
            "<-TT;-TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a:Lio/reactivex/t;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->d:Lio/reactivex/o;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->e:Lio/reactivex/o;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->b:Lio/reactivex/b/d;

    new-array v0, v4, [Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->f:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;

    invoke-direct {v1, p0, v2, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;II)V

    aput-object v1, v0, v2

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;

    invoke-direct {v1, p0, v3, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;II)V

    aput-object v1, v0, v3

    new-instance v0, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-direct {v0, v4}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->f:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->d:Lio/reactivex/o;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->e:Lio/reactivex/o;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    return-void
.end method

.method a(Lio/reactivex/internal/queue/a;Lio/reactivex/internal/queue/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/a",
            "<TT;>;",
            "Lio/reactivex/internal/queue/a",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->g:Z

    invoke-virtual {p1}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {p2}, Lio/reactivex/internal/queue/a;->c()V

    return-void
.end method

.method a(Lio/reactivex/disposables/b;I)Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0, p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->a(ILio/reactivex/disposables/b;)Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 13

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->f:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;

    aget-object v5, v0, v3

    iget-object v6, v5, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->b:Lio/reactivex/internal/queue/a;

    aget-object v7, v0, v1

    iget-object v8, v7, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->b:Lio/reactivex/internal/queue/a;

    move v0, v1

    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->c()V

    invoke-virtual {v8}, Lio/reactivex/internal/queue/a;->c()V

    goto :goto_0

    :cond_2
    iget-boolean v9, v5, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->d:Z

    if-eqz v9, :cond_3

    iget-object v2, v5, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->e:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    invoke-virtual {p0, v6, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a(Lio/reactivex/internal/queue/a;Lio/reactivex/internal/queue/a;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a:Lio/reactivex/t;

    invoke-interface {v0, v2}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-boolean v10, v7, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->d:Z

    if-eqz v10, :cond_4

    iget-object v2, v7, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->e:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v6, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a(Lio/reactivex/internal/queue/a;Lio/reactivex/internal/queue/a;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a:Lio/reactivex/t;

    invoke-interface {v0, v2}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->h:Ljava/lang/Object;

    if-nez v2, :cond_5

    invoke-virtual {v6}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->h:Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->h:Ljava/lang/Object;

    if-nez v2, :cond_7

    move v2, v1

    :goto_1
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->i:Ljava/lang/Object;

    if-nez v4, :cond_6

    invoke-virtual {v8}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->i:Ljava/lang/Object;

    :cond_6
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->i:Ljava/lang/Object;

    if-nez v4, :cond_8

    move v4, v1

    :goto_2
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a:Lio/reactivex/t;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/t;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    move v4, v3

    goto :goto_2

    :cond_9
    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    if-eq v2, v4, :cond_a

    invoke-virtual {p0, v6, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a(Lio/reactivex/internal/queue/a;Lio/reactivex/internal/queue/a;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a:Lio/reactivex/t;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/t;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    if-nez v2, :cond_c

    if-nez v4, :cond_c

    :try_start_0
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->b:Lio/reactivex/b/d;

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->h:Ljava/lang/Object;

    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->i:Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lio/reactivex/b/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0, v6, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a(Lio/reactivex/internal/queue/a;Lio/reactivex/internal/queue/a;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a:Lio/reactivex/t;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/t;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a(Lio/reactivex/internal/queue/a;Lio/reactivex/internal/queue/a;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->a:Lio/reactivex/t;

    invoke-interface {v1, v0}, Lio/reactivex/t;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    iput-object v12, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->h:Ljava/lang/Object;

    iput-object v12, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->i:Ljava/lang/Object;

    :cond_c
    if-nez v2, :cond_d

    if-eqz v4, :cond_1

    :cond_d
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->g:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->g:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->c:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->f:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->c()V

    aget-object v0, v0, v2

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$a;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->c()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->g:Z

    return v0
.end method
