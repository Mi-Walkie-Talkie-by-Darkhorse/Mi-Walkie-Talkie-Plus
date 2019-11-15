.class final Lio/reactivex/internal/operators/observable/ca$c;
.super Lio/reactivex/internal/observers/k;
.source "ObservableWindowTimed.java"

# interfaces
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ca$c$a;,
        Lio/reactivex/internal/operators/observable/ca$c$b;
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
        "Lio/reactivex/disposables/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final g:J

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;

.field final j:Lio/reactivex/r$c;

.field final k:I

.field final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field m:Lio/reactivex/disposables/b;

.field volatile n:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/r$c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-",
            "Lio/reactivex/k",
            "<TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/r$c;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/k;-><init>(Lio/reactivex/q;Lio/reactivex/internal/a/f;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ca$c;->g:J

    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ca$c;->h:J

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ca$c;->i:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lio/reactivex/internal/operators/observable/ca$c;->j:Lio/reactivex/r$c;

    iput p8, p0, Lio/reactivex/internal/operators/observable/ca$c;->k:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/subjects/UnicastSubject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->b:Lio/reactivex/internal/a/f;

    new-instance v1, Lio/reactivex/internal/operators/observable/ca$c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ca$c$b;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->g()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->c:Z

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->j:Lio/reactivex/r$c;

    invoke-virtual {v0}, Lio/reactivex/r$c;->dispose()V

    return-void
.end method

.method g()V
    .locals 10

    const/4 v4, 0x1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->b:Lio/reactivex/internal/a/f;

    check-cast v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ca$c;->a:Lio/reactivex/q;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca$c;->l:Ljava/util/List;

    move v3, v4

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->n:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->m:Lio/reactivex/disposables/b;

    invoke-interface {v1}, Lio/reactivex/disposables/b;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->f()V

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->c()V

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ca$c;->d:Z

    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->e_()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    move v2, v4

    :goto_2
    instance-of v8, v1, Lio/reactivex/internal/operators/observable/ca$c$b;

    if-eqz v7, :cond_7

    if-nez v2, :cond_3

    if-eqz v8, :cond_7

    :cond_3
    invoke-virtual {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;->c()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->f()V

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    neg-int v1, v3

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ca$c;->a(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_8
    if-eqz v8, :cond_a

    check-cast v1, Lio/reactivex/internal/operators/observable/ca$c$b;

    iget-boolean v2, v1, Lio/reactivex/internal/operators/observable/ca$c$b;->b:Z

    if-eqz v2, :cond_9

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->c:Z

    if-nez v1, :cond_0

    iget v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->k:I

    invoke-static {v1}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v1}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ca$c;->j:Lio/reactivex/r$c;

    new-instance v7, Lio/reactivex/internal/operators/observable/ca$c$a;

    invoke-direct {v7, p0, v1}, Lio/reactivex/internal/operators/observable/ca$c$a;-><init>(Lio/reactivex/internal/operators/observable/ca$c;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/ca$c;->g:J

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->i:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8, v9, v1}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    goto/16 :goto_0

    :cond_9
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ca$c$b;->a:Lio/reactivex/subjects/UnicastSubject;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ca$c$b;->a:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->c:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lio/reactivex/internal/operators/observable/ca$c;->n:Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v2, v1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->c:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->g()V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ca$c;->e:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->d:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->g()V

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->a:Lio/reactivex/q;

    invoke-interface {v0, p1}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->f()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ca$c;->a(I)I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->b:Lio/reactivex/internal/a/f;

    invoke-interface {v0, p1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->g()V

    goto :goto_1
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->m:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->a(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ca$c;->m:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->a:Lio/reactivex/q;

    invoke-interface {v0, p0}, Lio/reactivex/q;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->k:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->a:Lio/reactivex/q;

    invoke-interface {v1, v0}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$c;->j:Lio/reactivex/r$c;

    new-instance v2, Lio/reactivex/internal/operators/observable/ca$c$a;

    invoke-direct {v2, p0, v0}, Lio/reactivex/internal/operators/observable/ca$c$a;-><init>(Lio/reactivex/internal/operators/observable/ca$c;Lio/reactivex/subjects/UnicastSubject;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$c;->g:J

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->i:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v0}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->j:Lio/reactivex/r$c;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ca$c;->h:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ca$c;->h:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ca$c;->i:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/r$c;->a(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/b;

    goto :goto_0
.end method

.method public run()V
    .locals 3

    iget v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->k:I

    invoke-static {v0}, Lio/reactivex/subjects/UnicastSubject;->a(I)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/observable/ca$c$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ca$c$b;-><init>(Lio/reactivex/subjects/UnicastSubject;Z)V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c;->b:Lio/reactivex/internal/a/f;

    invoke-interface {v0, v1}, Lio/reactivex/internal/a/f;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ca$c;->g()V

    :cond_1
    return-void
.end method
