.class final Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableZip.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x296842a962149c03L


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
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final c:[Lio/reactivex/internal/operators/observable/ObservableZip$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableZip$a",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final e:Z

.field volatile f:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;Lio/reactivex/b/g;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;",
            "Lio/reactivex/b/g",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->b:Lio/reactivex/b/g;

    new-array v0, p3, [Lio/reactivex/internal/operators/observable/ObservableZip$a;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableZip$a;

    new-array v0, p3, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->d:[Ljava/lang/Object;

    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->e:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->c()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->b()V

    return-void
.end method

.method public a([Lio/reactivex/o;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/o",
            "<+TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableZip$a;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableZip$a;

    invoke-direct {v4, p0, p2}, Lio/reactivex/internal/operators/observable/ObservableZip$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;I)V

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a:Lio/reactivex/q;

    invoke-interface {v1, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    :goto_1
    if-ge v0, v3, :cond_1

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->f:Z

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v1, p1, v0

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Lio/reactivex/o;->subscribe(Lio/reactivex/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method a(ZZLio/reactivex/q;ZLio/reactivex/internal/operators/observable/ObservableZip$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/q",
            "<-TR;>;Z",
            "Lio/reactivex/internal/operators/observable/ObservableZip$a",
            "<**>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a()V

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    iget-object v1, p5, Lio/reactivex/internal/operators/observable/ObservableZip$a;->d:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a()V

    if-eqz v1, :cond_1

    invoke-interface {p3, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_2
    iget-object v1, p5, Lio/reactivex/internal/operators/observable/ObservableZip$a;->d:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a()V

    invoke-interface {p3, v1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a()V

    invoke-interface {p3}, Lio/reactivex/q;->onComplete()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 4

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableZip$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableZip$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method c()V
    .locals 4

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableZip$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservableZip$a;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v3}, Lio/reactivex/internal/queue/a;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 14

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->c:[Lio/reactivex/internal/operators/observable/ObservableZip$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a:Lio/reactivex/q;

    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->d:[Ljava/lang/Object;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->e:Z

    move v6, v0

    :goto_1
    const/4 v1, 0x0

    const/4 v7, 0x0

    array-length v12, v10

    const/4 v0, 0x0

    move v8, v0

    move v9, v1

    :goto_2
    if-ge v8, v12, :cond_6

    aget-object v5, v10, v8

    aget-object v0, v11, v9

    if-nez v0, :cond_5

    iget-boolean v1, v5, Lio/reactivex/internal/operators/observable/ObservableZip$a;->c:Z

    iget-object v0, v5, Lio/reactivex/internal/operators/observable/ObservableZip$a;->b:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->e_()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a(ZZLio/reactivex/q;ZLio/reactivex/internal/operators/observable/ObservableZip$a;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_4

    aput-object v13, v11, v9

    move v0, v7

    :goto_4
    move v7, v0

    :cond_2
    add-int/lit8 v1, v9, 0x1

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v7, 0x1

    goto :goto_4

    :cond_5
    iget-boolean v0, v5, Lio/reactivex/internal/operators/observable/ObservableZip$a;->c:Z

    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    iget-object v0, v5, Lio/reactivex/internal/operators/observable/ObservableZip$a;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a()V

    invoke-interface {v3, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_7

    neg-int v0, v6

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->addAndGet(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v0

    goto :goto_1

    :cond_7
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->b:Lio/reactivex/b/g;

    invoke-virtual {v11}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/b/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The zipper returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-interface {v3, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v11, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a()V

    invoke-interface {v3, v0}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->f:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->b()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->c()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->f:Z

    return v0
.end method
